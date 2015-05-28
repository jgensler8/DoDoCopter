################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../GPS/GPS.cpp \
../GPS/SoftwareSerial.cpp \
../GPS/TinyGPSPlus.cpp \
../GPS/UBLOX.cpp 

OBJS += \
./GPS/GPS.o \
./GPS/SoftwareSerial.o \
./GPS/TinyGPSPlus.o \
./GPS/UBLOX.o 

CPP_DEPS += \
./GPS/GPS.d \
./GPS/SoftwareSerial.d \
./GPS/TinyGPSPlus.d \
./GPS/UBLOX.d 


# Each subdirectory must supply rules for building sources it contributes
GPS/%.o: ../GPS/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


