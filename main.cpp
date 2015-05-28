// Arduino MAVLink test code.

#include "Arduino.h"
#include "mavlink.h"   // Mavlink interface



// !!! Need to choose an interface type
//#define INTERFACE_UDP
#define INTERFACE_SERIAL
// !!! Need to choose a GPS type
#define GPS_UBLOX
// !!! Need to choose an IMU
#define IMU_CHINESE9DOF
// !!! Need to choose Battery
#define BATTERY_3C




#ifdef INTERFACE_UDP
#include "Ethernet.h"
#include <EthernetUdp.h> // UDP library from: bjoern@cs.stanford.edu 12/30/2008
#include "UDPInterface.h"
static byte MY_MAC[] = {0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };
const IPAddress MY_IP(192, 168, 1, 177);
const IPAddress BASESTATION_IP(192, 168, 1, 240);
const uint16_t BASESTATION_PORT = 14550;
const uint16_t MY_PORT = 14555;
UDPInterface interface(BASESTATION_IP, BASESTATION_PORT);
#endif

#ifdef INTERFACE_SERIAL
#include "SerialInterface.h"
SerialInterface interface;
const uint32_t SERIAL_BAUDRATE = 115200;
#endif

#ifdef GPS_UBLOX
#include "UBLOX.h"
UBLOX gps( 2, 3, 9600); //Connect Pin 2->GPS's TX, Pin 3->GPS's RX
#endif

#ifdef IMU_CHINESE9DOF
#include "Chinese9DOF.h"
Chinese9DOF imu;
#endif

#ifdef BATTERY_3C
#include "Battery.h"
Battery battery;
#endif

void setup() {

	// enable Ethernet device + UDP if we have one. This can't be done in a constructor
	// because it will be called multiple times
#ifdef INTERFACE_UDP
	Ethernet.begin(MY_MAC, MY_IP);
	UDP.begin(MY_PORT);
#endif

#ifdef INTERFACE_SERIAL
	Serial.begin(SERIAL_BAUDRATE);
#endif

}

static mavlink_message_t msg;
static uint8_t buf[MAVLINK_MAX_PACKET_LEN];
static uint16_t len;

static const uint8_t MAVLINK_SYSTEM_ID = 1;
static const uint8_t MAVLINK_COMPONENT_ID = 200;

void emitHeartbeatPacket(MAVLinkInterface &interface)
{
	int system_type = MAV_TYPE_HEXAROTOR;
	int autopilot_type = MAV_AUTOPILOT_GENERIC;
	int basemode = MAV_MODE_GUIDED_ARMED;
	int custommode = 0;
	int systemstatus = MAV_STATE_ACTIVE;

	mavlink_msg_heartbeat_pack(
			MAVLINK_SYSTEM_ID,
			MAVLINK_COMPONENT_ID,
			&msg,
			system_type,
			autopilot_type,
			basemode,
			custommode,
			systemstatus);
	uint16_t len = mavlink_msg_to_send_buffer(buf, &msg);
	interface.send(buf, len);
}

void emitStatusPacket(MAVLinkInterface &interface, Battery &battery) {
	mavlink_msg_sys_status_pack(
			MAVLINK_SYSTEM_ID,
			MAVLINK_COMPONENT_ID,
			&msg,
			0, 0, 0, // sensors present, "" enabled, "" health,
			500, // load
			battery.get_battery_voltage(),
			battery.get_battery_amperage(),
			battery.get_battery_remaining(),
			0, //drop rate of comms
			0, 0, 0, 0, 0); //individual drop rates
	uint16_t len = mavlink_msg_to_send_buffer(buf, &msg);
	interface.send(buf, len);
}

void emitNEDPacket(MAVLinkInterface &interface, GPS &gps, IMU &imu) {
	mavlink_msg_local_position_ned_pack(
			MAVLINK_SYSTEM_ID,
			MAVLINK_COMPONENT_ID,
			&msg,
			millis(),
			gps.get_lat(),
			gps.get_lng(),
			imu.get_altitude(),
			imu.get_velocity_x(),
			imu.get_velocity_y(),
			imu.get_velocity_z() );
	len = mavlink_msg_to_send_buffer(buf, &msg);
	interface.send(buf, len);
}

void emitAttitudePacket(MAVLinkInterface &interface, IMU &imu) {
	mavlink_msg_attitude_pack(
			MAVLINK_SYSTEM_ID,
			MAVLINK_COMPONENT_ID,
			&msg,
			millis(),
			imu.get_roll(),
			imu.get_pitch(),
			imu.get_yaw(),
			imu.get_roll_speed(),
			imu.get_pitch_speed(),
			imu.get_yaw_speed() );
	len = mavlink_msg_to_send_buffer(buf, &msg);
	interface.send(buf, len);
}

void loop() {
	gps.check_and_update();

	emitHeartbeatPacket(interface);
	emitStatusPacket(interface, battery);
	emitNEDPacket(interface, gps, imu);
	emitAttitudePacket(interface, imu);

	delay(500);
}
