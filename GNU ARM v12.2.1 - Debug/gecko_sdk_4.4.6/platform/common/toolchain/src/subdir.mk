################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
<<<<<<< HEAD
C:/Users/dorak/SimplicityStudio/SDKs/gecko_sdk/platform/common/toolchain/src/sl_memory.c 
=======
C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk/platform/common/toolchain/src/sl_memory.c 
>>>>>>> uart_support

OBJS += \
./gecko_sdk_4.4.6/platform/common/toolchain/src/sl_memory.o 

C_DEPS += \
./gecko_sdk_4.4.6/platform/common/toolchain/src/sl_memory.d 


# Each subdirectory must supply rules for building sources it contributes
<<<<<<< HEAD
gecko_sdk_4.4.6/platform/common/toolchain/src/sl_memory.o: C:/Users/dorak/SimplicityStudio/SDKs/gecko_sdk/platform/common/toolchain/src/sl_memory.c gecko_sdk_4.4.6/platform/common/toolchain/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG990F1024=1' '-DHFXO_FREQ=48000000' '-DSL_BOARD_NAME="BRD2200A"' '-DSL_BOARD_REV="B05"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\dorak\SimplicityStudio\v5_workspace\BSzF_hazi_feladat\config" -I"C:\Users\dorak\SimplicityStudio\v5_workspace\BSzF_hazi_feladat\autogen" -I"C:\Users\dorak\SimplicityStudio\v5_workspace\BSzF_hazi_feladat" -I"C:/Users/dorak/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG/Include" -I"C:/Users/dorak/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/dorak/SimplicityStudio/SDKs/gecko_sdk//platform/driver/button/inc" -I"C:/Users/dorak/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/dorak/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/dorak/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/dorak/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/dorak/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/dorak/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/dorak/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/dorak/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/dorak/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.6/platform/common/toolchain/src/sl_memory.d" -MT"$@" -o "$@" "$<"
=======
gecko_sdk_4.4.6/platform/common/toolchain/src/sl_memory.o: C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk/platform/common/toolchain/src/sl_memory.c gecko_sdk_4.4.6/platform/common/toolchain/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG990F1024=1' '-DHFXO_FREQ=48000000' '-DSL_BOARD_NAME="BRD2200A"' '-DSL_BOARD_REV="B05"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\smarc\SimplicityStudio\v5_workspace\BSzF_hazi_feladat\config" -I"C:\Users\smarc\SimplicityStudio\v5_workspace\BSzF_hazi_feladat\autogen" -I"C:\Users\smarc\SimplicityStudio\v5_workspace\BSzF_hazi_feladat" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG/Include" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/driver/button/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/configuration_over_swo/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/driver/debug/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/smarc/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.6/platform/common/toolchain/src/sl_memory.d" -MT"$@" -o "$@" "$<"
>>>>>>> uart_support
	@echo 'Finished building: $<'
	@echo ' '


