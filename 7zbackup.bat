@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
FOR /F "skip=1 tokens=1-6" %%A IN ('WMIC ^Path Win32_LocalTime Get Day^,Hour^,Minute^,Month^,Second^,Year /Format:table') DO (
    IF %%A GTR 0 (
	SET Day=%%A
	SET Hour=%%B
	SET Min=%%C
	SET Month=%%D
	SET Sec=%%E
	SET Year=%%F
    )
)

if %Month% LSS 10 set Month=0%Month%
if %Day% LSS 10 set Day=0%Day%
if %Hour% LSS 10 set Hour=0%Hour%
if %Min% LSS 10 set Min=0%Min%
if %Sec% LSS 10 set Sec=0%Sec%

set now=%year%-%month%-%day%_%hour%-%min%-%sec%
set now=%now%

rem for %%* in (.) do @echo %%~n*
rem set projectname=test999

for %%* in (.) do set projectname=%%~n*
set output="../%projectname%_%now%.7z"
echo FILENAME = %output%

"C:\Program Files\7-Zip\7z.exe" a %output% *
echo ERRORCODE %errorlevel%
IF %errorlevel% NEQ 0 (7z.exe a %output% *)
IF %errorlevel% NEQ 0 PAUSE