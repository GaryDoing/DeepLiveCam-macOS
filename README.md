# DeepLiveCam for macOS

This repository helps macOS users install and run [Deep-Live-Cam](https://github.com/hacksider/Deep-Live-Cam) with proper Python versioning, model setup, and system configuration.

## ✅ Requirements

- macOS (Intel or Apple Silicon)
- Python 3.10 (must be installed via Homebrew)
- ffmpeg
- Homebrew
- Git
- Models (download manually as per instructions)

## 🛠 Setup Instructions

### 1. Install Prerequisites

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install python@3.10 ffmpeg git
brew reinstall python-tk@3.10
```

### 2. Clone and Setup Deep-Live-Cam

```bash
git clone https://github.com/hacksider/Deep-Live-Cam.git
cd Deep-Live-Cam
python3.10 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
```

### 3. Download Model Files

Place the following files inside a new `models/` directory:

- `GFPGANv1.4.pth`
- `inswapper_128_fp16.onnx`

You can find them here:
- https://huggingface.co/henryruhs/Deep-Live-Cam-Models

### 4. Run the App

```bash
python3.10 run.py
```

### Optional: Enable CoreML on M1/M2 for Faster Inference

```bash
pip uninstall onnxruntime -y
pip install onnxruntime-silicon==1.13.1
python3.10 run.py --execution-provider coreml
```

## 📂 Project Structure

- `README.md` – Setup instructions for macOS
- `setup.sh` – One-click environment setup script
- `.gitignore` – Ignore virtualenv and models
- `.env.example` – (If needed for future .env configs)

---

For advanced usage, see [Deep-Live-Cam Wiki](https://github.com/hacksider/Deep-Live-Cam/wiki).
