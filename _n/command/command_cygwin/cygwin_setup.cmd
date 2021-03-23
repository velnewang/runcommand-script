:: command_cygwin_setup.cmd
@echo off
call :find_dp0_n0
:start
echo --------start


set DEFAULT_CYGWIN_SETUP_APP_PATH=S:\app\app_cygwin_setup\_current\
set DEFAULT_CYGWIN_ARCH=x86_64
set DEFAULT_CYGWIN_CACHE_DIR=S:\cache\cache_cygwin\
set DEFAULT_CYGWIN_MIRROR_URL=http://mirrors.163.com/cygwin/
set DEFAULT_CYGWIN_ROOT_DIR=S:\app\app_cygwin\_default_%DEFAULT_CYGWIN_ARCH%_ln_home\

:: CYGWIN_SETUP_APP_PATH
set CYGWIN_SETUP_APP_PATH=%DEFAULT_CYGWIN_SETUP_APP_PATH%
:: @@@@ CYGWIN_ARCH : x86 x86_64
set CYGWIN_ARCH=%DEFAULT_CYGWIN_ARCH%
:: CYGWIN_SETUP_APP_NAME : setup-x86.exe setup-x86_64.exe setup-%CYGWIN_ARCH%.exe
set CYGWIN_SETUP_APP_NAME=setup-%CYGWIN_ARCH%.exe
:: @@@@ CYGWIN_SETUP_APP
set CYGWIN_SETUP_APP=%CYGWIN_SETUP_APP_PATH%%CYGWIN_SETUP_APP_NAME%
:: @@@@ CYGWIN_CACHE_DIR
set CYGWIN_CACHE_DIR=%DEFAULT_CYGWIN_CACHE_DIR%
:: @@@@ CYGWIN_MIRROR_URL
set CYGWIN_MIRROR_URL=%DEFAULT_CYGWIN_MIRROR_URL%
:: @@@@ CYGWIN_ROOT_DIR
set CYGWIN_ROOT_DIR=%DEFAULT_CYGWIN_ROOT_DIR%
:: @CYGWIN_ARCH
:: @CYGWIN_MIRROR_URL
:: @CYGWIN_CACHE_DIR
:: @CYGWIN_ROOT_DIR
:: @@@@CYGWIN_SETUP_ARGS
set CYGWIN_SETUP_ARGS=--no-version-check -a %CYGWIN_ARCH% -BdnN -Os %CYGWIN_MIRROR_URL% -l %CYGWIN_CACHE_DIR% -R %CYGWIN_ROOT_DIR%

start %CYGWIN_SETUP_APP% %CYGWIN_SETUP_ARGS%
::if "%1%"=="--run" (
::    start %CYGWIN_SETUP_APP% %CYGWIN_SETUP_ARGS%
::)

:: --no-version-check
:: -a %CYGWIN_ARCH%          --arch %CYGWIN_ARCH%
:: -BdnN                     --no-admin --no-desktop --no-shortcuts --no-startmenu
:: -Os %CYGWIN_MIRROR_URL%   --only-site --site %CYGWIN_MIRROR_URL%
:: -l %CYGWIN_CACHE_DIR%     --local-package-dir %CYGWIN_CACHE_DIR%
:: -R %CYGWIN_ROOT_DIR%      --root %CYGWIN_ROOT_DIR%


:end
echo --------end
exit /b
:find_dp0_n0
set dp0=%~dp0
set n0=%~n0
exit /b
