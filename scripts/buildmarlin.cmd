@echo off

REM See: https://github.com/arduino/arduino-builder

set sourcedir=marlin_1.1.9_original\Marlin
set projectname=Marlin.ino

set arduinohome=c:\win32app\arduino-1.8.8
set builderexe=%arduinohome%\arduino-builder.exe

REM See: https://github.com/arduino/arduino-builder/issues/311

set toolsdir01=%arduinohome%\hardware\tools\avr
set toolsdir02=%arduinohome%\tools-builder
set toolsarg=-tools %toolsdir01% -tools %toolsdir02%
REM Do not include the main tools dir or the following error occurs
REM lto-wrapper.exe: fatal error: c:\win32app\arduino-1.8.8\hardware\tools\avr/bin/avr-gcc returned 1 exit status compilation terminated.
REM set toolsdir03=%arduinohome%\tools

set libdir=%arduinohome%\libraries

set hardwaredir=%arduinohome%\hardware

set outputdir=%cd%\arduino-compile-output

if not exist %outputdir% mkdir %outputdir%

set boardname=arduino:avr:mega:cpu=atmega2560

pushd %sourcedir%
%builderexe% %toolsarg% -hardware %hardwaredir% -libraries %libdir% -build-path %outputdir% -fqbn %boardname% -compile %projectname%
popd

