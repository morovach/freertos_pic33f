#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_dsPIC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_dsPIC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../FreeRTOS_Source/croutine.c ../../FreeRTOS_Source/list.c ../../FreeRTOS_Source/queue.c ../../FreeRTOS_Source/tasks.c ../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC/port.c ../../FreeRTOS_Source/portable/MemMang/heap_1.c ../../FreeRTOS_DemoCommon/BlockQ.c ../../FreeRTOS_DemoCommon/blocktim.c ../../FreeRTOS_DemoCommon/comtest.c ../../FreeRTOS_DemoCommon/crflash.c ../../FreeRTOS_DemoCommon/integer.c ../main.c ../ParTest/ParTest.c ../serial/serial.c ../timertest.c ../lcd.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1496908984/croutine.o ${OBJECTDIR}/_ext/1496908984/list.o ${OBJECTDIR}/_ext/1496908984/queue.o ${OBJECTDIR}/_ext/1496908984/tasks.o ${OBJECTDIR}/_ext/1820574858/port.o ${OBJECTDIR}/_ext/1830208299/heap_1.o ${OBJECTDIR}/_ext/2050429531/BlockQ.o ${OBJECTDIR}/_ext/2050429531/blocktim.o ${OBJECTDIR}/_ext/2050429531/comtest.o ${OBJECTDIR}/_ext/2050429531/crflash.o ${OBJECTDIR}/_ext/2050429531/integer.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/809743516/ParTest.o ${OBJECTDIR}/_ext/821501661/serial.o ${OBJECTDIR}/_ext/1472/timertest.o ${OBJECTDIR}/_ext/1472/lcd.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1496908984/croutine.o.d ${OBJECTDIR}/_ext/1496908984/list.o.d ${OBJECTDIR}/_ext/1496908984/queue.o.d ${OBJECTDIR}/_ext/1496908984/tasks.o.d ${OBJECTDIR}/_ext/1820574858/port.o.d ${OBJECTDIR}/_ext/1830208299/heap_1.o.d ${OBJECTDIR}/_ext/2050429531/BlockQ.o.d ${OBJECTDIR}/_ext/2050429531/blocktim.o.d ${OBJECTDIR}/_ext/2050429531/comtest.o.d ${OBJECTDIR}/_ext/2050429531/crflash.o.d ${OBJECTDIR}/_ext/2050429531/integer.o.d ${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/809743516/ParTest.o.d ${OBJECTDIR}/_ext/821501661/serial.o.d ${OBJECTDIR}/_ext/1472/timertest.o.d ${OBJECTDIR}/_ext/1472/lcd.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1496908984/croutine.o ${OBJECTDIR}/_ext/1496908984/list.o ${OBJECTDIR}/_ext/1496908984/queue.o ${OBJECTDIR}/_ext/1496908984/tasks.o ${OBJECTDIR}/_ext/1820574858/port.o ${OBJECTDIR}/_ext/1830208299/heap_1.o ${OBJECTDIR}/_ext/2050429531/BlockQ.o ${OBJECTDIR}/_ext/2050429531/blocktim.o ${OBJECTDIR}/_ext/2050429531/comtest.o ${OBJECTDIR}/_ext/2050429531/crflash.o ${OBJECTDIR}/_ext/2050429531/integer.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/809743516/ParTest.o ${OBJECTDIR}/_ext/821501661/serial.o ${OBJECTDIR}/_ext/1472/timertest.o ${OBJECTDIR}/_ext/1472/lcd.o

# Source Files
SOURCEFILES=../../FreeRTOS_Source/croutine.c ../../FreeRTOS_Source/list.c ../../FreeRTOS_Source/queue.c ../../FreeRTOS_Source/tasks.c ../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC/port.c ../../FreeRTOS_Source/portable/MemMang/heap_1.c ../../FreeRTOS_DemoCommon/BlockQ.c ../../FreeRTOS_DemoCommon/blocktim.c ../../FreeRTOS_DemoCommon/comtest.c ../../FreeRTOS_DemoCommon/crflash.c ../../FreeRTOS_DemoCommon/integer.c ../main.c ../ParTest/ParTest.c ../serial/serial.c ../timertest.c ../lcd.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_dsPIC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ128GP802
MP_LINKER_FILE_OPTION=,--script=p33FJ128GP802.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1496908984/croutine.o: ../../FreeRTOS_Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1496908984" 
	@${RM} ${OBJECTDIR}/_ext/1496908984/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496908984/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_Source/croutine.c  -o ${OBJECTDIR}/_ext/1496908984/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1496908984/croutine.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1496908984/croutine.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1496908984/list.o: ../../FreeRTOS_Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1496908984" 
	@${RM} ${OBJECTDIR}/_ext/1496908984/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496908984/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_Source/list.c  -o ${OBJECTDIR}/_ext/1496908984/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1496908984/list.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1496908984/list.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1496908984/queue.o: ../../FreeRTOS_Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1496908984" 
	@${RM} ${OBJECTDIR}/_ext/1496908984/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496908984/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_Source/queue.c  -o ${OBJECTDIR}/_ext/1496908984/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1496908984/queue.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1496908984/queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1496908984/tasks.o: ../../FreeRTOS_Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1496908984" 
	@${RM} ${OBJECTDIR}/_ext/1496908984/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496908984/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_Source/tasks.c  -o ${OBJECTDIR}/_ext/1496908984/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1496908984/tasks.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1496908984/tasks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1820574858/port.o: ../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1820574858" 
	@${RM} ${OBJECTDIR}/_ext/1820574858/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1820574858/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/_ext/1820574858/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1820574858/port.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1820574858/port.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1830208299/heap_1.o: ../../FreeRTOS_Source/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1830208299" 
	@${RM} ${OBJECTDIR}/_ext/1830208299/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1830208299/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_Source/portable/MemMang/heap_1.c  -o ${OBJECTDIR}/_ext/1830208299/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1830208299/heap_1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1830208299/heap_1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2050429531/BlockQ.o: ../../FreeRTOS_DemoCommon/BlockQ.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2050429531" 
	@${RM} ${OBJECTDIR}/_ext/2050429531/BlockQ.o.d 
	@${RM} ${OBJECTDIR}/_ext/2050429531/BlockQ.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_DemoCommon/BlockQ.c  -o ${OBJECTDIR}/_ext/2050429531/BlockQ.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2050429531/BlockQ.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/2050429531/BlockQ.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2050429531/blocktim.o: ../../FreeRTOS_DemoCommon/blocktim.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2050429531" 
	@${RM} ${OBJECTDIR}/_ext/2050429531/blocktim.o.d 
	@${RM} ${OBJECTDIR}/_ext/2050429531/blocktim.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_DemoCommon/blocktim.c  -o ${OBJECTDIR}/_ext/2050429531/blocktim.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2050429531/blocktim.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/2050429531/blocktim.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2050429531/comtest.o: ../../FreeRTOS_DemoCommon/comtest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2050429531" 
	@${RM} ${OBJECTDIR}/_ext/2050429531/comtest.o.d 
	@${RM} ${OBJECTDIR}/_ext/2050429531/comtest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_DemoCommon/comtest.c  -o ${OBJECTDIR}/_ext/2050429531/comtest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2050429531/comtest.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/2050429531/comtest.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2050429531/crflash.o: ../../FreeRTOS_DemoCommon/crflash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2050429531" 
	@${RM} ${OBJECTDIR}/_ext/2050429531/crflash.o.d 
	@${RM} ${OBJECTDIR}/_ext/2050429531/crflash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_DemoCommon/crflash.c  -o ${OBJECTDIR}/_ext/2050429531/crflash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2050429531/crflash.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/2050429531/crflash.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2050429531/integer.o: ../../FreeRTOS_DemoCommon/integer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2050429531" 
	@${RM} ${OBJECTDIR}/_ext/2050429531/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2050429531/integer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_DemoCommon/integer.c  -o ${OBJECTDIR}/_ext/2050429531/integer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2050429531/integer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/2050429531/integer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../main.c  -o ${OBJECTDIR}/_ext/1472/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/809743516/ParTest.o: ../ParTest/ParTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/809743516" 
	@${RM} ${OBJECTDIR}/_ext/809743516/ParTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/809743516/ParTest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ParTest/ParTest.c  -o ${OBJECTDIR}/_ext/809743516/ParTest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/809743516/ParTest.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/809743516/ParTest.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/821501661/serial.o: ../serial/serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/821501661" 
	@${RM} ${OBJECTDIR}/_ext/821501661/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/821501661/serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../serial/serial.c  -o ${OBJECTDIR}/_ext/821501661/serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/821501661/serial.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/821501661/serial.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/timertest.o: ../timertest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/timertest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/timertest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../timertest.c  -o ${OBJECTDIR}/_ext/1472/timertest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/timertest.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/timertest.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/lcd.o: ../lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../lcd.c  -o ${OBJECTDIR}/_ext/1472/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/lcd.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lcd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1496908984/croutine.o: ../../FreeRTOS_Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1496908984" 
	@${RM} ${OBJECTDIR}/_ext/1496908984/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496908984/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_Source/croutine.c  -o ${OBJECTDIR}/_ext/1496908984/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1496908984/croutine.o.d"        -g -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1496908984/croutine.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1496908984/list.o: ../../FreeRTOS_Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1496908984" 
	@${RM} ${OBJECTDIR}/_ext/1496908984/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496908984/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_Source/list.c  -o ${OBJECTDIR}/_ext/1496908984/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1496908984/list.o.d"        -g -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1496908984/list.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1496908984/queue.o: ../../FreeRTOS_Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1496908984" 
	@${RM} ${OBJECTDIR}/_ext/1496908984/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496908984/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_Source/queue.c  -o ${OBJECTDIR}/_ext/1496908984/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1496908984/queue.o.d"        -g -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1496908984/queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1496908984/tasks.o: ../../FreeRTOS_Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1496908984" 
	@${RM} ${OBJECTDIR}/_ext/1496908984/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496908984/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_Source/tasks.c  -o ${OBJECTDIR}/_ext/1496908984/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1496908984/tasks.o.d"        -g -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1496908984/tasks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1820574858/port.o: ../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1820574858" 
	@${RM} ${OBJECTDIR}/_ext/1820574858/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1820574858/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/_ext/1820574858/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1820574858/port.o.d"        -g -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1820574858/port.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1830208299/heap_1.o: ../../FreeRTOS_Source/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1830208299" 
	@${RM} ${OBJECTDIR}/_ext/1830208299/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1830208299/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_Source/portable/MemMang/heap_1.c  -o ${OBJECTDIR}/_ext/1830208299/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1830208299/heap_1.o.d"        -g -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1830208299/heap_1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2050429531/BlockQ.o: ../../FreeRTOS_DemoCommon/BlockQ.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2050429531" 
	@${RM} ${OBJECTDIR}/_ext/2050429531/BlockQ.o.d 
	@${RM} ${OBJECTDIR}/_ext/2050429531/BlockQ.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_DemoCommon/BlockQ.c  -o ${OBJECTDIR}/_ext/2050429531/BlockQ.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2050429531/BlockQ.o.d"        -g -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/2050429531/BlockQ.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2050429531/blocktim.o: ../../FreeRTOS_DemoCommon/blocktim.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2050429531" 
	@${RM} ${OBJECTDIR}/_ext/2050429531/blocktim.o.d 
	@${RM} ${OBJECTDIR}/_ext/2050429531/blocktim.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_DemoCommon/blocktim.c  -o ${OBJECTDIR}/_ext/2050429531/blocktim.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2050429531/blocktim.o.d"        -g -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/2050429531/blocktim.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2050429531/comtest.o: ../../FreeRTOS_DemoCommon/comtest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2050429531" 
	@${RM} ${OBJECTDIR}/_ext/2050429531/comtest.o.d 
	@${RM} ${OBJECTDIR}/_ext/2050429531/comtest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_DemoCommon/comtest.c  -o ${OBJECTDIR}/_ext/2050429531/comtest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2050429531/comtest.o.d"        -g -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/2050429531/comtest.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2050429531/crflash.o: ../../FreeRTOS_DemoCommon/crflash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2050429531" 
	@${RM} ${OBJECTDIR}/_ext/2050429531/crflash.o.d 
	@${RM} ${OBJECTDIR}/_ext/2050429531/crflash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_DemoCommon/crflash.c  -o ${OBJECTDIR}/_ext/2050429531/crflash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2050429531/crflash.o.d"        -g -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/2050429531/crflash.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2050429531/integer.o: ../../FreeRTOS_DemoCommon/integer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2050429531" 
	@${RM} ${OBJECTDIR}/_ext/2050429531/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2050429531/integer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS_DemoCommon/integer.c  -o ${OBJECTDIR}/_ext/2050429531/integer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2050429531/integer.o.d"        -g -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/2050429531/integer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../main.c  -o ${OBJECTDIR}/_ext/1472/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d"        -g -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/809743516/ParTest.o: ../ParTest/ParTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/809743516" 
	@${RM} ${OBJECTDIR}/_ext/809743516/ParTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/809743516/ParTest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ParTest/ParTest.c  -o ${OBJECTDIR}/_ext/809743516/ParTest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/809743516/ParTest.o.d"        -g -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/809743516/ParTest.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/821501661/serial.o: ../serial/serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/821501661" 
	@${RM} ${OBJECTDIR}/_ext/821501661/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/821501661/serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../serial/serial.c  -o ${OBJECTDIR}/_ext/821501661/serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/821501661/serial.o.d"        -g -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/821501661/serial.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/timertest.o: ../timertest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/timertest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/timertest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../timertest.c  -o ${OBJECTDIR}/_ext/1472/timertest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/timertest.o.d"        -g -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/timertest.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/lcd.o: ../lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../lcd.c  -o ${OBJECTDIR}/_ext/1472/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/lcd.o.d"        -g -omf=elf -O2 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I"../../FreeRTOS_Source/include" -I"../../FreeRTOS_Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS_DemoCommon/include" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lcd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_dsPIC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_dsPIC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1  -omf=elf  -mreserve=data@0x800:0x822   -Wl,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PICKIT2=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_dsPIC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_dsPIC.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -Wl,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_dsPIC.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
