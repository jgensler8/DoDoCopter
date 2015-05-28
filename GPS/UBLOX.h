/*
 * UBLOX.h
 *
 *  Created on: May 26, 2015
 *      Author: user
 */

#ifndef UBLOX_H_
#define UBLOX_H_

#include "GPS.h"
#include "SoftwareSerial.h"
#include "TinyGPSPlus.h"

class UBLOX : public GPS {
public:
	UBLOX(const uint8_t &rx_pin, const uint8_t &tx_pin, const uint32_t &baudrate);
	virtual ~UBLOX();

	void check_and_update();
	uint32_t get_lat();
	uint32_t get_lng();
private:
	SoftwareSerial _ss;
	TinyGPSPlus _gps;
};

#endif /* UBLOX_H_ */
