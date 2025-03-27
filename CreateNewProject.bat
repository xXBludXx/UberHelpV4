@echo off
REM This script creates a completely new Android project structure

echo Starting fresh project creation...
echo.

REM Create a new directory for the fresh project
SET NEW_PROJECT_DIR=C:\Users\Welsh Pawn\Desktop\UberHelpV8Fresh
echo Creating new project directory at %NEW_PROJECT_DIR%...

if exist "%NEW_PROJECT_DIR%" (
    echo Directory already exists. Removing old content...
    rmdir /S /Q "%NEW_PROJECT_DIR%"
)

mkdir "%NEW_PROJECT_DIR%"
cd "%NEW_PROJECT_DIR%"

REM Create basic project structure
echo Creating basic project structure...
mkdir app
mkdir app\src
mkdir app\src\main
mkdir app\src\main\java
mkdir app\src\main\java\com
mkdir app\src\main\java\com\uberhelp
mkdir app\src\main\res
mkdir app\src\main\res\layout
mkdir app\src\main\res\values
mkdir gradle
mkdir gradle\wrapper

REM Create basic project files
echo Creating basic project files...

REM Create settings.gradle
echo include ':app' > settings.gradle
echo rootProject.name = "UberHelpV8" >> settings.gradle

REM Create top-level build.gradle
echo // Top-level build file where you can add configuration options common to all sub-projects/modules. > build.gradle
echo buildscript { >> build.gradle
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

REM Create app/build.gradle
echo apply plugin: 'com.android.application' > app\build.gradle
echo. >> app\build.gradle
echo android { >> app\build.gradle
echo     compileSdkVersion 33 >> app\build.gradle
echo     defaultConfig { >> app\build.gradle
echo         applicationId "com.uberhelp" >> app\build.gradle
echo         minSdkVersion 26 >> app\build.gradle
echo         targetSdkVersion 33 >> app\build.gradle
echo         versionCode 1 >> app\build.gradle
echo         versionName "1.0" >> app\build.gradle
echo     } >> app\build.gradle
echo     buildTypes { >> app\build.gradle
echo         release { >> app\build.gradle
echo             minifyEnabled false >> app\build.gradle
echo             proguardFiles getDefaultProguardFile('proguard-android-optimize.txt'), 'proguard-rules.pro' >> app\build.gradle
echo         } >> app\build.gradle
echo     } >> app\build.gradle
echo     compileOptions { >> app\build.gradle
echo         sourceCompatibility JavaVersion.VERSION_1_8 >> app\build.gradle
echo         targetCompatibility JavaVersion.VERSION_1_8 >> app\build.gradle
echo     } >> app\build.gradle
echo } >> app\build.gradle
echo. >> app\build.gradle
echo dependencies { >> app\build.gradle
echo     implementation 'androidx.appcompat:appcompat:1.6.1' >> app\build.gradle
echo     implementation 'com.google.android.material:material:1.9.0' >> app\build.gradle
echo     implementation 'androidx.constraintlayout:constraintlayout:2.1.4' >> app\build.gradle
echo } >> app\build.gradle

REM Create AndroidManifest.xml
echo ^<?xml version="1.0" encoding="utf-8"?^> > app\src\main\AndroidManifest.xml
echo ^<manifest xmlns:android="http://schemas.android.com/apk/res/android" >> app\src\main\AndroidManifest.xml
echo     package="com.uberhelp"^> >> app\src\main\AndroidManifest.xml
echo. >> app\src\main\AndroidManifest.xml
echo     ^<application >> app\src\main\AndroidManifest.xml
echo         android:allowBackup="true" >> app\src\main\AndroidManifest.xml
echo         android:icon="@mipmap/ic_launcher" >> app\src\main\AndroidManifest.xml
echo         android:label="UberHelpV8" >> app\src\main\AndroidManifest.xml
echo         android:supportsRtl="true" >> app\src\main\AndroidManifest.xml
echo         android:theme="@style/Theme.AppCompat"^> >> app\src\main\AndroidManifest.xml
echo         ^<activity android:name=".MainActivity" android:exported="true"^> >> app\src\main\AndroidManifest.xml
echo             ^<intent-filter^> >> app\src\main\AndroidManifest.xml
echo                 ^<action android:name="android.intent.action.MAIN" /^> >> app\src\main\AndroidManifest.xml
echo                 ^<category android:name="android.intent.category.LAUNCHER" /^> >> app\src\main\AndroidManifest.xml
echo             ^</intent-filter^> >> app\src\main\AndroidManifest.xml
echo         ^</activity^> >> app\src\main\AndroidManifest.xml
echo     ^</application^> >> app\src\main\AndroidManifest.xml
echo. >> app\src\main\AndroidManifest.xml
echo ^</manifest^> >> app\src\main\AndroidManifest.xml

REM Create a simple MainActivity.java
echo package com.uberhelp; > app\src\main\java\com\uberhelp\MainActivity.java
echo. >> app\src\main\java\com\uberhelp\MainActivity.java
echo import android.os.Bundle; >> app\src\main\java\com\uberhelp\MainActivity.java
echo import androidx.appcompat.app.AppCompatActivity; >> app\src\main\java\com\uberhelp\MainActivity.java
echo. >> app\src\main\java\com\uberhelp\MainActivity.java
echo public class MainActivity extends AppCompatActivity { >> app\src\main\java\com\uberhelp\MainActivity.java
echo     @Override >> app\src\main\java\com\uberhelp\MainActivity.java
echo     protected void onCreate(Bundle savedInstanceState) { >> app\src\main\java\com\uberhelp\MainActivity.java
echo         super.onCreate(savedInstanceState); >> app\src\main\java\com\uberhelp\MainActivity.java
echo         setContentView(R.layout.activity_main); >> app\src\main\java\com\uberhelp\MainActivity.java
echo     } >> app\src\main\java\com\uberhelp\MainActivity.java
echo } >> app\src\main\java\com\uberhelp\MainActivity.java

REM Create a simple activity_main.xml
echo ^<?xml version="1.0" encoding="utf-8"?^> > app\src\main\res\layout\activity_main.xml
echo ^<androidx.constraintlayout.widget.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android" >> app\src\main\res\layout\activity_main.xml
echo     xmlns:app="http://schemas.android.com/apk/res-auto" >> app\src\main\res\layout\activity_main.xml
echo     xmlns:tools="http://schemas.android.com/tools" >> app\src\main\res\layout\activity_main.xml
echo     android:layout_width="match_parent" >> app\src\main\res\layout\activity_main.xml
echo     android:layout_height="match_parent" >> app\src\main\res\layout\activity_main.xml
echo     tools:context=".MainActivity"^> >> app\src\main\res\layout\activity_main.xml
echo. >> app\src\main\res\layout\activity_main.xml
echo     ^<TextView >> app\src\main\res\layout\activity_main.xml
echo         android:layout_width="wrap_content" >> app\src\main\res\layout\activity_main.xml
echo         android:layout_height="wrap_content" >> app\src\main\res\layout\activity_main.xml
echo         android:text="UberHelpV8 App" >> app\src\main\res\layout\activity_main.xml
echo         app:layout_constraintBottom_toBottomOf="parent" >> app\src\main\res\layout\activity_main.xml
echo         app:layout_constraintLeft_toLeftOf="parent" >> app\src\main\res\layout\activity_main.xml
echo         app:layout_constraintRight_toRightOf="parent" >> app\src\main\res\layout\activity_main.xml
echo         app:layout_constraintTop_toTopOf="parent" /^> >> app\src\main\res\layout\activity_main.xml
echo. >> app\src\main\res\layout\activity_main.xml
echo ^</androidx.constraintlayout.widget.ConstraintLayout^> >> app\src\main\res\layout\activity_main.xml

REM Create a simple strings.xml
echo ^<?xml version="1.0" encoding="utf-8"?^> > app\src\main\res\values\strings.xml
echo ^<resources^> >> app\src\main\res\values\strings.xml
echo     ^<string name="app_name"^>UberHelpV8^</string^> >> app\src\main\res\values\strings.xml
echo ^</resources^> >> app\src\main\res\values\strings.xml

REM Create gradle wrapper files
echo Creating gradle wrapper files...
echo distributionBase=GRADLE_USER_HOME > gradle\wrapper\gradle-wrapper.properties
echo distributionPath=wrapper/dists >> gradle\wrapper\gradle-wrapper.properties
echo distributionUrl=https\://services.gradle.org/distributions/gradle-7.5-bin.zip >> gradle\wrapper\gradle-wrapper.properties
echo zipStoreBase=GRADLE_USER_HOME >> gradle\wrapper\gradle-wrapper.properties
echo zipStorePath=wrapper/dists >> gradle\wrapper\gradle-wrapper.properties

REM Download gradle-wrapper.jar
echo Downloading gradle-wrapper.jar...
powershell -Command "& {[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/gradle/gradle/v7.5.0/gradle/wrapper/gradle-wrapper.jar' -OutFile 'gradle\wrapper\gradle-wrapper.jar'}"

REM Create local.properties with the SDK path
echo Creating local.properties...
echo sdk.dir=C:\\Users\\Welsh Pawn\\Desktop\\AndroidSDK > local.properties

REM Create a README.md file
echo # UberHelpV8 > README.md
echo. >> README.md
echo An Android application designed to help Uber drivers maximize their earnings through automated trip offer evaluation and acceptance. >> README.md

echo.
echo New project structure created successfully at %NEW_PROJECT_DIR%
echo.
echo Please open this new project in Android Studio.
echo.
echo Press any key to continue...
pause > nul

REM Open the project directory in File Explorer
start "" "%NEW_PROJECT_DIR%" 