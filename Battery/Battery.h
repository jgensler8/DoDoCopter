/*
 * Battery.h
 *
 *  Created on: May 27, 2015
 *      Author: user
 */

#ifndef BATTERY_H_
#define BATTERY_H_

#include "Arduino.h"

class Battery {
public:
	Battery();
	virtual ~Battery();

	uint16_t get_battery_voltage();
	uint16_t get_battery_amperage();
	uint16_t get_battery_remaining();
};

#endif /* BATTERY_H_ */
