:: cygwin run commands profile
@echo off

SET APP_DIR=.\temp\runtime-app\cygwin\
SET SETUP_ARCH=x86_64
SET SETUP_VERSION=2.900
SET REPO_DIR=.\temp\static-repo\cygwin_repo\
SET MIRROR_URL=https://mirrors.163.com/cygwin/

SET SETUP_DIR=%APP_DIR%cygwin_setup\
SET SRC_DIR=%APP_DIR%cygwin_src\
SET SETUP_BIN=%SETUP_DIR%cygwin_%SETUP_VERSION%\setup-%SETUP_ARCH%.exe
SET ROOT_DIR=%APP_DIR%cygwin_%SETUP_ARCH%\
