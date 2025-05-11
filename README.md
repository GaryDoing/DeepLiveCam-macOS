# DeepLiveCam for macOS

> A simplified guide to install and run [Deep-Live-Cam](https://github.com/hacksider/Deep-Live-Cam) on macOS  
> With proper Python versioning, model setup, and optional CoreML acceleration

---

## ✅ Requirements

- macOS (Intel or Apple Silicon)
- Python **3.10** (installed via Homebrew)
- `ffmpeg` (for video processing)
- Homebrew (macOS package manager)
- Git
- Deep-Live-Cam model files:
  - `GFPGANv1.4.pth`
  - `inswapper_128_fp16.onnx`

---

## 🛠️ Setup Instructions

### 1️⃣ Install Prerequisites

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install python@3.10 ffmpeg git
brew reinstall python-tk@3.10
```

---

### 2️⃣ Clone and Set Up Deep-Live-Cam

```bash
git clone https://github.com/hacksider/Deep-Live-Cam.git
cd Deep-Live-Cam

# Set up virtual environment
python3.10 -m venv venv
source venv/bin/activate

# Upgrade pip and install dependencies
pip install --upgrade pip
pip install -r requirements.txt
```

---

### 3️⃣ Download Model Files

Create a folder named `models` in the root directory and place the following inside:

- `GFPGANv1.4.pth`
- `inswapper_128_fp16.onnx`

📦 Models can be downloaded from:
- 👉 https://huggingface.co/henryruhs/Deep-Live-Cam-Models

---

### 4️⃣ Run the App

```bash
python3.10 run.py
```

---

### ⚡ Optional: Enable CoreML Acceleration (for M1/M2 Macs)

```bash
pip uninstall onnxruntime -y
pip install onnxruntime-silicon==1.13.1
python3.10 run.py --execution-provider coreml
```

---

## 📁 Project Structure

```
DeepLiveCam-macOS/
├── .env.example         # (optional) environment file template
├── .gitignore           # ignores models and virtualenv
├── README.md            # this guide
├── setup.sh             # optional setup script
└── Deep-Live-Cam/       # cloned original repo
```

---

## 📚 Resources

- [🔗 Deep-Live-Cam (original repo)](https://github.com/hacksider/Deep-Live-Cam)
- [📘 Model Files on Hugging Face](https://huggingface.co/henryruhs/Deep-Live-Cam-Models)
- [🧠 Deep-Live-Cam Wiki (Advanced Usage)](https://github.com/hacksider/Deep-Live-Cam/wiki)

---

## 🧠 Notes

- Use **Python 3.10 only**, as newer versions (3.11+) may break compatibility
- On first run, the tool may download additional models (~300MB)
- Use **OBS** to capture the live preview window for video calls or streams
