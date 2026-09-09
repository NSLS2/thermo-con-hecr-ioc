# R
# 0040h Internal sensor temperature -9.90 to 80.00oC = FC22H to 1F40H 
# 0041h External sensor temperature -9.90 to 80.00oC = FC22H to 1F40H 
# 0042h Average temperature -9.90 to 80.00oC = FC22H to 1F40H 
# 0043h Status flag See chapter 5.10.1 
# 0044h Alarm flag 1 See chapter 5.10.2 
# 0045h Alarm flag 2 See chapter 5.10.2 
# 0046h Output ratio -100% to 100% = FF9CH to 0064H 

# R/W 
# 0050h Control operation See chapter 5.10.3 
# 0051h Target temperature 10 to 60.0oC = 03E8H to 1770H  *1) 
# 0052h Offset value -9.99 to 9.99oC = FC19H to 03E7H 
# 0053h PB range 0.30 to 9.90oC = 001EH to 03DEH  *1) 
# 0054h Reserved  
# 0055h I constant 1 to 999 sec = 0001H to 03E7H 
# 0056h D constant 0.00 to 99.90 sec = 0000H to 2706H  *1) 
# 0057h Heat output limit 0 to 100% = 0000H to 0064H 
# 0058h Cool output limit -100 to 0% = FF9CH to 0000H

# *1: Rounded off to the second decimal place. 

# Read-only registers
drvModbusAsynConfigure("$(PORT)_INTERNAL_TEMPERATURE", "$(PORT)", 1, 3, 64, 1, "INT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_EXTERNAL_TEMPERATURE", "$(PORT)", 1, 3, 65, 1, "INT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_AVERAGE_TEMPERATURE", "$(PORT)", 1, 3, 66, 1, "INT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_STATUS_FLAG", "$(PORT)", 1, 3, 67, 1, "UINT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_ALARM_FLAG_1", "$(PORT)", 1, 3, 68, 1, "UINT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_ALARM_FLAG_2", "$(PORT)", 1, 3, 69, 1, "UINT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_OUTPUT_RATIO", "$(PORT)", 1, 3, 70, 1, "INT16", 1000, "HECR")

# Read/write registers
drvModbusAsynConfigure("$(PORT)_CONTROL_OPERATION", "$(PORT)", 1, 6, 80, 1, "UINT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_CONTROL_OPERATION_RB", "$(PORT)", 1, 3, 80, 1, "UINT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_TARGET_TEMPERATURE", "$(PORT)", 1, 6, 81, 1, "UINT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_TARGET_TEMPERATURE_RB", "$(PORT)", 1, 3, 81, 1, "UINT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_OFFSET_VALUE", "$(PORT)", 1, 6, 82, 1, "INT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_OFFSET_VALUE_RB", "$(PORT)", 1, 3, 82, 1, "INT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_PB_RANGE", "$(PORT)", 1, 6, 83, 1, "UINT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_PB_RANGE_RB", "$(PORT)", 1, 3, 83, 1, "UINT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_I_CONSTANT", "$(PORT)", 1, 6, 85, 1, "UINT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_I_CONSTANT_RB", "$(PORT)", 1, 3, 85, 1, "UINT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_D_CONSTANT", "$(PORT)", 1, 6, 86, 1, "UINT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_D_CONSTANT_RB", "$(PORT)", 1, 3, 86, 1, "UINT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_HEAT_OUTPUT_LIMIT", "$(PORT)", 1, 6, 87, 1, "UINT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_HEAT_OUTPUT_LIMIT_RB", "$(PORT)", 1, 3, 87, 1, "UINT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_COOL_OUTPUT_LIMIT", "$(PORT)", 1, 6, 88, 1, "INT16", 1000, "HECR")
drvModbusAsynConfigure("$(PORT)_COOL_OUTPUT_LIMIT_RB", "$(PORT)", 1, 3, 88, 1, "INT16", 1000, "HECR")

# End of HECR modbus map