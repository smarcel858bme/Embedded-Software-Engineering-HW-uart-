################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c 

OBJS += \
./gecko_sdk_4.4.6/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o 

C_DEPS += \
./gecko_sdk_4.4.6/platform/emdrv/gpiointerrupt/src/gpiointerrupt.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.4.6/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o: C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c gecko_sdk_4.4.6/platform/emdrv/gpiointerrupt/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG990F1024=1' '-DHFXO_FREQ=48000000' '-DSL_BOARD_NAME="BRD2200A"' '-DSL_BOARD_REV="B05"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\smarc\SimplicityStudio\v5_workspace\BSzF_hazi_feladat\config" -I"C:\Users\smarc\SimplicityStudio\v5_workspace\BSzF_hazi_feladat\autogen" -I"C:\Users\smarc\SimplicityStudio\v5_workspace\BSzF_hazi_feladat" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG/Include" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/driver/button/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.6/platform/emdrv/gpiointerrupt/src/gpiointerrupt.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


