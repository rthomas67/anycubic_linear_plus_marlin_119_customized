# About
* This repo is just my own customizations for Marlin 1.1.9 for the Anycubic Linear Plus
printer.  There are a few other similar ones but they all seem to have some slight
difference like they're not set up for the "plus" size printer, or they're
using some other stepper driver.  So, my intent with this is to include only the
core tweaks and changes from stock Marlin 1.1.9 config files to set it up for
the stock Anycubic Linear Plus delta printer (circa early 2019).

* The maintainers of Marlin have rearranged several things, changed comment
formatting from multiple-eol comments to blocks, corrected spelling, changed wording,
etc, so it is a challenge to diff/compare the older Anycubic customized firmware
against a newer release of Marlin.  This might be a better starting point than
the Anycubic firmware source, if the goal is to get Marlin v1.1.9 running.

* For the complete set of changes from stock Marlin 1.1.9 in this repo
  * https://github.com/rthomas67/anycubic_linear_plus_marlin_119_customized/compare/593695..master
  
# Changes from Stock Marlin 1.1.9 - Configuration.h
* Added section for delta style printer settings
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L74
* Reduced BAUDRATE
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L166
* Changed default MOTHERBOARD to BOARD_RAMPS_13_EFB
  * Note: Used defined name from boards.h instead of numeric value.
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L174
* Changed CUSTOM_MACHINE_NAME to LinearPlus **(02)**
* Changed DEFAULT_NOMINAL_FILAMENT_DIA to 1.75
  * Not sure why Anycubic left this at 3.00 since the printer uses 1.75
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L1498
* Enabled TEMP_SENSOR_BED
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L297
* Disabled USE_XMIN_PLUG and USE_YMIN_PLUG
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L475
* Added comment about why USE_ZMIN_PLUG is enabled (bed leveling probe)
  * Anycubic didn't bother with this.
  * https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L477
* Enabled USE_XMAX_PLUG, USE_YMAX_PLUG, USE_ZMAX_PLUG
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L478
* Changed DEFAULT_AXIS_STEPS_PER_UNIT and DEFAULT_XYZ_STEPS_PER_UNIT to calculated values
  * **&dagger;&dagger;** No longer as simple as: https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L530
  * Note: If literal values are filled in, there is a Verify/SanityCheck error because DEFAULT_XYZ_STEPS_PER_UNIT is missing.
  * See: https://github.com/MarlinFirmware/Marlin/blob/1.1.x/Marlin/example_configurations/delta/Anycubic/Kossel/Configuration.h#L723
* Changed DEFAULT_MAX_FEEDRATE values
  * All speeds at 200 (not sure why Anycubic would set extruder axis like this)
  * See: http://marlinfw.org/docs/configuration/configuration.html#default-steps-per-mm-
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L537
* Changed DEFAULT_MAX_ACCELERATION values
  * All at 3000 (not sure why Anycubic would set extruder axis like this)
  * See: http://marlinfw.org/docs/configuration/configuration.html#default-steps-per-mm-
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L545
* Changed DEFAULT_TRAVEL_ACCELERATION to 1500
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L557
* Changed DEFAULT_XJERK, DEFAULT_YJERK, DEFAULT_ZJERK to match each other at 5.0
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L566
* Enabled FIX_MOUNTED_PROBE
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L591
* Changed [X,Y,Z]_PROBE_OFFSET_FROM_EXTRUDER values to 0,0,15.9 for the v2 probe
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L622
* Changed Z_PROBE_OFFSET_RANGE_MIN to -40
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L706
* Enabled Z_MIN_PROBE_REPEATABILITY_TEST
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L684
* Changed INVERT_Y_DIR to true
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L733
* Changed INVERT_E0_DIR to true
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L739
* Changed INVERT_E1_DIR to true
  * **(03)** This prepares for an additional extruder, assuming it would also be direct drive, not geared.
* Changed X_HOME_DIR, X_HOME_DIR, X_HOME_DIR from -1 to 1
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L752
* Changed X_BED_SIZE and Y_BED_SIZE to be calculated as DELTA_PRINTABLE_RADIUS * 2
  * (04) This is a new setting in Marlin 1.1.5 (so it wasn't in Anycubic's 1.1.3 customizations)
  * See: http://marlinfw.org/docs/configuration/configuration.html#homing-direction - "Movement Bounds" section
* Changed X_MIN_POS and Y_MIN_POS to be set to -(DELTA_PRINTABLE_RADIUS)
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L762
* Changed X_MAX_POS and Y_MAX_POS to be set to DELTA_PRINTABLE_RADIUS
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L765
* Changed Z_MAX_POS to match MANUAL_Z_HOME_POS
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L767
* Enabled AUTO_BED_LEVELING_BILINEAR
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L843
* Enabled G26_MESH_VALIDATION
  * This is a new setting in Marlin 1.1.7 (so it wasn't in Anycubic's 1.1.3 customizations)
  * See: http://marlinfw.org/docs/configuration/configuration.html#bed-leveling - "G26 Mesh Validation Pattern" section
  * This enables the G26 gcode to print a test pattern without a model, slicer, etc.
* Changed GRID_MAX_POINTS_X to 9
  * Note: This has been renamed in Marlin from ABL_GRID_MAX_POINTS
  * See: https://github.com/MarlinFirmware/Marlin/blob/1.1.x/Marlin/SanityCheck.h#L201
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L853
  * Note: Unless your print bed is really warped, 9 x 9 might be excessive.  7 x 7 might be enough.
* Added #define variable DELTA_PROBEABLE_RADIUS to use while setting value for ***_PROBE_BED_POSITION
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L863
* Changed [LEFT,RIGHT,FRONT,BACK]_PROBE_BED_POSITION values to values calculated from DELTA_PROBEABLE_RADIUS
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L864
* Enabled PROBE_PT_[1,2,3]_[X,Y] override values
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L899
* Enabled a Z_PROBE_END_SCRIPT that executes:
  * M500 - Save settings to EEPROM
    * See: http://marlinfw.org/docs/gcode/M500.html
  * G28 F4000 - Auto Home at rate: 4000
    * See: http://marlinfw.org/docs/gcode/G028.html
  * M84 - Disable Steppers
    * See: http://marlinfw.org/docs/gcode/M018.html
  * Note: This is not in the Anycubic version.  This idea came from:
    * https://github.com/featherfeet/anycubic-kossel-delta-linear-plus-marlin-firmware/blob/master/Configuration.h#L1096
* Enabled BED_CENTER_AT_0_0
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L918
* Enabled MANUAL_Z_HOME_POS and set value to DELTA_HEIGHT
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L924
  * Note: Anycubic version uses a literal value.  This uses DELTA_HEIGHT, defined in the "Delta Settings" block instead
* Disabled HOMING_FEEDRATE_XY and enabled HOMING_FEEDRATE_Z with a value of 60*60
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L942
  * See: http://marlinfw.org/docs/configuration/configuration.html#z-safe-homing
  * TODO: Find out why this value is expressed as #*#, and why Anycubic set it to 60*60 instead of 4*60
* Enabled EEPROM_SETTINGS
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L959
* Adjusted default PREHEAT_* settings
  * Note: This is from: https://github.com/featherfeet/anycubic-kossel-delta-linear-plus-marlin-firmware/blob/master/Configuration.h#L1237
  * Note: Anycubic did not change these values from their stock Marlin settings, even though though those settings probably exceed the hardware capabilities.
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L993
  * TODO: Review whether this should turn the fan on full right away.
* Enabled NOZZLE_PARK_FEATURE
  * This must be enabled to enable the ADVANCED_PAUSE_FEATURE
  * See: http://marlinfw.org/docs/configuration/configuration.html#nozzle-park
  * TODO: Review meaning of Z value == 20.  This may not be appropriate, or might be ignored for Delta printers.
* Enabled SDSUPPORT
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L1163
* Enabled REPRAP_DISCOUNT_SMART_CONTROLLER
  * **&dagger;&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L1307

# Reasons for Changes
* **&dagger;&dagger;** - Matches the same/similar change Anycubic made to an older version of Marlin
* **(02)** - Helps confirm that the customized firmware config was loaded.


# Changes from Stock Marlin 1.1.9 - Configuration_adv.h
* Changed THERMAL_PROTECTION_PERIOD to 10
  * **&ddagger;&ddagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration_adv.h#L77
* Changed THERMAL_PROTECTION_HYSTERESIS to 11
  * **&ddagger;&ddagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration_adv.h#L78
* Changed WATCH_TEMP_PERIOD to 9
  * **&ddagger;&ddagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration_adv.h#L89
* Enabled and configured ADVANCED_PAUSE_FEATURE
  * Note: Used example from: https://github.com/featherfeet/anycubic-kossel-delta-linear-plus-marlin-firmware/blob/master/Configuration_adv.h#L881
* Enabled and configured CUSTOM_USER_MENUS
  * Note Used example from: https://github.com/featherfeet/anycubic-kossel-delta-linear-plus-marlin-firmware/blob/master/Configuration_adv.h#L1417
* Enabled ACTION_ON_PAUSE
  * Example from: https://github.com/featherfeet/anycubic-kossel-delta-linear-plus-marlin-firmware/blob/master/Configuration_adv.h#L1453
* Enabled ACTION_ON_RESUME
  * Example from: https://github.com/featherfeet/anycubic-kossel-delta-linear-plus-marlin-firmware/blob/master/Configuration_adv.h#L1454
* Changed I2CPE_ENC_1_EC_METHOD to I2CPE_ECM_NONE
  * Example from: https://github.com/featherfeet/anycubic-kossel-delta-linear-plus-marlin-firmware/blob/master/Configuration_adv.h#L1489
  * TODO: Find out why this was set.  Is it related to the knob on the LCD panel?
* Changed I2CPE_ENC_2_EC_METHOD to I2CPE_ECM_NONE
  * Example from: https://github.com/featherfeet/anycubic-kossel-delta-linear-plus-marlin-firmware/blob/master/Configuration_adv.h#L1501
  * TODO: Find out why this was set.  The Anycubic Linear Plus has only one encoder knob.


# Backup and/or Flash Help
These instructions assume that the Arduino IDE compiles and exports a .hex version of the firmware on a workstation,
but it is more convenient to actually flash the firmware to the printer from a different machine like a Raspberry Pi (perhaps running Octoprint).

* To read/download/back-up the original firmware and/or eeprom contents from the Trigorilla ATMega2560 controller board, using a USB connected raspberry pi.
  * power off the printer
  * unplug the USB cable
  * switch the power jumper on the Trigorilla board from DC to USB
    * (Without doing this, avrdude may fail with a **"stk500v2_ReceiveMessage(): timeout"** error)
  * plug the USB cable back into the Trigorilla board
  * open a shell (ssh) to the Raspberry Pi
  * be sure nothing else like Octoprint is connected to the controller board (i.e. disable any auto-reconnect settings if necessary)
  * run command: **sudo avrdude -p m2560 -b 115200 -P /dev/ttyUSB0 -c wiring -D -U flash:r:anycubic_kossel_linear_plus_original_firmware.hex:i**
    * Note: This assumes the board was assigned to /dev/ttyUSB0, but double check that
  * run command: **sudo avrdude -p m2560 -b 115200 -P /dev/ttyUSB0 -c wiring -D -U eeprom:r:anycubic_kossel_linear_plus_original_eeprom.hex:i**
  * unplug the USB cable
  * switch the power jumper on the Trigorilla board back to DC
  * plugin the USB cable back in
  * power on the printer

* To write/upload/flash new firmware, follow the same instructions to temporarily switch to USB power on the Trigorilla board,
but instead of reading from memory...
  * run command: **sudo avrdude -p m2560 -b 115200 -P /dev/ttyUSB0 -c wiring -D -U flash:w:my_new_firmware.hex:i**
