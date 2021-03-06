NAME := linkkit_gateway

$(NAME)_MBINS_TYPE := app
$(NAME)_VERSION := 1.0.2
$(NAME)_SUMMARY := linkkit gateway examples

$(NAME)_SOURCES := app_entry.c 

$(NAME)_COMPONENTS := netmgr cjson und
$(NAME)_COMPONENTS += libiot_devmodel libiot_awss

GLOBAL_CFLAGS += -DMQTT_DIRECT

# LINKKIT_GATEWAY_CONFIG_DEPRECATED ?= n

# LINKKIT_GATEWAY_CONFIG_PRINT_HEAP ?= n

$(NAME)_SOURCES += linkkit_example_gateway.c

ifeq ($(LINKKIT_GATEWAY_CONFIG_PRINT_HEAP),y)
$(NAME)_DEFINES += CONFIG_PRINT_HEAP
endif


ifneq ($(HOST_MCU_FAMILY),mcu_esp8266)
$(NAME)_COMPONENTS  += cli
GLOBAL_DEFINES += CLI_CONFIG_STACK_SIZE=3072
else
GLOBAL_DEFINES += ESP8266_CHIPSET
endif

$(NAME)_INCLUDES += ./
