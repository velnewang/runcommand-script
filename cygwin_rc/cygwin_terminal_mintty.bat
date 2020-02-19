:: cygwin terminal mintty
@echo off

call %~dp0%_cygwin_rc_profile.bat

set MINTTY_BIN=%ROOT_DIR%bin\mintty.exe
set CYGWIN_ICO=%SRC_DIR%cygwin-terminal.ico

start %MINTTY_BIN% -i %CYGWIN_ICO% -
