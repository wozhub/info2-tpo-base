################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/inc/FW_InitExpansion2.c 

OBJS += \
./src/inc/FW_InitExpansion2.o 

C_DEPS += \
./src/inc/FW_InitExpansion2.d 


# Each subdirectory must supply rules for building sources it contributes
src/inc/%.o: ../src/inc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DDEBUG -D__CODE_RED -I"C:\Facultad\Info II\Template\Template\src\FW_Drivers" -I"C:\Facultad\Info II\Template\Template\src\FW_Inicializaciones" -I"C:\Facultad\Info II\Template\Template\src\inc" -I"C:\Facultad\Info II\Template\Template\src\PRimitivas" -Og -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


