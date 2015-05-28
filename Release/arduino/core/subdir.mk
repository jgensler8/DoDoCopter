################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/CDC.cpp \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/HID.cpp \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/HardwareSerial.cpp \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/HardwareSerial0.cpp \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/HardwareSerial1.cpp \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/HardwareSerial2.cpp \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/HardwareSerial3.cpp \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/IPAddress.cpp \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/Print.cpp \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/SPI.cpp \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/Stream.cpp \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/Tone.cpp \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/USBCore.cpp \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/WMath.cpp \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/WString.cpp \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/abi.cpp \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/main.cpp \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/new.cpp 

C_SRCS += \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/WInterrupts.c \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/hooks.c \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/wiring.c \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/wiring_analog.c \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/wiring_digital.c \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/wiring_pulse.c \
/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/wiring_shift.c 

OBJS += \
./arduino/core/CDC.o \
./arduino/core/HID.o \
./arduino/core/HardwareSerial.o \
./arduino/core/HardwareSerial0.o \
./arduino/core/HardwareSerial1.o \
./arduino/core/HardwareSerial2.o \
./arduino/core/HardwareSerial3.o \
./arduino/core/IPAddress.o \
./arduino/core/Print.o \
./arduino/core/SPI.o \
./arduino/core/Stream.o \
./arduino/core/Tone.o \
./arduino/core/USBCore.o \
./arduino/core/WInterrupts.o \
./arduino/core/WMath.o \
./arduino/core/WString.o \
./arduino/core/abi.o \
./arduino/core/hooks.o \
./arduino/core/main.o \
./arduino/core/new.o \
./arduino/core/wiring.o \
./arduino/core/wiring_analog.o \
./arduino/core/wiring_digital.o \
./arduino/core/wiring_pulse.o \
./arduino/core/wiring_shift.o 

C_DEPS += \
./arduino/core/WInterrupts.d \
./arduino/core/hooks.d \
./arduino/core/wiring.d \
./arduino/core/wiring_analog.d \
./arduino/core/wiring_digital.d \
./arduino/core/wiring_pulse.d \
./arduino/core/wiring_shift.d 

CPP_DEPS += \
./arduino/core/CDC.d \
./arduino/core/HID.d \
./arduino/core/HardwareSerial.d \
./arduino/core/HardwareSerial0.d \
./arduino/core/HardwareSerial1.d \
./arduino/core/HardwareSerial2.d \
./arduino/core/HardwareSerial3.d \
./arduino/core/IPAddress.d \
./arduino/core/Print.d \
./arduino/core/SPI.d \
./arduino/core/Stream.d \
./arduino/core/Tone.d \
./arduino/core/USBCore.d \
./arduino/core/WMath.d \
./arduino/core/WString.d \
./arduino/core/abi.d \
./arduino/core/main.d \
./arduino/core/new.d 


# Each subdirectory must supply rules for building sources it contributes
arduino/core/CDC.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/CDC.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/HID.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/HID.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/HardwareSerial.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/HardwareSerial.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/HardwareSerial0.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/HardwareSerial0.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/HardwareSerial1.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/HardwareSerial1.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/HardwareSerial2.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/HardwareSerial2.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/HardwareSerial3.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/HardwareSerial3.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/IPAddress.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/IPAddress.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/Print.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/Print.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/SPI.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/SPI.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/Stream.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/Stream.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/Tone.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/Tone.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/USBCore.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/USBCore.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/WInterrupts.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/WInterrupts.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/WMath.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/WMath.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/WString.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/WString.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/abi.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/abi.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/hooks.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/hooks.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/main.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/main.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/new.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/new.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/wiring.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/wiring.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/wiring_analog.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/wiring_analog.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/wiring_digital.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/wiring_digital.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/wiring_pulse.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/wiring_pulse.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/core/wiring_shift.o: /home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino/wiring_shift.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"/home/user/Downloads/arduino-1.5.8/hardware/arduino/avr/cores/arduino" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/common" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Ethernet/utility" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/GPS" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/MAVLinkInterface" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/IMU" -I"/home/user/Downloads/eclipseArduino/workspace/AVR-Mavlink/Battery" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


