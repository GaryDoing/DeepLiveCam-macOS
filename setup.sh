#!/bin/bash

echo "Installing prerequisites via Homebrew..."
brew install python@3.10 ffmpeg git
brew reinstall python-tk@3.10

echo "Cloning Deep-Live-Cam..."
git clone https://github.com/hacksider/Deep-Live-Cam.git
cd Deep-Live-Cam

echo "Setting up Python virtual environment..."
python3.10 -m venv venv
source venv/bin/activate

echo "Installing Python dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo "✅ Setup complete. Please download model files and place them into Deep-Live-Cam/models/"
