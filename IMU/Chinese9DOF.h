/*
 * Chinese9DOF.h
 *
 *  Created on: May 27, 2015
 *      Author: user
 */

#ifndef CHINESE9DOF_H_
#define CHINESE9DOF_H_

#include "IMU.h"
#include "I2C.h"

class Chinese9DOF: public IMU {
public:
	Chinese9DOF();
	virtual ~Chinese9DOF();

	uint32_t get_velocity_x();
	uint32_t get_velocity_y();
	uint32_t get_velocity_z();

	uint32_t get_altitude();

	uint32_t get_roll();
	uint32_t get_pitch();
	uint32_t get_yaw();

	uint32_t get_roll_speed();
	uint32_t get_pitch_speed();
	uint32_t get_yaw_speed();

//TODO:FIGURE THESE OUT
	  int16_t  accSmooth[3];
	  int16_t  gyroData[3];
	  int16_t  magADC[3];
	  int16_t  gyroADC[3];
	  int16_t  accADC[3];
};

#endif /* CHINESE9DOF_H_ */
