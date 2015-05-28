/*
 * MAVLinkInterface.h
 *
 *  Created on: May 26, 2015
 *      Author: user
 */

#ifndef MAVLINKINTERFACE_H_
#define MAVLINKINTERFACE_H_

#include "Arduino.h"
#include "mavlink.h"

class MAVLinkInterface {
public:
	MAVLinkInterface();
	virtual ~MAVLinkInterface();

	virtual size_t send(const uint8_t *buffer, size_t size) =0;
	virtual uint8_t read() =0;
};

#endif /* MAVLINKINTERFACE_H_ */
