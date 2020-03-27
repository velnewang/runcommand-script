:: mklink userdata vscode data
@ECHO off
CALL :find_dp0

:config
SET LINK_PREFIX=R:\runtime-app\vscode\_current\
SET TARGET_NAME=data

:start
:: set and check
SET LINK_PATH=%LINK_PREFIX%data\
SET TARGET_PATH=%dp0%%TARGET_NAME%\
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
