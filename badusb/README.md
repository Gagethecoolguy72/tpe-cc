# BadUSB / Bad Keyboard Scripts

> **IMPORTANT LEGAL NOTICE:**
> These scripts are for **authorized security testing, CTF competitions, education, and research only.**
> Using these scripts on devices you do not own or without **explicit written authorization** is a federal crime under the Computer Fraud and Abuse Act (CFAA) and equivalent laws worldwide.
> Always obtain written permission before testing.

## How BadUSB Works

The Flipper Zero can emulate a USB HID (Human Interface Device) keyboard.
When plugged into a computer, it types commands at machine speed, bypassing most user-level security.

## Script Format (DuckyScript for Flipper)

```
REM This is a comment
DELAY 1000          REM Wait 1000ms
STRING hello world  REM Type this text
ENTER               REM Press Enter
GUI r               REM Windows + R (Run dialog)
CTRL ALT t          REM Ctrl+Alt+T (Linux terminal)
COMMAND SPACE       REM Cmd+Space (Mac Spotlight)
```

## Key Modifiers

| Key | Description |
|-----|-------------|
| GUI | Windows key / Cmd |
| ALT | Alt key |
| CTRL | Control key |
| SHIFT | Shift key |
| ENTER | Return/Enter |
| SPACE | Space bar |
| TAB | Tab key |
| ESCAPE | Escape key |
| DELETE | Delete key |
| BACKSPACE | Backspace |
| F1-F12 | Function keys |

## Flipper-Specific Settings

Add this at the top of your script for the best compatibility:
```
ID 046D:C31C Logitech USB Keyboard
```
This sets the USB VID/PID to appear as a Logitech keyboard.

## Compatible Firmware

- Official Flipper firmware: Full BadUSB support
- Unleashed: Full support + extra layouts
- RogueMaster: Full support
