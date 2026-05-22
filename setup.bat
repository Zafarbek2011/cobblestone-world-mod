@echo off

echo Initializing Gradle Wrapper...

REM Create gradle wrapper directory if it doesn't exist
if not exist "gradle\wrapper" mkdir gradle\wrapper

echo Downloading Gradle Wrapper JAR...

REM Download using PowerShell (built-in on Windows 7+)
powershell -Command "& {(New-Object Net.WebClient).DownloadFile('https://github.com/gradle/gradle/releases/download/v8.8/gradle-8.8-wrapper.jar', 'gradle/wrapper/gradle-wrapper.jar')}"

if exist "gradle\wrapper\gradle-wrapper.jar" (
    echo Setup complete! Now run: gradlew.bat build
) else (
    echo Failed to download gradle wrapper. Please try again or install manually.
    exit /b 1
)
