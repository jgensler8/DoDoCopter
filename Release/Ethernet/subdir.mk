################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Ethernet/Dhcp.cpp \
../Ethernet/Dns.cpp \
../Ethernet/Ethernet.cpp \
../Ethernet/EthernetClient.cpp \
../Ethernet/EthernetServer.cpp \
../Ethernet/EthernetUdp.cpp 

OBJS += \
./Ethernet/Dhcp.o \
./Ethernet/Dns.o \
./Ethernet/Ethernet.o \
./Ethernet/EthernetClient.o \
./Ethernet/EthernetServer.o \
./Ethernet/EthernetUdp.o 

CPP_DEPS += \
./Ethernet/Dhcp.d \
./Ethernet/Dns.d \
./Ethernet/Ethernet.d \
./Ethernet/EthernetClient.d \
./Ethernet/EthernetServer.d \
./Ethernet/EthernetUdp.d 


# Each subdirectory must supply rules for building sources it contributes
Ethernet/%.o: ../Ethernet/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


