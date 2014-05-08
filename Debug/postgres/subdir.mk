################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../postgres/test.cpp 

OBJS += \
./postgres/test.o 

CPP_DEPS += \
./postgres/test.d 


# Each subdirectory must supply rules for building sources it contributes
postgres/%.o: ../postgres/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-5.5/bin/nvcc -I/usr/include/postgresql/ -I/usr/lib/ -G -g -O0 -gencode arch=compute_20,code=sm_20 -odir "postgres" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-5.5/bin/nvcc -I/usr/include/postgresql/ -I/usr/lib/ -G -g -O0 --compile  -x c++ -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


