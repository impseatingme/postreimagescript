@echo off

chcp 65001 >nul
cls

::====================================================================================
:: Section 0: Administrator Check
::====================================================================================
openfiles >nul 2>&1
if %errorlevel% neq 0 (
echo [X] ERROR: Administrative privileges are required.
echo Please right-click this script and select "Run as administrator".
echo.
pause
exit /b
)

title Device functionallity veriffication

echo.
echo Please check for Windows Updates and return to this window when done.
echo The script will continue in a few moments...
echo.

::====================================================================================
:: Section 2: Updates
::====================================================================================

echo.
echo ####################################
echo ## 2. Check updates & Driver Updates
echo ####################################
echo.

echo Starting powershell

powershell -ExecutionPolicy Bypass -encodedcommand dAByAHkAIAB7AA0ACgAgACAAIAAgAA0ACgAgACAAIAAgACQAdQBzAGUAcgBQAGEAdABoACAAPQAgAFsARQBuAHYAaQByAG8AbgBtAGUAbgB0AF0AOgA6AEcAZQB0AEYAbwBsAGQAZQByAFAAYQB0AGgAKAAnAFUAcwBlAHIAUAByAG8AZgBpAGwAZQAnACkAIAArACAAIgBcAGwAbwBnAHMAIgANAAoAIAAgACAAIABOAGUAdwAtAEkAdABlAG0AIAAtAEkAdABlAG0AVAB5AHAAZQAgAGQAaQByAGUAYwB0AG8AcgB5ACAALQBQAGEAdABoACAAJAB1AHMAZQByAFAAYQB0AGgADQAKACAAIAAgACAAIwAgAEUAbgBzAHUAcgBlACAAdABoAGUAIABmAG8AbABkAGUAcgAgAGUAeABpAHMAdABzACAAKABpAHQAIABzAGgAbwB1AGwAZAAgAGIAeQAgAGQAZQBmAGEAdQBsAHQAKQANAAoAIAAgACAAIABpAGYAIAAoAC0AbgBvAHQAIAAoAFQAZQBzAHQALQBQAGEAdABoACAAJAB1AHMAZQByAFAAYQB0AGgAKQApACAAewANAAoAIAAgACAAIAAgACAAIAAgAHQAaAByAG8AdwAgACIATABvAGMAYQB0AGkAbwBuACAAZgBvAGwAZABlAHIAIABuAG8AdAAgAGYAbwB1AG4AZAAgAGEAdAA6ACAAJAB1AHMAZQByAFAAYQB0AGgAIgANAAoAIAAgACAAIAB9AA0ACgANAAoAIAAgACAAIAAjACAAQwByAGUAYQB0AGUAIABhACAAbgBlAHcAIAB0AGUAeAB0ACAAZgBpAGwAZQAgAG4AYQBtAGUAZAAgAE0AeQBGAGkAbABlAC4AdAB4AHQADQAKACAAIAAgACAAJABmAGkAbABlAFAAYQB0AGgAIAA9ACAASgBvAGkAbgAtAFAAYQB0AGgAIAAkAHUAcwBlAHIAUABhAHQAaAAgACIAZABsAC4AbABvAGcAIgANAAoAIAAgACAAIABOAGUAdwAtAEkAdABlAG0AIAAtAFAAYQB0AGgAIAAkAGYAaQBsAGUAUABhAHQAaAAgAC0ASQB0AGUAbQBUAHkAcABlACAARgBpAGwAZQAgAC0ARgBvAHIAYwBlACAAfAAgAE8AdQB0AC0ATgB1AGwAbAANAAoAIAAgACAAIABXAHIAaQB0AGUALQBIAG8AcwB0ACAAIgBGAGkAbABlACAAYwByAGUAYQB0AGUAZAAgAHMAdQBjAGMAZQBzAHMAZgB1AGwAbAB5ACAAYQB0ADoAIAAkAGYAaQBsAGUAUABhAHQAaAAiAA0ACgAgACAAIAAgAA0ACgAgACAAIAAgAFcAcgBpAHQAZQAtAEgAbwBzAHQAIAAiAEkAbgBzAHQAYQBsAGwAaQBuAGcAIABOAHUARwBlAHQAIgAgAC0ARgBvAHIAZQBnAHIAbwB1AG4AZABDAG8AbABvAHIAIABCAGwAdQBlAA0ACgAgACAAIAAgAEkAbgBzAHQAYQBsAGwALQBQAGEAYwBrAGEAZwBlAFAAcgBvAHYAaQBkAGUAcgAgAC0ATgBhAG0AZQAgAE4AdQBHAGUAdAAgAC0ATQBpAG4AaQBtAHUAbQBWAGUAcgBzAGkAbwBuACAAMgAuADgALgA1AC4AMAAyADEAIAAtAEYAbwByAGMAZQANAAoAIAAgACAAIABXAHIAaQB0AGUALQBIAG8AcwB0ACAAIgBJAG4AcwB0AGEAbABsAGkAbgBnACAAUABzAFcAaQBuAGQAbwB3AHMAVQBwAGQAYQB0AGUAIgAgAC0ARgBvAHIAZQBnAHIAbwB1AG4AZABDAG8AbABvAHIAIABCAGwAdQBlAA0ACgAgACAAIAAgAEkAbgBzAHQAYQBsAGwALQBNAG8AZAB1AGwAZQAgAC0ATgBhAG0AZQAgAFAAUwBXAGkAbgBkAG8AdwBzAFUAcABkAGEAdABlACAALQBGAG8AcgBjAGUADQAKACAAIAAgACAAVwByAGkAdABlAC0ASABvAHMAdAAgACIASQBtAHAAbwByAHQAaQBuAGcAIABNAG8AZAB1AGwAZQAiACAALQBGAG8AcgBlAGcAcgBvAHUAbgBkAEMAbwBsAG8AcgAgAEIAbAB1AGUADQAKACAAIAAgACAASQBtAHAAbwByAHQALQBNAG8AZAB1AGwAZQAgAC0ATgBhAG0AZQAgAFAAUwBXAGkAbgBkAG8AdwBzAFUAcABkAGEAdABlACAALQBGAG8AcgBjAGUAIAAgACAAIAANAAoAIAAgACAAIAANAAoAIAAgACAAIABXAHIAaQB0AGUALQBIAG8AcwB0ACAAIgBBAGQAZAAgAHcAaQBuAGQAbwB3AHMAIABzAGUAcgB2AGkAYwBlACIAIAAtAEYAbwByAGUAZwByAG8AdQBuAGQAQwBvAGwAbwByACAAQgBsAHUAZQANAAoAIAAgACAAIABBAGQAZAAtAFcAVQBTAGUAcgB2AGkAYwBlAE0AYQBuAGEAZwBlAHIAIAAtAFMAZQByAHYAaQBjAGUASQBEACAAIgA3ADkANwAxAGYAOQAxADgALQBhADgANAA3AC0ANAA0ADMAMAAtADkAMgA3ADkALQA0AGEANQAyAGQAMQBlAGYAZQAxADgAZAAiACAALQBDAG8AbgBmAGkAcgBtADoAJABmAGEAbABzAGUADQAKACAAIAAgACAADQAKACAAIAAgACAAVwByAGkAdABlAC0ASABvAHMAdAAgACIARwBlAHQAIAB3AGkAbgBkAG8AdwBzACAAdQBwAGQAYQB0AGUAIgAgAC0ARgBvAHIAZQBnAHIAbwB1AG4AZABDAG8AbABvAHIAIABCAGwAdQBlAA0ACgAgACAAIAAgAEcAZQB0AC0AVwBpAG4AZABvAHcAcwBVAHAAZABhAHQAZQANAAoADQAKACAAIAAgACAAVwByAGkAdABlAC0ASABvAHMAdAAgACIASQBuAHMAdABhAGwAbAAgAHcAaQBuAGQAbwB3AHMAIAB1AHAAZABhAHQAZQAiACAALQBGAG8AcgBlAGcAcgBvAHUAbgBkAEMAbwBsAG8AcgAgAEIAbAB1AGUADQAKACAAIAAgACAASQBuAHMAdABhAGwAbAAtAFcAaQBuAGQAbwB3AHMAVQBwAGQAYQB0AGUAIAAtAEkAbgBzAHQAYQBsAGwAIAAtAEEAYwBjAGUAcAB0AEEAbABsACAADQAKACAAIAAgACAADQAKACAAIAAgACAAVwByAGkAdABlAC0ASABvAHMAdAAgACIASQBuAHMAdABhAGwAbAAgAGEAbABsACAAZAByAGkAdgBlAHIAIAB1AHAAZABhAHQAZQBzACIAIAAtAEYAbwByAGUAZwByAG8AdQBuAGQAQwBvAGwAbwByACAAQgBsAHUAZQANAAoAIAAgACAAIABJAG4AcwB0AGEAbABsAC0AVwBpAG4AZABvAHcAcwBVAHAAZABhAHQAZQAgAC0ASQBuAHMAdABhAGwAbAAgAC0AQQBjAGMAZQBwAHQAQQBsAGwAIAAtAFUAcABkAGEAdABlAFQAeQBwAGUAIABEAHIAaQB2AGUAcgAgAC0ATQBpAGMAcgBvAHMAbwBmAHQAVQBwAGQAYQB0AGUAIAAtAEYAbwByAGMAZQBEAG8AdwBuAGwAbwBhAGQAIAAtAEYAbwByAGMAZQBJAG4AcwB0AGEAbABsACAALQBJAGcAbgBvAHIAZQBSAGUAYgBvAG8AdAAgAC0ARQByAHIAbwByAEEAYwB0AGkAbwBuACAAUwBpAGwAZQBuAHQAbAB5AEMAbwBuAHQAaQBuAHUAZQAgAHwAIABPAHUAdAAtAEYAaQBsAGUAIAAkAGYAaQBsAGUAUABhAHQAaAAgAC0ARgBvAHIAYwBlAA0ACgAgACAAIAAgAEkAbgBzAHQAYQBsAGwALQBXAGkAbgBkAG8AdwBzAFUAcABkAGEAdABlACAALQBJAG4AcwB0AGEAbABsACAALQBBAGMAYwBlAHAAdABBAGwAbAAgAC0AVQBwAGQAYQB0AGUAVAB5AHAAZQAgAEQAcgBpAHYAZQByACAALQBNAGkAYwByAG8AcwBvAGYAdABVAHAAZABhAHQAZQAgAC0ARgBvAHIAYwBlAEQAbwB3AG4AbABvAGEAZAAgAC0ARgBvAHIAYwBlAEkAbgBzAHQAYQBsAGwAIAAtAEkAZwBuAG8AcgBlAFIAZQBiAG8AbwB0ACAALQBFAHIAcgBvAHIAQQBjAHQAaQBvAG4AIABTAGkAbABlAG4AdABsAHkAQwBvAG4AdABpAG4AdQBlACAAfAAgAE8AdQB0AC0ARgBpAGwAZQAgACQAZgBpAGwAZQBQAGEAdABoACAALQBGAG8AcgBjAGUADQAKACAAIAAgACAAVwByAGkAdABlAC0ASABvAHMAdAAgACIARABvAG4AZQAiACAALQBGAG8AcgBlAGcAcgBvAHUAbgBkAEMAbwBsAG8AcgAgAEIAbAB1AGUADQAKAH0ADQAKAGMAYQB0AGMAaAAgAHsADQAKACAAIAAgACAAVwByAGkAdABlAC0ASABvAHMAdAAgACIARQByAHIAbwByADoAIAAkACgAJABfAC4ARQB4AGMAZQBwAHQAaQBvAG4ALgBNAGUAcwBzAGEAZwBlACkAIgAgAC0ARgBvAHIAZQBnAHIAbwB1AG4AZABDAG8AbABvAHIAIABSAGUAZAANAAoAfQA=

echo Back to regular script

echo Is this a Dell or Lenovo device?

echo - Trying Dell device
:: Check 64-bit path first for the GUI executable
set "dcu_path=C:\Program Files\Dell\CommandUpdate\DellCommandUpdate.exe"
:: Check 32-bit path if 64-bit not found
if not exist "%dcu_path%" set "dcu_path=C:\Program Files (x86)\Dell\CommandUpdate\DellCommandUpdate.exe"

if exist "%dcu_path%" (
echo [+] Launching Dell Command Update GUI...
start "" "%dcu_path%"
echo.
echo Please check for updates in the application before proceeding.
) else (
echo [!] Dell Command Update GUI not found attempting Lenovo.
goto isLenovo
)

:isLenovo
echo - Lenovo device attempt.
echo - TODO OPEN VANTAGE
echo.
goto azureCheck

::====================================================================================
:: Section 3: Azure AD Domain Join
::====================================================================================
:azureCheck
echo.
echo.
echo ###############################################################
echo ## 3. Azure AD Join Status
echo ###############################################################
echo.

:checkAzureStatusLoop
echo - Checking Azure AD join status...

:: Simple check without for loop
set "azureStatus=NO"
dsregcmd /status | findstr /C:"AzureAdJoined" | findstr /C:"YES" >nul
if %errorlevel% equ 0 set "azureStatus=YES"

if /I "%azureStatus%"=="YES" (
echo [+] SUCCESS: Device is joined to Azure AD.
goto openWord
)

echo [!] NOTICE: Device is NOT joined to Azure AD.
echo.
echo - Attempting to join now...
dsregcmd /join
echo.
echo --- Waiting 30 seconds before checking the status again...
timeout /t 30 /nobreak >nul
echo.

goto checkAzureStatusLoop

goto openWord

::====================================================================================
:: Section 4: Open Microsoft Word
::================================S====================================
:openWord
echo.
echo.
echo ####################################
echo ## 4. Opening Microsoft Word
echo ####################################
echo.

echo - Attempting to open Microsoft Word...
start winword.exe

if %errorlevel% neq 0 (
echo [!] Could not launch Word automatically.
echo Please manually open Word to verify Office is installed.
) else (
echo [+] Word launched successfully.
)
echo.

:: Launch Settings to check updates
echo - Opening Windows Update settings...
start ms-settings:windowsupdate

::====================================================================================
:: Section 5: Final Steps
::====================================================================================
echo.
echo ####################################
echo ## Script Complete
echo ####################################
echo.
echo All tasks are finished.
echo.
echo Press any key to exit...
pause >nul
