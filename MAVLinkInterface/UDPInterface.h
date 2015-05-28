/*
 * UDPInterface.h
 *
 *  Created on: May 26, 2015
 *      Author: user
 */

#ifndef UDPINTERFACE_H_
#define UDPINTERFACE_H_

#include "MAVLinkInterface.h"
#include <Ethernet.h>
#include <EthernetUdp.h> // UDP library from: bjoern@cs.stanford.edu 12/30/2008

EthernetUDP UDP;

class UDPInterface : public MAVLinkInterface {
public:
	UDPInterface(const IPAddress &basestation_ip, const uint16_t &basestation_port);
	virtual ~UDPInterface();

	size_t send(const uint8_t *buffer, size_t size);
	uint8_t read();
private:
	IPAddress _basestation_ip;
	uint8_t _basestation_port;
};

#endif /* UDPINTERFACE_H_ */
