/*
 * I2C.h
 *
 *  Created on: May 27, 2015
 *      Author: user
 */

#ifndef I2C_H_
#define I2C_H_

#include "Arduino.h"

//class I2C {
//public:
//	I2C();
//	virtual ~I2C();
//};

void initSensors();
void i2c_rep_start(uint8_t address);
void i2c_write(uint8_t data );
void i2c_stop(void);
void i2c_write(uint8_t data );
void i2c_writeReg(uint8_t add, uint8_t reg, uint8_t val);
uint8_t i2c_readReg(uint8_t add, uint8_t reg);
uint8_t i2c_readAck();
uint8_t i2c_readNak();

void i2c_read_reg_to_buf(uint8_t add, uint8_t reg, uint8_t *buf, uint8_t size);

#endif /* I2C_H_ */
