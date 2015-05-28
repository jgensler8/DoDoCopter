/*
 * SerialInterface.h
 *
 *  Created on: May 26, 2015
 *      Author: user
 */

#ifndef SERIALINTERFACE_H_
#define SERIALINTERFACE_H_

#include "MAVLinkInterface.h"
#include "SoftwareSerial.h"

class SerialInterface: public MAVLinkInterface {
public:
	SerialInterface();
	virtual ~SerialInterface();

	size_t send(const uint8_t *buffer, size_t size);
	uint8_t read();
private:
	uint16_t _baudrate;
};

#endif /* SERIALINTERFACE_H_ */
