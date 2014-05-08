################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../flowmapr/source/DEMProcess.cpp \
../flowmapr/source/LandMapDLG.cpp \
../flowmapr/source/Sort.cpp \
../flowmapr/source/SortD.cpp \
../flowmapr/source/VOLDFile.cpp 

OBJS += \
./flowmapr/source/DEMProcess.o \
./flowmapr/source/LandMapDLG.o \
./flowmapr/source/Sort.o \
./flowmapr/source/SortD.o \
./flowmapr/source/VOLDFile.o 

CPP_DEPS += \
./flowmapr/source/DEMProcess.d \
./flowmapr/source/LandMapDLG.d \
./flowmapr/source/Sort.d \
./flowmapr/source/SortD.d \
./flowmapr/source/VOLDFile.d 


# Each subdirectory must supply rules for building sources it contributes
flowmapr/source/%.o: ../flowmapr/source/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	nvcc -G -g -O0 -gencode arch=compute_20,code=sm_20 -odir "flowmapr/source" -M -o "$(@:%.o=%.d)" "$<"
	nvcc -G -g -O0 --compile  -x c++ -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


