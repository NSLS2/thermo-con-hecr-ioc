TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = thermo-con-HECR
# thermo-con-HECR.dbd will be created and installed
DBD += thermo-con-HECR.dbd

# thermo-con-HECR.dbd will be made up from these files:
thermo-con-HECR_DBD += base.dbd
thermo-con-HECR_DBD += asyn.dbd
thermo-con-HECR_DBD += drvAsynIPPort.dbd
thermo-con-HECR_DBD += modbusSupport.dbd
thermo-con-HECR_DBD += devIocStats.dbd

# Include dbd files from all support applications:
#thermo-con-HECR_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#thermo-con-HECR_LIBS += xxx
thermo-con-HECR_LIBS += asyn
thermo-con-HECR_LIBS += modbus
thermo-con-HECR_LIBS += devIocStats

# thermo-con-HECR_registerRecordDeviceDriver.cpp derives from thermo-con-HECR.dbd
thermo-con-HECR_SRCS += thermo-con-HECR_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
thermo-con-HECR_SRCS_DEFAULT += thermo-con-HECRMain.cpp
thermo-con-HECR_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#thermo-con-HECR_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
thermo-con-HECR_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

