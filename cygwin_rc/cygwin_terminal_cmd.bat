:: cygwin terminal cmd
@echo off

call %~dp0%_cygwin_rc_profile.bat

set ROOT_DIR_BIN_DIR=%ROOT_DIR%bin\

setlocal enableextensions
set TERM=
cd /d "%ROOT_DIR_BIN_DIR%" && .\bash --login -i
