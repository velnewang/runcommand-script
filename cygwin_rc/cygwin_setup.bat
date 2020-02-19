:: cygwin setup
@echo off

call %~dp0%_cygwin_rc_profile.bat

set SETUP_ARGS=--no-version-check -a %SETUP_ARCH% -BdnN -Os %MIRROR_URL% -l %REPO_DIR% -R %ROOT_DIR%

start %SETUP_BIN%  %SETUP_ARGS%

@echo on

:: --no-version-check
:: -a %SETUP_ARCH%  --arch %SETUP_ARCH%
:: -BdnN            --no-admin --no-desktop --no-shortcuts --no-startmenu
:: -Os %SITE_URL%   --only-site --site %SITE_URL%
:: -l %REPO_DIR%    --local-package-dir %REPO_DIR%
:: -R %ROOT_DIR%    --root %ROOT_DIR%
