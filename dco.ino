#include <Adafruit_MCP4728.h>
#include <Wire.h>

#define ANALOG_CV_ADJUST_FACTOR 0.901;

Adafruit_MCP4728 mcp;
 
unsigned long counterLeft = 0, nextTimer;

void setup() {
  mcp.begin();
  pinMode(9, OUTPUT);

  // disable interrupts
  cli();

  // set timer to overflow interrupt, prescale 1 (16 mhz)
  TCCR1A = 0;
  TCCR1B = 0;
  TCNT1 = 0;
  TCCR1B |= (1 << CS10);
  TIMSK1 |= (1 << TOIE1);

  // enable interrupts
  sei();
}

void loop() {
  readAnalogCV();
}

void readAnalogCV() {
  float cv = analogRead(A0)*(5.0/1023.0)*ANALOG_CV_ADJUST_FACTOR;
  float freq = 261.6256*pow(2.0, cv-3);
  setFrequency(freq);
}

void setFrequency(float frequency) {
    float cycles = 16000000.0/frequency;
    // calculate accurate number of clock cycles, depends on frequency and amount of overflows
    nextTimer = round(cycles-180.0+(frequency*0.015)-floor(cycles/65535.0)*120.0);
    // calculate voltage for amplitude compensation
    mcp.setChannelValue(MCP4728_CHANNEL_A, (frequency*0.4)-(250.0/frequency), MCP4728_VREF_INTERNAL, MCP4728_GAIN_2X);
}

void setMidiNote(int note) {
  float freq = pow(2, (note-69)/12.0)*440.0;
  setFrequency(freq);
}

void setCounter(unsigned long val) {
  if (val > 65535) {
    counterLeft = val - 65535;
    TCNT1 = 0;
  } else {
    counterLeft = 0;
    TCNT1 = 65535 - val;
  }
}

// called on 16 bit overflow (>65535)
ISR(TIMER1_OVF_vect) {
  if (counterLeft == 0) {
    // set pin D9 to high
    PORTB |= (1 << PB1);
    // wait for capacitor to discharge
    delayMicroseconds(5);
    // set pin D9 to low
    PORTB &= ~(1 << PB1);
    // start counter
    setCounter(nextTimer);
  } else {
    // set time that is remaining from last overflow
    setCounter(counterLeft);
  }
}
