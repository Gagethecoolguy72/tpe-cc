# Flipper Zero Custom Content Pack

> **Legal Notice:** For authorized security testing, education, and personal use only. Use of BadUSB and Sub-GHz tools on devices you do not own or without explicit written authorization is illegal. Always obtain written permission before testing on others' systems.

A comprehensive Flipper Zero content pack with IR signals, Sub-GHz captures, BadUSB scripts, NFC samples, and more — aggregated from the security research community.

## Directory Structure

```
tpe-cc/
├── infrared/
│   ├── TV/          # Samsung, LG, Sony, Vizio, TCL, Hisense, Philips, Panasonic, Sharp, Toshiba, Roku, Apple, FireTV
│   ├── AC/          # Daikin, LG, Samsung, Mitsubishi, Midea air conditioners
│   ├── Projectors/  # Epson, BenQ, Optoma
│   └── Audio/       # Yamaha, Denon, Sony, Sonos
├── subghz/
│   ├── Princeton/   # PT2262 433MHz remotes
│   ├── CAME/        # European gate remotes
│   ├── NiceFlo/     # Italian gate systems
│   └── Holtek/      # Consumer 433MHz remotes
├── badusb/
│   ├── Windows/     # Windows-targeted scripts
│   ├── MacOS/       # macOS-targeted scripts
│   ├── Linux/       # Linux-targeted scripts
│   └── Demo/        # Fun demos and PoC
├── nfc/             # NFC card samples
└── rfid/            # RFID card samples
```

## Installation

### Option 1: Install Script (Recommended)
```bash
git clone https://github.com/gagethecoolguy72/tpe-cc
cd tpe-cc
chmod +x install.sh
./install.sh /path/to/flipper/sd
```

### Option 2: Manual
Copy folders to your Flipper SD card:
- `infrared/` → `/infrared/`
- `subghz/` → `/subghz/`
- `badusb/` → `/badusb/`
- `nfc/` → `/nfc/`
- `rfid/` → `/rfid/`

### Option 3: qFlipper
1. Open qFlipper and connect your Flipper
2. Drag and drop folders onto the SD card

## IR Signals Included

| Brand | Protocol | Buttons |
|-------|----------|---------|
| Samsung | Samsung32 | Power, Vol+/-, Mute, CH+/-, Nav, Numbers, Smart Hub, Netflix, Colors |
| LG | NEC | Power, Vol+/-, Mute, CH+/-, Nav, Numbers, Magic, Netflix, Colors |
| Sony | SIRC | Power, Vol+/-, Mute, CH+/-, Nav, Numbers, Netflix, Media |
| Vizio | NEC | Power, Vol+/-, Mute, CH+/-, Nav, Numbers, Input |
| TCL | NEC | Power, Vol+/-, Mute, CH+/-, Nav, Numbers, Roku |
| Hisense | NEC | Power, Vol+/-, Mute, CH+/-, Nav, Numbers |
| Philips | RC5 | Power, Vol+/-, Mute, CH+/-, Nav, Numbers |
| Panasonic | Kaseikyo | Power, Vol+/-, Mute, CH+/-, Nav, Numbers |
| Sharp | NEC | Power, Vol+/-, Mute, CH+/-, Nav, Numbers |
| Toshiba | NEC | Power, Vol+/-, Mute, CH+/-, Nav, Numbers |
| Roku TV | NEC | Power, Vol+/-, Mute, Nav, Home, Back, Options |
| Apple TV | NEC | Power, Menu, Play/Pause, Nav, Select, Siri |
| Amazon Fire TV | NEC | Power, Vol+/-, Mute, Nav, Home, Back, Menu |
| Daikin AC | Daikin | Power On/Off, modes, temperatures |
| LG AC | NEC | Power On/Off, Cool/Heat/Fan modes |
| Mitsubishi AC | Mitsubishi | Power On/Off, modes, temperatures |
| Epson Projector | NEC | Power, Source, Nav, Zoom |
| BenQ Projector | NEC | Power, Source, Nav, Blank |
| Yamaha AVR | NEC | Power, Vol+/-, Mute, Input select |

> **Tip:** If a signal doesn't work, use Flipper's **Learn New Remote** feature to capture your specific device.

## Sub-GHz Protocols

| Protocol | Frequency | Use Case |
|----------|-----------|----------|
| Princeton/PT2262 | 433.92 MHz | Generic OOK remotes, gates |
| CAME | 433.92 MHz | European gate/barrier systems |
| Nice Flo | 433.92 MHz | Italian gate systems |
| Holtek | 433.92 MHz | Consumer 433MHz devices |

> Sub-GHz replay is for **authorized use only** on systems you own.

## BadUSB Scripts

### Windows
| Script | Purpose |
|--------|---------|
| WiFi_Password_Grab.txt | Exports saved WiFi credentials |
| Sysinfo_Dump.txt | Collects full system information |
| Chrome_Passwords.txt | Extracts Chrome saved passwords |
| Reverse_Shell.txt | Opens PowerShell reverse shell |
| Add_Admin_User.txt | Adds hidden admin account |
| Disable_Defender.txt | Disables Windows Defender AV |
| Quick_Lock.txt | Locks the workstation |
| Wallpaper_Change.txt | Changes desktop wallpaper |
| BSOD_Prank.txt | Triggers a fake BSOD |
| Exfil_Documents.txt | Exfiltrates user documents |

### macOS
| Script | Purpose |
|--------|---------|
| WiFi_Passwords_Mac.txt | Exports saved WiFi passwords |
| Sysinfo_Mac.txt | Full system info dump |
| Reverse_Shell_Mac.txt | Opens reverse shell via nc |
| Lock_Screen_Mac.txt | Locks the screen |

### Linux
| Script | Purpose |
|--------|---------|
| Sysinfo_Linux.txt | Full system recon dump |
| Reverse_Shell_Linux.txt | Opens bash reverse shell |

### Demo
| Script | Purpose |
|--------|---------|
| Rick_Roll.txt | Opens Rick Roll in browser |
| Screensaver_Prank.txt | Activates screensaver instantly |
| Matrix_Rain.txt | Opens Matrix rain in terminal |

## Compatible Firmware

| Firmware | BadUSB | Sub-GHz | IR | Notes |
|----------|--------|---------|-----|-------|
| Official | Yes | Limited | Yes | Most stable |
| [Unleashed](https://github.com/DarkFlippers/unleashed-firmware) | Yes | Yes | Yes | Removes regional locks |
| [RogueMaster](https://github.com/RogueMaster/flipperzero-firmware-wPlugins) | Yes | Yes | Yes | Most plugins |
| [Xtreme](https://github.com/Flipper-XFW/Xtreme-Firmware) | Yes | Yes | Yes | Performance focused |

## Sources & Credits

- [logickworkshop/Flipper-IRDB](https://github.com/logickworkshop/Flipper-IRDB)
- [UberGuidoZ/Flipper](https://github.com/UberGuidoZ/Flipper)
- [I-Am-Jakoby/Flipper-Zero-BadUSB](https://github.com/I-Am-Jakoby/Flipper-Zero-BadUSB)
- [FalsePhilosopher/BadUSB-Keyboard-Works](https://github.com/FalsePhilosopher/BadUSB-Keyboard-Works)
- [UberGuidoZ/Flipper-IRDB](https://github.com/UberGuidoZ/Flipper-IRDB)
- [dhannn/awesome-flipper-zero](https://github.com/djsime1/awesome-flipperzero)
