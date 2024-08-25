# common.mk
# 

$(info >>>>Starting common.mk)


-include ./makefiles/fujinet-lib.mk

# For Contiki Web Browser - 2024
LDFLAGS += -Wl -D,__HIMEM__=0xBF00
CFLAGS += -Oris -D AUTOSTART_ENABLE -W -unused-param

CFLAGS += -Osir

VERSION_FILE := src/version.txt
ifeq (,$(wildcard $(VERSION_FILE)))
	VERSION_FILE =
	ERSION_STRING =
else
	VERSION_STRING := $(file < $(VERSION_FILE))
endif


