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
  * https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L74
* Reduced BAUDRATE **(01)**
  * https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L166
* Changed default MOTHERBOARD to BOARD_RAMPS_13_EFB **(01)**
  * Note: Used defined name from boards.h instead of numeric value.
  * https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L174
* Changed CUSTOM_MACHINE_NAME to LinearPlus **(02)**
* Changed DEFAULT_NOMINAL_FILAMENT_DIA to 1.75 **(01)**
  * Not sure why Anycubic left this at 3.00 since the printer uses 1.75
  * https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L1498
* Enabled TEMP_SENSOR_BED **(01)**
  * https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L297
* Disabled USE_XMIN_PLUG and USE_YMIN_PLUG **(01)**
  * https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L475
* Added comment about why USE_ZMIN_PLUG is enabled (bed leveling probe)
  * Anycubic didn't bother with this.
  * https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L477
* Enabled USE_XMAX_PLUG, USE_YMAX_PLUG, USE_ZMAX_PLUG **(01)**
  * https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L478
* Changed DEFAULT_AXIS_STEPS_PER_UNIT values **(01)**
  * Z-Axis value changed to match other axes at 80
  * Extruder-Axis value changed to 96
  * https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h#L530


# Reasons for Changes
* **(01)** - Matches a similar change Anycubic made to an older version of Marlin
  * See: https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h
  * See: https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration_adv.h
* **(02)** - Helps confirm that the customized firmware config was loaded.
  