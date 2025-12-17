################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := BSzF_hazi_feladat
BUILD_ARTIFACT_EXTENSION := axf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: main-build

# Main-build Target
main-build: BSzF_hazi_feladat.axf

# Tool invocations
BSzF_hazi_feladat.axf: $(OBJS) $(USER_OBJS) makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -T "BSzF_hazi_feladat.ld" -Xlinker --gc-sections -Xlinker -Map="BSzF_hazi_feladat.map" --specs=nano.specs -o BSzF_hazi_feladat.axf "./caplesense.o" "./game.o" "./segmentlcd.o" "./segmentlcd_individual.o" -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building out file: BSzF_hazi_feladat.out'
	arm-none-eabi-objcopy "BSzF_hazi_feladat.axf" "BSzF_hazi_feladat.out"
	@echo ' '

	@echo 'Building hex file: BSzF_hazi_feladat.hex'
	arm-none-eabi-objcopy -O ihex "BSzF_hazi_feladat.axf" "BSzF_hazi_feladat.hex"
	@echo ' '

	@echo 'Building bin file: BSzF_hazi_feladat.bin'
	arm-none-eabi-objcopy -O binary "BSzF_hazi_feladat.axf" "BSzF_hazi_feladat.bin"
	@echo ' '

	@echo 'Building s37 file: BSzF_hazi_feladat.s37'
	arm-none-eabi-objcopy -O srec "BSzF_hazi_feladat.axf" "BSzF_hazi_feladat.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "BSzF_hazi_feladat.axf" -A
	@echo ' '

# Other Targets
clean:
	-@$(foreach FILE, $(EXECUTABLES), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(OBJS), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(C_DEPS), $(shell $(RM) $(FILE)) )
	-$(RM) BSzF_hazi_feladat.axf
	-@echo ' '

.PHONY: all clean dependents main-build

-include ../makefile.targets
