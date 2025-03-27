@echo off
REM Set Gradle User Home environment variable
SET GRADLE_USER_HOME=C:\Users\Welsh Pawn\.gradle

REM Create the directory if it doesn't exist
if not exist "%GRADLE_USER_HOME%" mkdir "%GRADLE_USER_HOME%"

REM Echo confirmation
echo GRADLE_USER_HOME set to: %GRADLE_USER_HOME%
echo.
echo Please now open the project in Android Studio by:
echo 1. Start Android Studio
echo 2. Select "Open an Existing Project"
echo 3. Navigate to C:\Users\Welsh Pawn\Desktop\UberHelpMain
echo 4. Click "OK"
echo.
echo Press any key to continue...
pause > nul

REM Try to start Android Studio (path may need to be adjusted)
start "" "C:\Program Files\Android\Android Studio\bin\studio64.exe" 