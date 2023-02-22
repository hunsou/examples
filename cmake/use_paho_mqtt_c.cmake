#--------------------------------------------------------------------
# PAHO_MQTT_C
#--------------------------------------------------------------------

if(NOT PAHO_MQTT_C_ROOT)

#https://github.com/eclipse/paho.mqtt.c
set(PAHO_MQTT_C_ROOT "${SDK_ROOT}/paho.mqtt.c-master")
add_subdirectory(${PAHO_MQTT_C_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/paho.mqtt.c )
#add_subdirectory(${PAHO_MQTT_C_ROOT} ${DEPENDENCIES_RUNTIME_ROOT}/paho.mqtt.c EXCLUDE_FROM_ALL)

endif()