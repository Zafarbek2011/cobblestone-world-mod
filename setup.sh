#!/bin/bash

# Cobblestone World Mod - Setup Script
# This script initializes the gradle wrapper

echo "Initializing Gradle Wrapper..."

# Create gradle wrapper directory if it doesn't exist
mkdir -p gradle/wrapper

# Download gradle wrapper jar from gradle distribution
echo "Downloading Gradle Wrapper JAR..."
cd gradle/wrapper

# Download using curl or wget
if command -v curl &> /dev/null; then
    curl -o gradle-wrapper.jar https://github.com/gradle/gradle/releases/download/v8.8/gradle-8.8-wrapper.jar
elif command -v wget &> /dev/null; then
    wget -O gradle-wrapper.jar https://github.com/gradle/gradle/releases/download/v8.8/gradle-8.8-wrapper.jar
else
    echo "Please install curl or wget to download gradle wrapper"
    exit 1
fi

cd ../..
echo "Setup complete! Now run: gradlew.bat build"
