cmake -G "NMake Makefiles" -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% %SRC_DIR%
if errorlevel 1 exit 1

nmake
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1

mv %LIBRARY_PREFIX%\share ..\%LIBRARY_PREFIX%