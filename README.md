# ⌨️ AutoTyper for macOS (Python)

A lightweight, safety-focused Python auto-typing tool for macOS.  
It reads text from a file and automatically types it into any active application after a short delay.

Built with macOS constraints, user control, and clean setup in mind.

---

## ✨ Features

- ⏱️ 10-second countdown to switch to the target window
- 📝 Reads text line-by-line from `code.txt`
- ⌨️ Types into any currently focused application
- 🛑 Fail-safe emergency stop (move mouse to any screen corner)
- 🍎 macOS-friendly setup using a Python virtual environment
- 🧼 Minimal and beginner-friendly codebase

---

## 📁 Project Structure

```
Auto Typer/
├── main.py            # Main auto-typer script
├── code.txt           # Text / code to be auto-typed
├── requirements.txt   # Python dependencies
├── setup.command      # One-click macOS setup script
├── venv/              # Virtual environment (auto-created, not committed)
```

---

## ⚙️ Setup Instructions (macOS)

### 1️⃣ One-Click Setup

Make the setup script executable (only once):

```bash
chmod +x setup.command
```

Run the setup:

```bash
./setup.command
```

This script will:
- Create a Python virtual environment
- Install all required dependencies
- Prepare the project for execution

---

### 2️⃣ macOS Accessibility Permissions (Required)

macOS blocks keyboard and mouse automation by default.

Go to:

```
System Settings → Privacy & Security → Accessibility
```

Enable access for:
- Terminal (or VS Code / iTerm, depending on usage)

Restart the application after enabling permissions.

---

## ▶️ Running the AutoTyper

Run using the virtual environment:

```bash
./venv/bin/python main.py
```

During the 10-second countdown:
1. Switch to the target window
2. Place the cursor where typing should begin
3. Do not touch mouse or keyboard unless stopping

---

## 🛑 Safety & Fail-Safe Mechanism

Emergency Stop:
- Move the mouse to any corner of the screen

PyAutoGUI will immediately stop execution.

⚠️ The fail-safe is intentionally enabled and must not be disabled.

---

## 📝 Notes

- Ensure the correct window is focused before typing starts
- Avoid touching the mouse during auto-typing
- `code.txt` can contain text or source code

---

## 🧠 Technical Details

- Language: Python 3
- Library: pyautogui
- Platform: macOS
- Environment: Python virtual environment (venv)

---

## 🚀 Possible Enhancements

- Adjustable typing speed
- Pause / resume support
- GUI-based launcher
- macOS .app packaging

---

## ⚠️ Disclaimer

This tool is intended for educational and productivity purposes only.  
The user is responsible for its usage.

---

Author: Nishant  
Platform: macOS 🍎
