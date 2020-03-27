:: mklink_userdata_vscode_data.cmd
:: mklink userdata vscode data
@echo off
call :find_dp0

:start 
echo --------start
:: goto end

:config
set LINK_PREFIX=R:\runtime-app\vscode\_current\
set TARGET_PATH=U:\userdata_vscode\data\

:init_args
set LINK_PATH=%LINK_PREFIX%data\
if exist %LINK_PATH% ( goto end )
if not exist %TARGET_PATH% ( goto end )

:run
mklink /d %LINK_PATH% %TARGET_PATH%
goto end

:end
echo --------end
exit /b

:find_dp0
set dp0=%~dp0
exit /b
