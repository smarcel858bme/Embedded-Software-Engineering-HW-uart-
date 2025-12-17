################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../caplesense.c \
../game.c \
../segmentlcd.c \
../segmentlcd_individual.c 

OBJS += \
./caplesense.o \
./game.o \
./segmentlcd.o \
./segmentlcd_individual.o 

C_DEPS += \
./caplesense.d \
./game.d \
./segmentlcd.d \
./segmentlcd_individual.d 


# Each subdirectory must supply rules for building sources it contributes
caplesense.o: ../caplesense.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -std=c99 '-DNDEBUG=1' -Os -Wall -ffunction-sections -fdata-sections -MMD -MP -MF"caplesense.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

game.o: ../game.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -std=c99 '-DNDEBUG=1' -Os -Wall -ffunction-sections -fdata-sections -MMD -MP -MF"game.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

segmentlcd.o: ../segmentlcd.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -std=c99 '-DNDEBUG=1' -Os -Wall -ffunction-sections -fdata-sections -MMD -MP -MF"segmentlcd.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

segmentlcd_individual.o: ../segmentlcd_individual.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -std=c99 '-DNDEBUG=1' -Os -Wall -ffunction-sections -fdata-sections -MMD -MP -MF"segmentlcd_individual.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


