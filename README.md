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
* Reduced BAUDRATE *(01)*
* Changed default MOTHERBOARD to BOARD_RAMPS_13_EFB//33 *(01)*


# Common Reasons for Changes
* *(01)* - Matches a similar change Anycubic made to an older version of Marlin
  * See: https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration.h
  * See: https://github.com/ANYCUBIC-3D/ANYCUBIC_Kossel_Source_Code/blob/master/ANYCUBIC_Kossel_Plus_Beta2/Configuration_adv.h
  