/*
 * UDPInterface.cpp
 *
 *  Created on: May 26, 2015
 *      Author: user
 */

#include "UDPInterface.h"

UDPInterface::UDPInterface(const IPAddress &basestation_ip, const uint16_t &basestation_port)
: MAVLinkInterface(), _basestation_ip(basestation_ip), _basestation_port(basestation_port) {

}

UDPInterface::~UDPInterface() {

}

size_t UDPInterface::send(const uint8_t *buffer, size_t size) {
	UDP.beginPacket(_basestation_ip, _basestation_port);
	size_t written = UDP.write(buffer, size);
	UDP.endPacket();
	return written;
}

uint8_t UDPInterface::read() {
	int packetSize = UDP.parsePacket();
	uint8_t got_message = 0;
	mavlink_message_t msg;
	mavlink_status_t status;

	while(packetSize)
	{
		got_message = 1;
		uint8_t c = UDP.read();
		// Try to get a new message
		if(mavlink_parse_char(MAVLINK_COMM_0, c, &msg, &status)) {
			// Handle message

			switch(msg.msgid)
			{
//			case MAVLINK_MSG_ID_HEARTBEAT:
//			{
//				// E.g. read GCS heartbeat and go into
//				// comm lost mode if timer times out
//			}
//			break;
//			case MAVLINK_MSG_ID_COMMAND_LONG:
//				// EXECUTE ACTION
//				break;
			default:
				UDP.flush();
				//Do nothing
				break;
			}
		}

		packetSize = UDP.parsePacket();
	}
	return got_message;
}
