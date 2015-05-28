################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../DataInterface/DataInterface.cpp \
../DataInterface/SerialInterface.cpp \
../DataInterface/UDPInterface.cpp 

OBJS += \
./DataInterface/DataInterface.o \
./DataInterface/SerialInterface.o \
./DataInterface/UDPInterface.o 

CPP_DEPS += \
./DataInterface/DataInterface.d \
./DataInterface/SerialInterface.d \
./DataInterface/UDPInterface.d 


# Each subdirectory must supply rules for building sources it contributes
DataInterface/%.o: ../DataInterface/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/DataInterface" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


