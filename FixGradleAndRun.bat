@echo off
REM This script fixes common Gradle issues and sets up the proper environment variables

echo Setting up environment for Android Studio and Gradle...
echo.

REM Set critical environment variables
SET ANDROID_SDK_ROOT=C:\Users\Welsh Pawn\Desktop\AndroidSDK
SET ANDROID_HOME=C:\Users\Welsh Pawn\Desktop\AndroidSDK
SET GRADLE_USER_HOME=C:\Users\Welsh Pawn\.gradle

REM Create the .gradle directory if it doesn't exist
if not exist "%GRADLE_USER_HOME%" (
    echo Creating Gradle user home directory...
    mkdir "%GRADLE_USER_HOME%"
)

REM Create the gradle.properties file if it doesn't exist
if not exist "%GRADLE_USER_HOME%\gradle.properties" (
    echo Creating gradle.properties file...
    echo org.gradle.daemon=true > "%GRADLE_USER_HOME%\gradle.properties"
    echo org.gradle.parallel=true >> "%GRADLE_USER_HOME%\gradle.properties"
    echo org.gradle.configureondemand=true >> "%GRADLE_USER_HOME%\gradle.properties"
    echo org.gradle.jvmargs=-Xmx2048m -XX:MaxPermSize=512m -XX:+HeapDumpOnOutOfMemoryError -Dfile.encoding=UTF-8 >> "%GRADLE_USER_HOME%\gradle.properties"
    echo android.useAndroidX=true >> "%GRADLE_USER_HOME%\gradle.properties"
    echo android.enableJetifier=true >> "%GRADLE_USER_HOME%\gradle.properties"
)

REM Update the project's local.properties file
echo Updating local.properties file...
echo # This file should not be checked into source control > "local.properties"
echo # It contains local configurations like SDK path >> "local.properties"
echo. >> "local.properties"
echo # Path to the Android SDK >> "local.properties"
echo sdk.dir=%ANDROID_SDK_ROOT:\=\\% >> "local.properties"

REM Display the environment variables
echo.
echo Environment variables set:
echo ANDROID_SDK_ROOT = %ANDROID_SDK_ROOT%
echo ANDROID_HOME = %ANDROID_HOME%
echo GRADLE_USER_HOME = %GRADLE_USER_HOME%

REM Invalidate caches and restart Android Studio
echo.
echo Please do the following:
echo 1. Close Android Studio if it's open
echo 2. Delete the .idea folder in your project (if it exists)
echo 3. Start Android Studio and select "File" -^> "Invalidate Caches / Restart..."
echo 4. After restart, open this project again
echo.

echo You can now close this window and follow the instructions above, or press any key to start Android Studio.
pause > nul

REM Try to start Android Studio (path may need to be adjusted)
start "" "C:\Program Files\Android\Android Studio\bin\studio64.exe" 