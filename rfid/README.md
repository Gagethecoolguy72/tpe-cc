# RFID Files

This folder stores 125kHz RFID card files for your Flipper Zero.

## Supported Protocols

| Protocol | Notes |
|----------|-------|
| EM4100 | Most common 125kHz access cards, read-only UID |
| HID Prox | Corporate access cards |
| AWID | Access control |
| Indala | Motorola/HID |
| IoProx | Kantech |
| Paradox | Paradox security |
| Viking | Viking |
| Jablotron | Czech access control |
| Noralsy | French access control |

## File Format (.rfid)

```
Filetype: Flipper RFID key
Version: 1
Key type: EM4100
Data: 01 23 45 67 89
```

## How to Read RFID Cards

1. On your Flipper: **125 kHz RFID -> Read**
2. Place the card on the back of the Flipper
3. Press **Save** when read

## How to Emulate

1. **125 kHz RFID -> Saved** 
2. Select your saved card
3. Press **Emulate**
4. Hold Flipper to the reader

## Common Card Brands

| Brand | Protocol |
|-------|----------|
| HID 26-bit | HID Prox |
| EM4100 generic | EM4100 |
| Motorola | Indala |
| Kantech | IoProx |

## Legal Notice

RFID card cloning for unauthorized facility access is illegal.
Only read/emulate cards you own and are authorized to use.
