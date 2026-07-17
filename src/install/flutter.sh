#!/bin/bash

# Update system packages
sudo apt update -y
sudo apt upgrade -y

# Install required dependencies
sudo apt install -y curl git unzip xz-utils zip libglu1-mesa

# Download the latest stable Flutter SDK
echo "Downloading Flutter SDK..."
curl -O https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.24.5-stable.tar.xz

# Extract Flutter SDK
echo "Extracting Flutter SDK..."
tar xf flutter_linux_3.24.5-stable.tar.xz

# Move Flutter to /opt directory
sudo mv flutter /opt/flutter

# Add Flutter to PATH
echo "Configuring PATH..."
if ! grep -q 'export PATH="$PATH:/opt/flutter/bin"' ~/.bashrc; then
  echo 'export PATH="$PATH:/opt/flutter/bin"' >> ~/.bashrc
fi

# Apply PATH changes
source ~/.bashrc

# Verify installation
echo "Verifying Flutter installation..."
flutter doctor
flutter --version

echo "Flutter installation completed successfully!"
