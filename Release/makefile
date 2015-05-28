################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include arduino/core/subdir.mk
-include MAVLinkInterface/subdir.mk
-include IMU/subdir.mk
-include GPS/subdir.mk
-include Ethernet/utility/subdir.mk
-include Ethernet/subdir.mk
-include Battery/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
AVR-Mavlink.lss \

FLASH_IMAGE += \
AVR-Mavlink.hex \

EEPROM_IMAGE += \
AVR-Mavlink.eep \

SIZEDUMMY += \
sizedummy \


# All Target
all: AVR-Mavlink.elf secondary-outputs

# Tool invocations
AVR-Mavlink.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C++ Linker'
	avr-g++ -Wl,-Map,AVR-Mavlink.map,--cref -mrelax -Wl,--gc-sections -mmcu=atmega328p -o "AVR-Mavlink.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

AVR-Mavlink.lss: AVR-Mavlink.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S AVR-Mavlink.elf  >"AVR-Mavlink.lss"
	@echo 'Finished building: $@'
	@echo ' '

AVR-Mavlink.hex: AVR-Mavlink.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex AVR-Mavlink.elf  "AVR-Mavlink.hex"
	@echo 'Finished building: $@'
	@echo ' '

AVR-Mavlink.eep: AVR-Mavlink.elf
	@echo 'Create eeprom image (ihex format)'
	-avr-objcopy -j .eeprom --no-change-warnings --change-section-lma .eeprom=0 -O ihex AVR-Mavlink.elf  "AVR-Mavlink.eep"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: AVR-Mavlink.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega328p AVR-Mavlink.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EEPROM_IMAGE)$(FLASH_IMAGE)$(ELFS)$(LSS)$(S_DEPS)$(CXX_DEPS)$(S_UPPER_DEPS)$(C++_DEPS)$(ASM_DEPS)$(CC_DEPS)$(INO_DEPS)$(CPP_DEPS)$(C_UPPER_DEPS)$(SIZEDUMMY) AVR-Mavlink.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(EEPROM_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
