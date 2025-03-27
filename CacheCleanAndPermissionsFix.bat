@echo off
REM This script fixes permissions and cleans Android Studio caches

echo Starting deep clean and permissions fix...
echo.

REM Set permissions for gradle wrapper files
echo Setting correct permissions for Gradle wrapper files...
attrib -R "gradle\wrapper\gradle-wrapper.properties"
attrib -R "gradle\wrapper\gradle-wrapper.jar"
attrib -R "gradlew.bat"
attrib -R "gradlew"

REM Delete and recreate the wrapper folder
echo Recreating wrapper directory with proper permissions...
if exist "gradle\wrapper" (
    del /F /S /Q "gradle\wrapper\*.*"
    rmdir /S /Q "gradle\wrapper"
)
mkdir "gradle\wrapper"

REM Create fresh wrapper files with correct permissions
echo Creating fresh wrapper files...
echo distributionBase=GRADLE_USER_HOME > "gradle\wrapper\gradle-wrapper.properties"
echo distributionPath=wrapper/dists >> "gradle\wrapper\gradle-wrapper.properties"
echo distributionUrl=https\://services.gradle.org/distributions/gradle-8.0-bin.zip >> "gradle\wrapper\gradle-wrapper.properties"
echo zipStoreBase=GRADLE_USER_HOME >> "gradle\wrapper\gradle-wrapper.properties"
echo zipStorePath=wrapper/dists >> "gradle\wrapper\gradle-wrapper.properties"

REM Download the jar file explicitly with -OutFile parameter
echo Downloading gradle-wrapper.jar with explicit parameters...
powershell -Command "& {[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/gradle/gradle/v8.0.0/gradle/wrapper/gradle-wrapper.jar' -OutFile 'gradle\wrapper\gradle-wrapper.jar'}"

REM Create a simple test build.gradle file
echo Creating a minimal build.gradle file...
echo buildscript { > build.gradle
echo     repositories { >> build.gradle
echo         google() >> build.gradle
echo         mavenCentral() >> build.gradle
echo     } >> build.gradle
echo     dependencies { >> build.gradle
echo         classpath 'com.android.tools.build:gradle:7.4.2' >> build.gradle
echo     } >> build.gradle
echo } >> build.gradle
echo. >> build.gradle
echo allprojects { >> build.gradle
echo     repositories { >> build.gradle
echo         google() >> build.gradle
echo         mavenCentral() >> build.gradle
echo     } >> build.gradle
echo } >> build.gradle

REM Create a simple settings.gradle file
echo Creating a minimal settings.gradle file...
echo include ':app' > settings.gradle
echo rootProject.name = "UberHelpV8" >> settings.gradle

REM Clean Android Studio caches
echo Cleaning Android Studio caches...
if exist "%USERPROFILE%\.gradle\caches" rmdir /S /Q "%USERPROFILE%\.gradle\caches"
if exist "%USERPROFILE%\.android\cache" rmdir /S /Q "%USERPROFILE%\.android\cache"
if exist "%USERPROFILE%\.AndroidStudio*\system\caches" rmdir /S /Q "%USERPROFILE%\.AndroidStudio*\system\caches"
if exist "%USERPROFILE%\.AndroidStudio*\config\port" del /F /Q "%USERPROFILE%\.AndroidStudio*\config\port"

REM Create a fresh .gradle directory in the user's home if it doesn't exist
if not exist "%USERPROFILE%\.gradle" mkdir "%USERPROFILE%\.gradle"

REM Create a fresh gradle.properties in user home
echo Creating fresh gradle.properties in user home...
echo org.gradle.daemon=true > "%USERPROFILE%\.gradle\gradle.properties"
echo org.gradle.parallel=true >> "%USERPROFILE%\.gradle\gradle.properties"
echo org.gradle.configureondemand=true >> "%USERPROFILE%\.gradle\gradle.properties"
echo org.gradle.jvmargs=-Xmx2048m -XX:MaxPermSize=512m -XX:+HeapDumpOnOutOfMemoryError -Dfile.encoding=UTF-8 >> "%USERPROFILE%\.gradle\gradle.properties"
echo android.useAndroidX=true >> "%USERPROFILE%\.gradle\gradle.properties"
echo android.enableJetifier=true >> "%USERPROFILE%\.gradle\gradle.properties"

echo.
echo Deep clean and permissions fix completed.
echo.
echo Please follow these steps:
echo 1. Close Android Studio completely
echo 2. Create a new EMPTY Android project to verify Android Studio is working
echo 3. Only after that succeeds, try opening this project again
echo.
echo Press any key to continue...
pause > nul 