/*
 * UBLOX.cpp
 *
 *  Created on: May 26, 2015
 *      Author: user
 */

#include "UBLOX.h"

UBLOX::UBLOX(const uint8_t &rx_pin, const uint8_t &tx_pin, const uint32_t &baudrate)
	: GPS(), _ss(rx_pin, tx_pin), _gps() {
	_ss.begin(baudrate);
}

UBLOX::~UBLOX() {

}

void UBLOX::check_and_update() {
	while (_ss.available() > 0)
		_gps.encode(_ss.read());
}

uint32_t UBLOX::get_lat() {
	return _gps.location.lat();
}

uint32_t UBLOX::get_lng() {
	return _gps.location.lng();
}
