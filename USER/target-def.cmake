# Target-specific flags
set(MCU_ARCH ARMCM4)
set(MCU_FAMILY STM32F411xE)
set(MCU_NAME STM32F411CE)
#set(MCU_TYPE STM32F40_41xxx)

set(CPU "-mcpu=cortex-m4")
set(FPU "-mfpu=fpv4-sp-d16")
set(FLOAT_ABI "-mfloat-abi=hard")

set(LINKER_SCRIPT ${CMAKE_CURRENT_SOURCE_DIR}/${STM32_PROJ_FOLDER}/STM32F411RE_FLASH.ld)

#option(USE_LL_LIB "Enable LL library" ON)
#option(USE_HAL_LIB "Enable HAL library" OFF)

#option(USE_SYSTEM_VIEW "Enable Segger SystemView library" OFF)