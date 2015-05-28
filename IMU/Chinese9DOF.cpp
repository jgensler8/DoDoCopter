/*
 * Chinese9DOF.cpp
 *
 *  Created on: May 27, 2015
 *      Author: user
 */

#include "Chinese9DOF.h"

Chinese9DOF::Chinese9DOF() : IMU() {

}

Chinese9DOF::~Chinese9DOF() {

}

uint32_t Chinese9DOF::get_velocity_x() {
	return 1.0;
}

uint32_t Chinese9DOF::get_velocity_y() {
	return 1.0;
}

uint32_t Chinese9DOF::get_velocity_z() {
	return 0;
}

uint32_t Chinese9DOF::get_altitude() {
	return 10;
}

uint32_t Chinese9DOF::get_roll() {
	return 1.2;
}

uint32_t Chinese9DOF::get_pitch() {
	return 1.7;
}

uint32_t Chinese9DOF::get_yaw() {
	return 3.14;
}

uint32_t Chinese9DOF::get_roll_speed() {
	return 0.01;
}

uint32_t Chinese9DOF::get_pitch_speed() {
	return 0.02;
}

uint32_t Chinese9DOF::get_yaw_speed() {
	return 0.03;
}











//TODO Clean these up
int baroTemperature;
int baroPressure;
int currentTime;
static uint8_t rawADC[6];
static float magGain[3] = {1.0,1.0,1.0};

typedef struct {
  uint8_t currentSet;
  int16_t accZero[3];
  int16_t magZero[3];
  uint16_t flashsum;
  uint8_t checksum;      // MUST BE ON LAST POSITION OF STRUCTURE !
} global_conf_t;

global_conf_t global_conf;

enum rc {
  ROLL,
  PITCH,
  YAW,
  THROTTLE,
  AUX1,
  AUX2,
  AUX3,
  AUX4,
  AUX5,
  AUX6,
  AUX7,
  AUX8
};

#define ACC_ORIENTATION(X, Y, Z) {imu.accADC[ROLL] = -X; imu.accADC[PITCH] = -Y; imu.accADC[YAW] = Z;}
#define GYRO_ORIENTATION(X, Y, Z) {imu.gyroADC[ROLL] = Y; imu.gyroADC[PITCH] = -X; imu.gyroADC[YAW] = -Z;}
#define MAG_ORIENTATION(X, Y, Z) {imu.magADC[ROLL] = X; imu.magADC[PITCH] = Y; imu.magADC[YAW] = -Z;}
#define MPU6050_I2C_AUX_MASTER // MAG connected to the AUX I2C bus of MPU6050


// ****************
// ACC common part
// ****************
void ACC_Common() {
  static int32_t a[3];
  if (calibratingA>0) {
    calibratingA--;
    for (uint8_t axis = 0; axis < 3; axis++) {
      if (calibratingA == 511) a[axis]=0;   // Reset a[axis] at start of calibration
      a[axis] +=imu.accADC[axis];           // Sum up 512 readings
      global_conf.accZero[axis] = a[axis]>>9; // Calculate average, only the last itteration where (calibratingA == 0) is relevant
    }
    if (calibratingA == 0) {
      global_conf.accZero[YAW] -= ACC_1G;   // shift Z down by ACC_1G and store values in EEPROM at end of calibration
      conf.angleTrim[ROLL]   = 0;
      conf.angleTrim[PITCH]  = 0;
      //writeGlobalSet(1); // write accZero in EEPROM
    }
  }
  #if defined(INFLIGHT_ACC_CALIBRATION)
      static int32_t b[3];
      static int16_t accZero_saved[3]  = {0,0,0};
      static int16_t  angleTrim_saved[2] = {0, 0};
      //Saving old zeropoints before measurement
      if (InflightcalibratingA==50) {
         accZero_saved[ROLL]  = global_conf.accZero[ROLL] ;
         accZero_saved[PITCH] = global_conf.accZero[PITCH];
         accZero_saved[YAW]   = global_conf.accZero[YAW] ;
         angleTrim_saved[ROLL]  = conf.angleTrim[ROLL] ;
         angleTrim_saved[PITCH] = conf.angleTrim[PITCH] ;
      }
      if (InflightcalibratingA>0) {
        for (uint8_t axis = 0; axis < 3; axis++) {
          // Reset a[axis] at start of calibration
          if (InflightcalibratingA == 50) b[axis]=0;
          // Sum up 50 readings
          b[axis] +=imu.accADC[axis];
          // Clear global variables for next reading
          imu.accADC[axis]=0;
          global_conf.accZero[axis]=0;
        }
        //all values are measured
        if (InflightcalibratingA == 1) {
          AccInflightCalibrationActive = 0;
          AccInflightCalibrationMeasurementDone = 1;
          SET_ALARM_BUZZER(ALRM_FAC_CONFIRM, ALRM_LVL_CONFIRM_1);     //buzzer for indicatiing the end of calibration
          // recover saved values to maintain current flight behavior until new values are transferred
          global_conf.accZero[ROLL]  = accZero_saved[ROLL] ;
          global_conf.accZero[PITCH] = accZero_saved[PITCH];
          global_conf.accZero[YAW]   = accZero_saved[YAW] ;
          conf.angleTrim[ROLL]  = angleTrim_saved[ROLL] ;
          conf.angleTrim[PITCH] = angleTrim_saved[PITCH] ;
        }
        InflightcalibratingA--;
      }
      // Calculate average, shift Z down by ACC_1G and store values in EEPROM at end of calibration
      if (AccInflightCalibrationSavetoEEProm == 1){  //the copter is landed, disarmed and the combo has been done again
        AccInflightCalibrationSavetoEEProm = 0;
        global_conf.accZero[ROLL]  = b[ROLL]/50;
        global_conf.accZero[PITCH] = b[PITCH]/50;
        global_conf.accZero[YAW]   = b[YAW]/50-ACC_1G;
        conf.angleTrim[ROLL]   = 0;
        conf.angleTrim[PITCH]  = 0;
        writeGlobalSet(1); // write accZero in EEPROM
      }
  #endif
  imu.accADC[ROLL]  -=  global_conf.accZero[ROLL] ;
  imu.accADC[PITCH] -=  global_conf.accZero[PITCH];
  imu.accADC[YAW]   -=  global_conf.accZero[YAW] ;

  #if defined(SENSORS_TILT_45DEG_LEFT)
    int16_t temp = ((imu.accADC[PITCH] - imu.accADC[ROLL] )*7)/10;
    imu.accADC[ROLL] = ((imu.accADC[ROLL]  + imu.accADC[PITCH])*7)/10;
    imu.accADC[PITCH] = temp;
  #endif
  #if defined(SENSORS_TILT_45DEG_RIGHT)
    int16_t temp = ((imu.accADC[PITCH] + imu.accADC[ROLL] )*7)/10;
    imu.accADC[ROLL] = ((imu.accADC[ROLL]  - imu.accADC[PITCH])*7)/10;
    imu.accADC[PITCH] = temp;
  #endif
}

/*
 * BMP 085
 */
#define BMP085_ADDRESS 0x77

static struct {
	// sensor registers from the BOSCH BMP085 datasheet
	int16_t  ac1, ac2, ac3;
	uint16_t ac4, ac5, ac6;
	int16_t  b1, b2, mb, mc, md;
	union {uint16_t val; uint8_t raw[2]; } ut; //uncompensated T
	union {uint32_t val; uint8_t raw[4]; } up; //uncompensated P
	uint8_t  state;
	uint32_t deadline;
} bmp085_ctx;
#define OSS 3

/* transform a series of bytes from big endian to little
   endian and vice versa. */
void swap_endianness(void *buf, size_t size) {
	/* we swap in-place, so we only have to
	 * place _one_ element on a temporary tray
	 */
	uint8_t tray;
	uint8_t *from;
	uint8_t *to;
	/* keep swapping until the pointers have assed each other */
	for (from = (uint8_t*)buf, to = &from[size-1]; from < to; from++, to--) {
		tray = *from;
		*from = *to;
		*to = tray;
	}
}

void i2c_BMP085_readCalibration(){
	delay(10);
	//read calibration data in one go
	size_t s_bytes = (uint8_t*)&bmp085_ctx.md - (uint8_t*)&bmp085_ctx.ac1 + sizeof(bmp085_ctx.ac1);
	i2c_read_reg_to_buf(BMP085_ADDRESS, 0xAA, (uint8_t*)&bmp085_ctx.ac1, s_bytes);
	// now fix endianness
	int16_t *p;
	for (p = &bmp085_ctx.ac1; p <= &bmp085_ctx.md; p++) {
		swap_endianness(p, sizeof(*p));
	}
}

// read uncompensated temperature value: send command first
void i2c_BMP085_UT_Start(void) {
	i2c_writeReg(BMP085_ADDRESS,0xf4,0x2e);
	i2c_rep_start(BMP085_ADDRESS<<1);
	i2c_write(0xF6);
	i2c_stop();
}

// read uncompensated pressure value: send command first
void i2c_BMP085_UP_Start () {
	i2c_writeReg(BMP085_ADDRESS,0xf4,0x34+(OSS<<6)); // control register value for oversampling setting 3
	i2c_rep_start(BMP085_ADDRESS<<1); //I2C write direction => 0
	i2c_write(0xF6);
	i2c_stop();
}

// read uncompensated pressure value: read result bytes
// the datasheet suggests a delay of 25.5 ms (oversampling settings 3) after the send command
void i2c_BMP085_UP_Read () {
	i2c_rep_start((BMP085_ADDRESS<<1) | 1);//I2C read direction => 1
	bmp085_ctx.up.raw[2] = i2c_readAck();
	bmp085_ctx.up.raw[1] = i2c_readAck();
	bmp085_ctx.up.raw[0] = i2c_readNak();
}

// read uncompensated temperature value: read result bytes
// the datasheet suggests a delay of 4.5 ms after the send command
void i2c_BMP085_UT_Read() {
	i2c_rep_start((BMP085_ADDRESS<<1) | 1);//I2C read direction => 1
	bmp085_ctx.ut.raw[1] = i2c_readAck();
	bmp085_ctx.ut.raw[0] = i2c_readNak();
}

void i2c_BMP085_Calculate() {
	int32_t  x1, x2, x3, b3, b5, b6, p, tmp;
	uint32_t b4, b7;
	// Temperature calculations
	x1 = ((int32_t)bmp085_ctx.ut.val - bmp085_ctx.ac6) * bmp085_ctx.ac5 >> 15;
	x2 = ((int32_t)bmp085_ctx.mc << 11) / (x1 + bmp085_ctx.md);
	b5 = x1 + x2;
	baroTemperature = (b5 * 10 + 8) >> 4; // in 0.01 degC (same as MS561101BA temperature)
	// Pressure calculations
	b6 = b5 - 4000;
	x1 = (bmp085_ctx.b2 * (b6 * b6 >> 12)) >> 11;
	x2 = bmp085_ctx.ac2 * b6 >> 11;
	x3 = x1 + x2;
	tmp = bmp085_ctx.ac1;
	tmp = (tmp*4 + x3) << OSS;
	b3 = (tmp+2)/4;
	x1 = bmp085_ctx.ac3 * b6 >> 13;
	x2 = (bmp085_ctx.b1 * (b6 * b6 >> 12)) >> 16;
	x3 = ((x1 + x2) + 2) >> 2;
	b4 = (bmp085_ctx.ac4 * (uint32_t)(x3 + 32768)) >> 15;
	b7 = ((uint32_t) (bmp085_ctx.up.val >> (8-OSS)) - b3) * (50000 >> OSS);
	p = b7 < 0x80000000 ? (b7 * 2) / b4 : (b7 / b4) * 2;
	x1 = (p >> 8) * (p >> 8);
	x1 = (x1 * 3038) >> 16;
	x2 = (-7357 * p) >> 16;
	baroPressure = p + ((x1 + x2 + 3791) >> 4);
}

void  Baro_init() {
	delay(10);
	i2c_BMP085_readCalibration();
	delay(5);
	i2c_BMP085_UT_Start();
	bmp085_ctx.deadline = currentTime+5000;
}

/*
 * HMC5883
 */

#define HMC58X3_R_CONFA 0
#define HMC58X3_R_CONFB 1
#define HMC58X3_R_MODE 2
#define HMC58X3_X_SELF_TEST_GAUSS (+1.16)                       //!< X axis level when bias current is applied.
#define HMC58X3_Y_SELF_TEST_GAUSS (+1.16)   //!< Y axis level when bias current is applied.
#define HMC58X3_Z_SELF_TEST_GAUSS (+1.08)                       //!< Y axis level when bias current is applied.
#define SELF_TEST_LOW_LIMIT  (243.0/390.0)   //!< Low limit when gain is 5.
#define SELF_TEST_HIGH_LIMIT (575.0/390.0)   //!< High limit when gain is 5.
#define HMC_POS_BIAS 1
#define HMC_NEG_BIAS 2

#define MAG_ADDRESS 0x1E
#define MAG_DATA_REGISTER 0x03

static int32_t xyz_total[3]={0,0,0};  // 32 bit totals so they won't overflow.

static void getADC() {
	i2c_getSixRawADC(MAG_ADDRESS,MAG_DATA_REGISTER);
	MAG_ORIENTATION( ((rawADC[0]<<8) | rawADC[1]) ,
			((rawADC[4]<<8) | rawADC[5]) ,
			((rawADC[2]<<8) | rawADC[3]) );
}

static uint8_t bias_collect(uint8_t bias) {
	int16_t abs_magADC;

	i2c_writeReg(MAG_ADDRESS, HMC58X3_R_CONFA, bias);            // Reg A DOR=0x010 + MS1,MS0 set to pos or negative bias
	for (uint8_t i=0; i<10; i++) {                               // Collect 10 samples
		i2c_writeReg(MAG_ADDRESS,HMC58X3_R_MODE, 1);
		delay(100);
		getADC();                                                  // Get the raw values in case the scales have already been changed.
		for (uint8_t axis=0; axis<3; axis++) {
			abs_magADC =  abs(imu.magADC[axis]);
			xyz_total[axis]+= abs_magADC;                            // Since the measurements are noisy, they should be averaged rather than taking the max.
			if ((int16_t)(1<<12) < abs_magADC) return false;         // Detect saturation.   if false Breaks out of the for loop.  No sense in continuing if we saturated.
		}
	}
	return true;
}

static void Mag_init() {
	bool bret=true;                // Error indicator

	// Note that the  very first measurement after a gain change maintains the same gain as the previous setting.
	// The new gain setting is effective from the second measurement and on.
	i2c_writeReg(MAG_ADDRESS, HMC58X3_R_CONFB, 2 << 5);  //Set the Gain
	i2c_writeReg(MAG_ADDRESS,HMC58X3_R_MODE, 1);
	delay(100);
	getADC();  //Get one sample, and discard it

	if (!bias_collect(0x010 + HMC_POS_BIAS)) bret = false;
	if (!bias_collect(0x010 + HMC_NEG_BIAS)) bret = false;

	if (bret) // only if no saturation detected, compute the gain. otherwise, the default 1.0 is used
		for (uint8_t axis=0; axis<3; axis++)
			magGain[axis]=820.0*HMC58X3_X_SELF_TEST_GAUSS*2.0*10.0/xyz_total[axis];  // note: xyz_total[axis] is always positive

	// leave test mode
	i2c_writeReg(MAG_ADDRESS ,HMC58X3_R_CONFA ,0x70 ); //Configuration Register A  -- 0 11 100 00  num samples: 8 ; output rate: 15Hz ; normal measurement mode
	i2c_writeReg(MAG_ADDRESS ,HMC58X3_R_CONFB ,0x20 ); //Configuration Register B  -- 001 00000    configuration gain 1.3Ga
	i2c_writeReg(MAG_ADDRESS ,HMC58X3_R_MODE  ,0x00 ); //Mode register             -- 000000 00    continuous Conversion Mode
	delay(100);
}

#if !defined(MPU6050_I2C_AUX_MASTER)
static void Device_Mag_getADC() {
	getADC();
}
#endif

/*
 * MPU6050
 */

// ************************************************************************************************************
// I2C Gyroscope and Accelerometer MPU6050
// ************************************************************************************************************

#define MPU6050_ADDRESS     0x68 // address pin AD0 low (GND), default for FreeIMU v0.4 and InvenSense evaluation board
//#define MPU6050_ADDRESS     0x69 // address pin AD0 high (VCC)

static void Gyro_init() {
	i2c_writeReg(MPU6050_ADDRESS, 0x6B, 0x80);             //PWR_MGMT_1    -- DEVICE_RESET 1
	delay(50);
	i2c_writeReg(MPU6050_ADDRESS, 0x6B, 0x03);             //PWR_MGMT_1    -- SLEEP 0; CYCLE 0; TEMP_DIS 0; CLKSEL 3 (PLL with Z Gyro reference)
	i2c_writeReg(MPU6050_ADDRESS, 0x1A, GYRO_DLPF_CFG);    //CONFIG        -- EXT_SYNC_SET 0 (disable input pin for data sync) ; default DLPF_CFG = 0 => ACC bandwidth = 260Hz  GYRO bandwidth = 256Hz)
	i2c_writeReg(MPU6050_ADDRESS, 0x1B, 0x18);             //GYRO_CONFIG   -- FS_SEL = 3: Full scale set to 2000 deg/sec
	// enable I2C bypass for AUX I2C
#if defined(MAG)
	i2c_writeReg(MPU6050_ADDRESS, 0x37, 0x02);           //INT_PIN_CFG   -- INT_LEVEL=0 ; INT_OPEN=0 ; LATCH_INT_EN=0 ; INT_RD_CLEAR=0 ; FSYNC_INT_LEVEL=0 ; FSYNC_INT_EN=0 ; I2C_BYPASS_EN=1 ; CLKOUT_EN=0
#endif
}

void Gyro_getADC () {
	i2c_getSixRawADC(MPU6050_ADDRESS, 0x43);
	GYRO_ORIENTATION( ((rawADC[0]<<8) | rawADC[1])>>2 , // range: +/- 8192; +/- 2000 deg/sec
			((rawADC[2]<<8) | rawADC[3])>>2 ,
			((rawADC[4]<<8) | rawADC[5])>>2 );
	GYRO_Common();
}

static void ACC_init () {
	i2c_writeReg(MPU6050_ADDRESS, 0x1C, 0x10);             //ACCEL_CONFIG  -- AFS_SEL=2 (Full Scale = +/-8G)  ; ACCELL_HPF=0   //note something is wrong in the spec.
	//note: something seems to be wrong in the spec here. With AFS=2 1G = 4096 but according to my measurement: 1G=2048 (and 2048/8 = 256)
	//confirmed here: http://www.multiwii.com/forum/viewtopic.php?f=8&t=1080&start=10#p7480

#if defined(MPU6050_I2C_AUX_MASTER)
	//at this stage, the MAG is configured via the original MAG init function in I2C bypass mode
	//now we configure MPU as a I2C Master device to handle the MAG via the I2C AUX port (done here for HMC5883)
	i2c_writeReg(MPU6050_ADDRESS, 0x6A, 0b00100000);       //USER_CTRL     -- DMP_EN=0 ; FIFO_EN=0 ; I2C_MST_EN=1 (I2C master mode) ; I2C_IF_DIS=0 ; FIFO_RESET=0 ; I2C_MST_RESET=0 ; SIG_COND_RESET=0
	i2c_writeReg(MPU6050_ADDRESS, 0x37, 0x00);             //INT_PIN_CFG   -- INT_LEVEL=0 ; INT_OPEN=0 ; LATCH_INT_EN=0 ; INT_RD_CLEAR=0 ; FSYNC_INT_LEVEL=0 ; FSYNC_INT_EN=0 ; I2C_BYPASS_EN=0 ; CLKOUT_EN=0
	i2c_writeReg(MPU6050_ADDRESS, 0x24, 0x0D);             //I2C_MST_CTRL  -- MULT_MST_EN=0 ; WAIT_FOR_ES=0 ; SLV_3_FIFO_EN=0 ; I2C_MST_P_NSR=0 ; I2C_MST_CLK=13 (I2C slave speed bus = 400kHz)
	i2c_writeReg(MPU6050_ADDRESS, 0x25, 0x80|MAG_ADDRESS);//I2C_SLV0_ADDR -- I2C_SLV4_RW=1 (read operation) ; I2C_SLV4_ADDR=MAG_ADDRESS
	i2c_writeReg(MPU6050_ADDRESS, 0x26, MAG_DATA_REGISTER);//I2C_SLV0_REG  -- 6 data bytes of MAG are stored in 6 registers. First register address is MAG_DATA_REGISTER
	i2c_writeReg(MPU6050_ADDRESS, 0x27, 0x86);             //I2C_SLV0_CTRL -- I2C_SLV0_EN=1 ; I2C_SLV0_BYTE_SW=0 ; I2C_SLV0_REG_DIS=0 ; I2C_SLV0_GRP=0 ; I2C_SLV0_LEN=3 (3x2 bytes)
#endif
}

void ACC_getADC () {
	i2c_getSixRawADC(MPU6050_ADDRESS, 0x3B);
	ACC_ORIENTATION( ((rawADC[0]<<8) | rawADC[1])>>3 ,
			((rawADC[2]<<8) | rawADC[3])>>3 ,
			((rawADC[4]<<8) | rawADC[5])>>3 );
	ACC_Common();
}

//The MAG acquisition function must be replaced because we now talk to the MPU device
#if defined(MPU6050_I2C_AUX_MASTER)
static void Device_Mag_getADC() {
	i2c_getSixRawADC(MPU6050_ADDRESS, 0x49);               //0x49 is the first memory room for EXT_SENS_DATA
	MAG_ORIENTATION( ((rawADC[0]<<8) | rawADC[1]) ,
			((rawADC[4]<<8) | rawADC[5]) ,
			((rawADC[2]<<8) | rawADC[3]) );
}
#endif
