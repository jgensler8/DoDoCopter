/*
 * SerialInterface.cpp
 *
 *  Created on: May 26, 2015
 *      Author: user
 */

#include "SerialInterface.h"

SerialInterface::SerialInterface() : MAVLinkInterface() {

}

SerialInterface::~SerialInterface() {

}

size_t SerialInterface::send(const uint8_t *buffer, size_t size) {
	return Serial.write(buffer, size);
}

uint8_t SerialInterface::read() {
	return 0;
}
