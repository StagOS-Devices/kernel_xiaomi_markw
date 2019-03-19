# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() {
kernel.string=FrancoKernel by franciscofranco & DarkAngelGR
do.devicecheck=1
do.modules=0
do.cleanup=1
do.cleanuponabort=1
device.name1=markw
device.name2=Redmi 4
device.name3=Redmi 4 Prime
device.name4=HM4Pro
device.name5=Redmi 4 Pro
} # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;

## end setup

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;

## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
chmod -R 750 $ramdisk/*;
chown -R root:root $ramdisk/*;

## AnyKernel install
# don't even think about flashing on non-Treble
is_treble=$(file_getprop /system/build.prop "ro.treble.enabled");
if [ ! "$is_treble" -o "$is_treble" == "false" ]; then
  ui_print " ";
  ui_print "FrancoKernel is only compatible with Treble roms such as LineageOS!";
  exit 1;
fi;

dump_boot;

# begin ramdisk changes

# end ramdisk changes

write_boot;

## end install
