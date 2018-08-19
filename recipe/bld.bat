"%R%" -e "devtools::build()"
"%R%" -e "devtools::install()"
IF %ERRORLEVEL% NEQ 0 exit 1
