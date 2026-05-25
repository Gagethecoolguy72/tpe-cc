# NFC Files

This folder stores NFC card dump files for your Flipper Zero.

## Supported Card Types

| Type | Extension | Notes |
|------|-----------|-------|
| MIFARE Classic 1K | .nfc | Most common access cards |
| MIFARE Classic 4K | .nfc | Higher capacity |
| MIFARE Ultralight | .nfc | Small, cheap tags |
| MIFARE DESFire | .nfc | Encrypted, harder to clone |
| NTAG 213/215/216 | .nfc | Common NFC stickers |
| EMV (Bank cards) | .nfc | Read-only UID |
| ISO 14443-4 | .nfc | Smart cards |

## File Format (.nfc)

```
Filetype: Flipper NFC device
Version: 2
# Device type can be changed to simulate different cards
Device type: MIFARE Classic
UID: DE AD BE EF
SAK: 08
ATQA: 00 04
MIFARE Classic type: 1K
Data format version: 2
Error: Unknown
Block 0: DE AD BE EF 0B 08 04 00 62 63 64 65 66 67 68 69
...
```

## How to Capture NFC Cards

1. On your Flipper: **NFC -> Read**
2. Hold your card to the back of the Flipper
3. Press **Save** when detected
4. Name the card

## MIFARE Classic Cracking

For locked MIFARE Classic cards:
1. **NFC -> Detect Reader** - use near an access reader to sniff keys
2. **NFC -> MFKey32** - runs key recovery attack
3. Use [mfoc](https://github.com/nfc-tools/mfoc) or [Proxmark3](https://github.com/RfidResearchGroup/proxmark3) for offline cracking

## Legal Notice

Cloning access cards for unauthorized entry is illegal.
Only clone cards you own for personal convenience (backup, testing, etc.).
