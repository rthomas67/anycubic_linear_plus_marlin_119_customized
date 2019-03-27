#!/bin/sh

cyg2win() {
   winpath=`echo ${1} | sed 's/\/cygdrive\/c\//c:\\\/' | sed 's/\/cygdrive\/d\//d:\\\/' | sed 's/\//\\\/g'`
   echo "$winpath"
}

sourcedir=marlin_1.1.9_original/Marlin
projectname=Marlin.ino

arduinohome=/cygdrive/c/win32app/arduino-1.8.8
winarduinohome="$(cyg2win $arduinohome)"
builderexe="${arduinohome}/arduino-builder.exe"

toolsdir01="${arduinohome}/hardware/tools/avr"
wtoolsdir01="$(cyg2win $toolsdir01)"
toolsdir02="${arduinohome}/tools-builder"
wtoolsdir02="$(cyg2win $toolsdir02)"
wtoolsarg="-tools $wtoolsdir01 -tools $wtoolsdir02"

hardwaredir="${arduinohome}/hardware"
whardwaredir="$(cyg2win $hardwaredir)"

libdir="${arduinohome}/libraries"
wlibdir="$(cyg2win $libdir)"

cwd=$(pwd)
wcwd="$(cyg2win $cwd)"

outputdir="${cwd}/arduino-compile-output"
woutputdir="$(cyg2win $outputdir)"

if [ ! -d $outputdir ]; then
    mkdir -p $outputdir
fi

boardname=arduino:avr:mega:cpu=atmega2560

pushd $sourcedir
$builderexe $wtoolsarg -hardware $whardwaredir -libraries $wlibdir -build-path $woutputdir -fqbn $boardname -compile $projectname
popd

