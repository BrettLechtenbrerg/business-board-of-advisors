@echo off
REM ============================================================
REM   Business Board of Advisors - Windows Setup Script
REM   Get advice from top business minds!
REM ============================================================

title Business Board of Advisors - Setup

echo.
echo ╔══════════════════════════════════════════════════════════════╗
echo ║      🏛️  BUSINESS BOARD OF ADVISORS - SETUP  🏛️              ║
echo ║                                                              ║
echo ║   Get advice from: Hormozi, Cuban, Gary Vee,                 ║
echo ║   Walt Disney, Charlie Munger, and Socrates                  ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.

REM Get the directory where this script is located
set "SCRIPT_DIR=%~dp0"
cd /d "%SCRIPT_DIR%"

REM Step 1: Get user's name
echo Step 1 of 5: Personalization
echo ----------------------------
set /p USER_NAME="What's your first name? > "

if "%USER_NAME%"=="" set USER_NAME=Friend

echo.
echo Nice to meet you, %USER_NAME%! 👋
echo.

REM Step 2: Check for Python
echo Step 2 of 5: Checking Python Installation
echo ------------------------------------------
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Python is not installed or not in PATH!
    echo.
    echo Please install Python 3 from: https://python.org/downloads
    echo IMPORTANT: Check "Add Python to PATH" during installation!
    echo.
    pause
    exit /b 1
)
echo ✅ Python found!
echo.

REM Step 3: Get API Key
echo Step 3 of 5: API Key Configuration
echo -----------------------------------
echo You'll need an Anthropic API key to use the Board of Advisors.
echo.
echo 📌 Don't have one? Get it free at: https://console.anthropic.com
echo    (You'll get some free credits to start!)
echo.
set /p API_KEY="Paste your Anthropic API key (starts with sk-ant-): "

if "%API_KEY%"=="" (
    echo.
    echo ❌ No API key entered. Please run setup again when you have one.
    pause
    exit /b 1
)

REM Create .env file
echo.
echo Creating configuration file...
(
echo # Business Board of Advisors Configuration
echo # Created for: %USER_NAME%
echo # Date: %date% %time%
echo.
echo ANTHROPIC_API_KEY=%API_KEY%
) > "%SCRIPT_DIR%.env"

echo ✅ Configuration saved!
echo.

REM Step 4: Install dependencies
echo Step 4 of 5: Installing Dependencies
echo -------------------------------------
echo Installing required Python packages...
pip install anthropic python-dotenv >nul 2>&1
if %errorlevel% neq 0 (
    echo ⚠️  Warning: There may have been an issue installing packages.
    echo    Try running: pip install anthropic python-dotenv
) else (
    echo ✅ Dependencies installed!
)
echo.

REM Step 5: Create Desktop Shortcut with Custom Icon
echo Step 5 of 5: Creating Desktop Shortcut with Custom Icon
echo --------------------------------------------------------

set "DESKTOP=%USERPROFILE%\Desktop"
set "SHORTCUT_NAME=%USER_NAME%'s Advisory Board"
set "LAUNCHER_BAT=%SCRIPT_DIR%launcher.bat"
set "ICON_PATH=%SCRIPT_DIR%icon.ico"

REM Create the hidden launcher batch file in the install directory
(
echo @echo off
echo title %USER_NAME%'s Advisory Board
echo cd /d "%SCRIPT_DIR%"
echo python main.py
echo pause
) > "%LAUNCHER_BAT%"

REM Convert PNG to ICO using PowerShell (if icon.png exists)
if exist "%SCRIPT_DIR%icon.png" (
    echo Converting icon...
    powershell -ExecutionPolicy Bypass -Command ^
    "Add-Type -AssemblyName System.Drawing; ^
    $img = [System.Drawing.Image]::FromFile('%SCRIPT_DIR%icon.png'); ^
    $icon = [System.Drawing.Icon]::FromHandle($img.GetHicon()); ^
    $stream = [System.IO.File]::Create('%ICON_PATH%'); ^
    $icon.Save($stream); ^
    $stream.Close(); ^
    $img.Dispose()" >nul 2>&1
)

REM Create the desktop shortcut with icon using PowerShell
echo Creating desktop shortcut with custom icon...
powershell -ExecutionPolicy Bypass -Command ^
"$WshShell = New-Object -ComObject WScript.Shell; ^
$Shortcut = $WshShell.CreateShortcut('%DESKTOP%\%SHORTCUT_NAME%.lnk'); ^
$Shortcut.TargetPath = '%LAUNCHER_BAT%'; ^
$Shortcut.WorkingDirectory = '%SCRIPT_DIR%'; ^
$Shortcut.Description = '%USER_NAME%''s Business Board of Advisors'; ^
if (Test-Path '%ICON_PATH%') { $Shortcut.IconLocation = '%ICON_PATH%' }; ^
$Shortcut.Save()"

if %errorlevel% equ 0 (
    echo ✅ Desktop shortcut created with custom icon!
) else (
    echo ⚠️  Could not create shortcut with icon, creating basic shortcut...
    REM Fallback to basic .bat file
    (
    echo @echo off
    echo title %USER_NAME%'s Advisory Board
    echo cd /d "%SCRIPT_DIR%"
    echo python main.py
    echo pause
    ) > "%DESKTOP%\%SHORTCUT_NAME%.bat"
    echo ✅ Basic desktop shortcut created!
)
echo.

REM Setup complete
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                    ✅ SETUP COMPLETE!                        ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.
echo 🎉 Welcome to your Board of Advisors, %USER_NAME%!
echo.
echo Your advisors are ready:
echo   💪 Alex Hormozi   - Business Growth ^& Offers
echo   🦈 Mark Cuban     - Deals ^& Execution
echo   📱 Gary Vee       - Marketing ^& Brand
echo   ✨ Walt Disney    - Vision ^& Storytelling
echo   🧠 Charlie Munger - Mental Models
echo   🏛️  Socrates       - First Principles
echo.
echo 📍 To launch: Double-click "%SHORTCUT_NAME%" on your Desktop
echo    (Look for the globe icon with advisors!)
echo.
echo Or run from command prompt:
echo   cd "%SCRIPT_DIR%"
echo   python main.py
echo.
pause
