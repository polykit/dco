# Polykit DCO

This repository contains the schematics and source code for an Arduino Nano based DCO (digitally controlled analog oscillator). Schematics are roughly based on the Juno 106, voltage for amplitude compensation comes from the DAC MCP4728. It produces a highly accurate frequency 5Vpp ramp over several octaves on the output. For frequency control it uses timer interrupts on the full 16 mhz range. The reset signal is sent when the 16-bit counter overflows and also handles multiple overflows on low frequencies. Voltage control comes from a ADS1115 16-bit ADC and ranges from 0-10V.

[There is also a design based on the Raspberry Pi Pico which is even more precise and offers MIDI input and polyphony with up to 6 voices.](https://github.com/polykit/pico-dco)

![Polykit DCO](dco.png)

## Todo

- add MIDI input
- ~~add voltage control~~
- ~~add proper voltage control~~
- control multiple oscillators with one Arduino
- ~~additional waveshaping~~

## Needed libraries

- [ADC ADS1115](https://github.com/baruch/ADS1115)
- [DAC MCP4728](https://github.com/adafruit/Adafruit_MCP4728.git)

## References

https://github.com/petegaggs/MIDI-controlled-oscillator

https://blog.thea.codes/the-design-of-the-juno-dco/

https://electricdruid.net/roland-juno-dcos/

https://learn.adafruit.com/adafruit-4-channel-adc-breakouts/arduino-code

https://www.ti.com/lit/ds/symlink/ads1114.pdf

https://learn.adafruit.com/adafruit-mcp4728-i2c-quad-dac/arduino

https://ww1.microchip.com/downloads/en/DeviceDoc/22187E.pdf

https://www.robotshop.com/community/forum/t/arduino-101-timers-and-interrupts/13072

http://newt.phys.unsw.edu.au/jw/notes.html

http://www.thebox.myzen.co.uk/Tutorial/Protection.html

## Releases
- v0.0.3: added proper cv input and pulse out
- v0.0.2: added simple cv
- v0.0.1: initial release
