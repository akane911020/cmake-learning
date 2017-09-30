@echo off

rem Setup directory path
set BUILD_DIR=%~dp0
set PROJECT_DIR=%BUILD_DIR%project\
set SRC_DIR=%BUILD_DIR%..\src\

rem Create project directory if not exists
if not exist "%PROJECT_DIR%" (
    mkdir %PROJECT_DIR%
)

rem Create VS solution
pushd %PROJECT_DIR%
cmake %SRC_DIR%
popd
