# Sub-GHz Signals

> **Legal Warning:** Replaying Sub-GHz signals on systems you do not own or without explicit written authorization is illegal in most jurisdictions. These files are for educational purposes and authorized testing only.

## Directory Structure

```
subghz/
├── Princeton/     # PT2262/PT2264 OOK protocol (most common)
├── CAME/          # CAME gate/barrier systems
├── NiceFlo/       # Nice Flo systems
└── Holtek/        # Holtek HT6P20 series
```

## Protocols

### Princeton / PT2262
- **Frequency:** 433.92 MHz (most common), also 315 MHz, 330 MHz, 390 MHz, 418 MHz
- **Type:** Fixed code OOK (On-Off Keying)
- **Bits:** Usually 24-bit
- **Use case:** Most generic 433MHz remote controls, cheap gate/barrier remotes
- **Note:** Fixed code = can be replayed

### CAME
- **Frequency:** 433.92 MHz
- **Type:** Fixed code OOK
- **Bits:** 12-bit or 24-bit
- **Use case:** European gate and barrier systems

### Nice Flo
- **Frequency:** 433.92 MHz
- **Type:** Fixed code OOK  
- **Bits:** 12-bit
- **Use case:** Italian gate/garage systems

### Holtek HT6P20
- **Frequency:** 433.92 MHz
- **Type:** Fixed code OOK
- **Bits:** 20-bit address + 4-bit data
- **Use case:** Consumer electronics, fan remotes

## Finding Your Remote's Protocol

1. Open Flipper Zero -> Sub-GHz -> Read RAW
2. Press your remote button while pointing at Flipper
3. Save the capture
4. Open the saved file and check the frequency and signal shape
5. Use Sub-GHz -> Read to try auto-detection

## Frequencies to Try

| Frequency | Common Use |
|-----------|------------|
| 315.00 MHz | US/Japan garage doors |
| 330.00 MHz | Some US remotes |
| 390.00 MHz | Chamberlain/LiftMaster old |
| 418.00 MHz | Some UK remotes |
| 433.92 MHz | Most European, global |
| 868.00 MHz | EU newer systems |
| 915.00 MHz | US newer systems |
