#!/bin/sh

if ! grep -q sdcardfs /proc/filesystems >/dev/null 2>&1; then
	if [ "$KSU_MAGIC_MOUNT" = "true" ] || [ "$APATCH_BIND_MOUNT" = "true" ] || { [ -f /data/adb/magisk/magisk ] && [ -z "$KSU" ] && [ -z "$APATCH" ]; }; then
	ui_print '[!] This module is not compatible to magic mount managers!'
  	abort "Tip: Enable OverlayFS in Managers settings"
	fi
fi
