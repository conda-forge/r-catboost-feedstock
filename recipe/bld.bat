"%R%" CMD INSTALL --install-tests --build .
IF %ERRORLEVEL% NEQ 0 exit 1
