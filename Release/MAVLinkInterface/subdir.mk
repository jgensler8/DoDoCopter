################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../MAVLinkInterface/MAVLinkInterface.cpp \
../MAVLinkInterface/SerialInterface.cpp \
../MAVLinkInterface/UDPInterface.cpp 

OBJS += \
./MAVLinkInterface/MAVLinkInterface.o \
./MAVLinkInterface/SerialInterface.o \
./MAVLinkInterface/UDPInterface.o 

CPP_DEPS += \
./MAVLinkInterface/MAVLinkInterface.d \
./MAVLinkInterface/SerialInterface.d \
./MAVLinkInterface/UDPInterface.d 


# Each subdirectory must supply rules for building sources it contributes
MAVLinkInterface/%.o: ../MAVLinkInterface/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


