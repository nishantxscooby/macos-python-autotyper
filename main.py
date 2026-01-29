import time
import pyautogui
import threading
import sys

pyautogui.FAILSAFE = True

stop_flag = False

def main():
    global stop_flag

    print("Autotyper will start in 10 seconds... Switch to your target window!")
    for i in range(10, 0, -1):
        print(f"{i}...")
        time.sleep(1)

    print("Starting the auto-typer! (Press ESC or move mouse to a corner to stop)")
    with open("code.txt", "r") as file:
        data = file.readlines()

    for line in data:
        if stop_flag:
            break
        pyautogui.typewrite(line.strip())
        pyautogui.press("enter")
        time.sleep(0.5)

    print("✅ Typing complete or stopped safely.")

if __name__ == "__main__":
    main()