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

# Changes from Stock Marlin 1.1.9
The changes from stock are as follows:
* Added section for delta style printer settings
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L74
* Reduced BAUDRATE
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L166
* Changed default MOTHERBOARD to BOARD_RAMPS_13_EFB
  * Note: Used defined name from boards.h instead of numeric value.
  * **(&dagger;)** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L174
* Changed CUSTOM_MACHINE_NAME to LinearPlus **(02)**
* Changed DEFAULT_NOMINAL_FILAMENT_DIA to 1.75
  * Not sure why Anycubic left this at 3.00 since the printer uses 1.75
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L1498
* Enabled TEMP_SENSOR_BED
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L297
* Disabled USE_XMIN_PLUG and USE_YMIN_PLUG
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L475
* Added comment about why USE_ZMIN_PLUG is enabled (bed leveling probe)
  * Anycubic didn't bother with this.
  * https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L477
* Enabled USE_XMAX_PLUG, USE_YMAX_PLUG, USE_ZMAX_PLUG
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L478
* Changed DEFAULT_AXIS_STEPS_PER_UNIT values
  * Z-Axis value changed to match other axes at 80
  * Extruder-Axis value changed to 96
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L530
* Changed DEFAULT_MAX_FEEDRATE values
  * All speeds at 200 (not sure why Anycubic would set extruder axis like this)
  * See: http://marlinfw.org/docs/configuration/configuration.html#default-steps-per-mm-
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L537
* Changed DEFAULT_MAX_ACCELERATION values
  * All at 3000 (not sure why Anycubic would set extruder axis like this)
  * See: http://marlinfw.org/docs/configuration/configuration.html#default-steps-per-mm-
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L545
* Changed DEFAULT_TRAVEL_ACCELERATION to 1500
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L557
* Changed DEFAULT_XJERK, DEFAULT_YJERK, DEFAULT_ZJERK to match each other at 5.0
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L566
* Enabled FIX_MOUNTED_PROBE
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L591
* Changed [X,Y,Z]_PROBE_OFFSET_FROM_EXTRUDER values to 0,0,15.9 for the v2 probe
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L622
* Changed Z_PROBE_OFFSET_RANGE_MIN to -40
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L706
* Enabled Z_MIN_PROBE_REPEATABILITY_TEST
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L684
* Changed INVERT_Y_DIR to true
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L733
* Changed INVERT_E0_DIR to true
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L739
* Changed INVERT_E1_DIR to true
  * **(03)** This prepares for an additional extruder, assuming it would also be direct drive, not geared.
* Changed X_HOME_DIR, X_HOME_DIR, X_HOME_DIR from -1 to 1
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L752
* Changed X_BED_SIZE and Y_BED_SIZE to be calculated as DELTA_PRINTABLE_RADIUS * 2
  * (04) This is a new setting in Marlin 1.1.5 (so it wasn't in Anycubic's 1.1.3 customizations)
  * See: http://marlinfw.org/docs/configuration/configuration.html#homing-direction - "Movement Bounds" section
* Changed X_MIN_POS and Y_MIN_POS to be set to -(DELTA_PRINTABLE_RADIUS)
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L762
* Changed X_MAX_POS and Y_MAX_POS to be set to DELTA_PRINTABLE_RADIUS
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L765
* Changed Z_MAX_POS to match MANUAL_Z_HOME_POS
  * **&dagger;** https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L767
* 
  * **&dagger;** 
* 
  * **&dagger;** 
* 
  * **&dagger;** 
* 
  * **&dagger;** 
  
# Reasons for Changes
* **&dagger;** - Matches the same/similar change Anycubic made to an older version of Marlin
  * See: https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h
  * See: https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration_adv.h
* **(02)** - Helps confirm that the customized firmware config was loaded.
