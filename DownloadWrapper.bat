@echo off
REM This script directly downloads the Gradle wrapper files

echo Downloading Gradle wrapper files...
echo.

REM Create the gradle/wrapper directory if it doesn't exist
if not exist "gradle\wrapper" mkdir "gradle\wrapper"

REM Download the gradle-wrapper.jar file
echo Downloading gradle-wrapper.jar...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/gradle/gradle/v7.5.0/gradle/wrapper/gradle-wrapper.jar', 'gradle\wrapper\gradle-wrapper.jar')"

REM Create the gradle-wrapper.properties file
echo Creating gradle-wrapper.properties file...
echo distributionBase=GRADLE_USER_HOME > "gradle\wrapper\gradle-wrapper.properties"
echo distributionPath=wrapper/dists >> "gradle\wrapper\gradle-wrapper.properties"
echo distributionUrl=https\://services.gradle.org/distributions/gradle-7.5-bin.zip >> "gradle\wrapper\gradle-wrapper.properties"
echo zipStoreBase=GRADLE_USER_HOME >> "gradle\wrapper\gradle-wrapper.properties"
echo zipStorePath=wrapper/dists >> "gradle\wrapper\gradle-wrapper.properties"

REM Download gradlew.bat
echo Downloading gradlew.bat...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/gradle/gradle/v7.5.0/gradlew.bat', 'gradlew.bat')"

REM Download gradlew
echo Downloading gradlew...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/gradle/gradle/v7.5.0/gradlew', 'gradlew')"

echo.
echo Gradle wrapper files have been downloaded.
echo Please restart Android Studio and try syncing the project again.
echo.
pause 