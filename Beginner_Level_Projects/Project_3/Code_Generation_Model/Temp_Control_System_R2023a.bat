
set MATLAB=C:\Program Files\MATLAB\R2023b

cd .

if "%1"=="" ("C:\PROGRA~1\MATLAB\R2023b\bin\win64\gmake"  -f Temp_Control_System_R2023a.mk all) else ("C:\PROGRA~1\MATLAB\R2023b\bin\win64\gmake"  -f Temp_Control_System_R2023a.mk %1)
@if errorlevel 1 goto error_exit

exit /B 0

:error_exit
echo The make command returned an error of %errorlevel%
exit /B 1