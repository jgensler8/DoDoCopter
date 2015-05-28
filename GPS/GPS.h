/*
 * GPS.h
 *
 *  Created on: May 26, 2015
 *      Author: user
 */

#ifndef GPS_H_
#define GPS_H_

#include "Arduino.h"

class GPS {
public:
	GPS();
	virtual ~GPS();

	virtual void check_and_update() =0;
	virtual uint32_t get_lat() =0;
	virtual uint32_t get_lng() =0;
};

#endif /* GPS_H_ */
