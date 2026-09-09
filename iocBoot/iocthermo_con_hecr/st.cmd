#!../../bin/linux-x86_64/thermo_con_hecr

#- You may have to change thermo_con_hecr to something else
#- everywhere it appears in this file

< envPaths
#< netsetup.cmd


## Generic EnvSet
epicsEnvSet("SYS","XF:31ID1-CT")
epicsEnvSet("DEV","{ENV}")
epicsEnvSet("IOC_PREFIX","$(SYS){IOC:ENV}")

## Register all support components
dbLoadDatabase("$(TOP)/dbd/thermo_con_hecr.dbd",0,0)
thermo_con_hecr_registerRecordDeviceDriver(pdbbase)


# Controller-specific variables
epicsEnvSet("PORT","tsrv1-p1")
epicsEnvSet("IP","192.168.127.254:4001")


drvAsynIPPortConfigure("$(PORT)", "$(IP)", 0, 0, 0)
asynOctetSetOutputEos("$(PORT)", 0, "\r\n")
asynOctetSetInputEos("$(PORT)", 0, "\r\n")
modbusInterposeConfig("$(PORT)", 2, 2000, 0)
< HECR_modbus.cmd

# ## Load record instances
dbLoadRecords("$(TOP)/db/thermo_con_hecr.db","Sys=$(SYS), Dev=$(DEV), ASYNPORT=$(PORT)")
dbLoadRecords("$(TOP)/db/asynRecord.db","P=$(SYS),R=$(DEV)Asyn,PORT=$(PORT),ADDR=0,IMAX=256,OMAX=256")

# ## autosave/restore machinery
# save_restoreSet_Debug(0)
# save_restoreSet_IncompleteSetsOk(1)
# save_restoreSet_DatedBackupFiles(1)

# set_savefile_path("${TOP}/as","/save")
# set_requestfile_path("${TOP}/as","/req")

# set_pass0_restoreFile("info_positions.sav")
# set_pass0_restoreFile("info_settings.sav")
# set_pass1_restoreFile("info_settings.sav")

# dbLoadRecords("$(EPICS_BASE)/db/save_restoreStatus.db","P=$(IOC_PREFIX)")
# dbLoadRecords("$(EPICS_BASE)/db/iocAdminSoft.db","IOC=$(IOC_PREFIX)")
# save_restoreSet_status_prefix("$(IOC_PREFIX)")

iocInit()

