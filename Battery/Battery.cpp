/*
 * Battery.cpp
 *
 *  Created on: May 27, 2015
 *      Author: user
 */

#include "Battery.h"

Battery::Battery() {

}

Battery::~Battery() {

}

uint16_t Battery::get_battery_amperage() {
	return 420;
}

uint16_t Battery::get_battery_voltage() {
	return 11000;
}

uint16_t Battery::get_battery_remaining() {
	return 80;
}
