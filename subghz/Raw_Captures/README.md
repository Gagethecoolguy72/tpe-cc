# Raw Sub-GHz Captures

This folder is for storing your own RAW Sub-GHz captures made with your Flipper Zero.

## How to Capture RAW

1. Go to **Sub-GHz** on your Flipper
2. Select **Read RAW**
3. Point your remote at the Flipper and hold the button
4. Press **OK** to start recording, release remote
5. Press **OK** to stop, then **Save**
6. Files will be saved to `/subghz/` on your SD card

## Raw File Format

```
Filetype: Flipper SubGhz RAW File
Version: 1
Frequency: 433920000
Preset: FuriHalSubGhzPresetOok650Async
Latitude: 0.000000
Longitude: 0.000000
RAW_Data: 1234 -5678 1234 -5678 ...
```

Positive values = signal ON (in microseconds)
Negative values = signal OFF (in microseconds)

## Analyzing Captures

Use [URH (Universal Radio Hacker)](https://github.com/jopohl/urh) or
[inspectrum](https://github.com/miek/inspectrum) to analyze raw captures.
