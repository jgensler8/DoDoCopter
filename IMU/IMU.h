/*
 * IMU.h
 *
 *  Created on: May 27, 2015
 *      Author: user
 */

#ifndef IMU_H_
#define IMU_H_

#include "MAVLinkInterface.h"

class IMU {
public:
	IMU();
	virtual ~IMU();

	virtual uint32_t get_velocity_x() =0;
	virtual uint32_t get_velocity_y() =0;
	virtual uint32_t get_velocity_z() =0;

	virtual uint32_t get_altitude() =0;

	virtual uint32_t get_roll() =0;
	virtual uint32_t get_pitch() =0;
	virtual uint32_t get_yaw() =0;

	virtual uint32_t get_roll_speed() =0;
	virtual uint32_t get_pitch_speed() =0;
	virtual uint32_t get_yaw_speed() =0;
};

#endif /* IMU_H_ */
