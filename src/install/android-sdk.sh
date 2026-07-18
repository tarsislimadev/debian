#!/bin/bash

# Update package list and install dependencies
sudo apt update -y
sudo apt install -y wget unzip openjdk-11-jdk

# Set Android SDK installation directory
ANDROID_SDK_DIR="${HOME}/Android/Sdk"

# Create directory if it doesn't exist
mkdir -p "${ANDROID_SDK_DIR}"

# Download the latest command-line tools
cd "${ANDROID_SDK_DIR}"
wget https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip -O cmdline-tools.zip

# Extract tools
unzip cmdline-tools.zip
rm cmdline-tools.zip

# Move to proper location
mkdir -p cmdline-tools
mv cmdline-tools/* cmdline-tools/latest/

# Add environment variables to .bashrc
echo "export ANDROID_HOME=${ANDROID_SDK_DIR}" >> ~/.bashrc
echo "export PATH=\$PATH:\$ANDROID_HOME/cmdline-tools/latest/bin:\$ANDROID_HOME/platform-tools" >> ~/.bashrc

# Reload bashrc
source ~/.bashrc

# Accept licenses and install essential packages
yes | sdkmanager --licenses
sdkmanager "platform-tools" "platforms;android-34" "build-tools;34.0.0"

echo "✅ Android SDK installation complete!"
