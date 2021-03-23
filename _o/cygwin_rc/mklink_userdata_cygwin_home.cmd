:: mklink userdata cygwin home
@ECHO off
CALL :find_dp0

:config
SET LINK_PREFIX=R:\runtime-app\cygwin\cygwin_x86_64\
SET TARGET_NAME=home
SET TARGET_PATH=U:\userdata_cygwin\%TARGET_NAME%\

:start
:: set and check
SET LINK_PATH=%LINK_PREFIX%%TARGET_NAME%\
:: SET TARGET_PATH=%dp0%%TARGET_NAME%\
IF EXIST %LINK_PATH% ( GOTO end )
IF NOT EXIST %TARGET_PATH% ( GOTO end )

:mklink_d
mklink /d %LINK_PATH% %TARGET_PATH%
GOTO end

:end
ECHO end

:find_dp0
SET dp0=%~dp0
EXIT /b
