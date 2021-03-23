:: command_cygwin_terminal.cmd
@echo off
call :find_dp0_n0
:start
echo --------start


set DEFAULT_CYGWIN_APP_PATH=S:\app\app_cygwin\_current\
set DEFAULT_CYGWIN_ICO=S:\app\app_cygwin\_current\Cygwin-Terminal.ico

set MINTTY_BIN=%DEFAULT_CYGWIN_APP_PATH%bin\mintty.exe
set MINTTY_ICO=%DEFAULT_CYGWIN_ICO%

start "" %MINTTY_BIN% -i %MINTTY_ICO% -


:end
echo --------end
exit /b
:find_dp0_n0
set dp0=%~dp0
set n0=%~n0
exit /b
