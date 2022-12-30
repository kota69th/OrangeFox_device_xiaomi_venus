#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2021-2022 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#

FOX_MANIFEST_ROOT=$(gettop)
if [ -f $FOX_MANIFEST_ROOT/bootable/recovery/orangefox_defaults.go -a -f $FOX_MANIFEST_ROOT/bootable/recovery/orangefox.mk ]; then
	#export PLATFORM_VERSION="11.0"
	if [ -z "$TW_DEFAULT_LANGUAGE" ]; then
		unset TW_DEFAULT_LANGUAGE
		export TW_DEFAULT_LANGUAGE="en"
	fi
	
	export FOX_VARIANT="A12"
	export OF_MAINTAINER="kota69th"
	export OF_USE_GREEN_LED=0
	export OF_FLASHLIGHT_ENABLE=0
        export FOX_ENABLE_APP_MANAGER=0
        export OF_IGNORE_LOGICAL_MOUNT_ERRORS=1
 	export ALLOW_MISSING_DEPENDENCIES=true
	export OF_AB_DEVICE=1
	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
	export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
        #export OF_QUICK_BACKUP_LIST="/boot;/data;"
        export FOX_DELETE_AROMAFM=1

	# screen settings
	export OF_SCREEN_H=2400
	export OF_STATUS_H=75
        export OF_STATUS_INDENT_LEFT=160
        export OF_STATUS_INDENT_RIGHT=48
  	export OF_HIDE_NOTCH=1
	export OF_CLOCK_POS=0

	# maximum permissible splash image size (in kilobytes)
	#export OF_SPLASH_MAX_SIZE=2048

	# ensure that /sdcard is bind-unmounted before f2fs data repair or format
	export OF_UNBIND_SDCARD_F2FS=1

	# no special MIUI stuff
        export OF_VANILLA_BUILD=1
	export OF_NO_MIUI_PATCH_WARNING=1

	# let's see what are our build VARs
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
  	   export | grep "FOX" >> $FOX_BUILD_LOG_FILE
  	   export | grep "OF_" >> $FOX_BUILD_LOG_FILE
   	   export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "TW_" >> $FOX_BUILD_LOG_FILE
 	fi
fi
#
