TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = thermo_con_hecr
# thermo_con_hecr.dbd will be created and installed
DBD += thermo_con_hecr.dbd

# thermo_con_hecr.dbd will be made up from these files:
thermo_con_hecr_DBD += base.dbd
thermo_con_hecr_DBD += asyn.dbd
thermo_con_hecr_DBD += drvAsynIPPort.dbd
thermo_con_hecr_DBD += modbusSupport.dbd
thermo_con_hecr_DBD += devIocStats.dbd

# Include dbd files from all support applications:
#thermo_con_hecr_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#thermo_con_hecr_LIBS += xxx
thermo_con_hecr_LIBS += asyn
thermo_con_hecr_LIBS += modbus
thermo_con_hecr_LIBS += devIocStats

# thermo_con_hecr_registerRecordDeviceDriver.cpp derives from thermo_con_hecr.dbd
thermo_con_hecr_SRCS += thermo_con_hecr_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
thermo_con_hecr_SRCS_DEFAULT += thermo_con_hecrMain.cpp
thermo_con_hecr_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#thermo_con_hecr_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
thermo_con_hecr_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

