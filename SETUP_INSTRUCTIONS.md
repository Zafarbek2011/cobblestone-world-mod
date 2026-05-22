# Cobblestone World Mod - Setup Instructions

If `setup.bat` fails to download, follow these manual steps:

## Quick Setup (Recommended)

### Option 1: Automatic Setup (If you have Java installed)

Run this in Command Prompt:
```bash
gradlew.bat build
```

Gradle will automatically handle the wrapper initialization.

---

## Manual Setup (If automatic fails)

### Step 1: Download Gradle Wrapper JAR manually

1. Download from: https://gradle.org/release-checksums/
2. Or use direct link: https://services.gradle.org/distributions/gradle-8.8-all.zip

### Step 2: Create the directory structure

Create this folder if it doesn't exist:
```
gradle/wrapper/
```

### Step 3: Extract and place gradle-wrapper.jar

- Extract the downloaded zip file
- Find `gradle-wrapper.jar` inside
- Place it in the `gradle/wrapper/` folder

### Step 4: Build

```bash
gradlew.bat build
```

---

## Alternative: Use System Gradle

If you have Gradle installed globally:
```bash
gradle build
```

---

## Troubleshooting

**Problem:** "Could not find or load main class"
- Solution: Make sure `gradle/wrapper/gradle-wrapper.jar` exists and is in the correct folder

**Problem:** Build still fails
- Try deleting the `.gradle` folder and running again:
  ```bash
  rmdir /s .gradle
  gradlew.bat build
  ```

**Problem:** Network errors
- Check your internet connection
- Try using a VPN if GitHub is blocked
- Use the manual download method
