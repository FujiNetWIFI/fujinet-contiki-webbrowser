###################################################################
# Common across Platforms
###################################################################
ifeq ($(DEBUG),true)
    $(info >>>Starting common.mk)
endif

# Pull in FujiNet-Lib
-include ./makefiles/fujinet-lib.mk


#contiki
CFLAGS += -Oris -D AUTOSTART_ENABLE -W -unused-param

CFLAGS += -Osir

VERSION_FILE := src/version.txt
ifeq (,$(wildcard $(VERSION_FILE)))
	VERSION_FILE =
	ERSION_STRING =
else
	VERSION_STRING := $(file < $(VERSION_FILE))
endif


