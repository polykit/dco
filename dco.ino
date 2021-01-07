#include <Wire.h>
#include <ADS1115.h>
#include <Adafruit_MCP4728.h>

#define FREQ_CYCLES_ADJUST 140.0
#define HIGH_FREQ_CYCLES_ADJUST -0.04
#define ANALOG_CV_ADJUST_FACTOR 2.0
#define OCTAVE_OFFSET -5.0

ADS1115 ads;
Adafruit_MCP4728 mcp;
 
unsigned long counterLeft = 0, nextTimer;

void setup() {
  // reset pin to output
  pinMode(9, OUTPUT);

  // initialize adc
  ads.begin();
  ads.set_data_rate(ADS1115_DATA_RATE_860_SPS);
  ads.set_mode(ADS1115_MODE_CONTINUOUS);
  ads.set_mux(ADS1115_MUX_GND_AIN0);
  ads.set_pga(ADS1115_PGA_TWO_THIRDS);
  ads.trigger_sample();

  // initialize dac
  mcp.begin();

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
  float cv = ads.read_sample_float()*ANALOG_CV_ADJUST_FACTOR;
  float freq = 261.6256*pow(2.0, cv+OCTAVE_OFFSET);
  setFrequency(freq);
}

void setFrequency(float frequency) {
    float cycles = 16000000.0/frequency;
    // calculate accurate number of clock cycles, depends on frequency and amount of overflows
    nextTimer = round(cycles-FREQ_CYCLES_ADJUST+(frequency*HIGH_FREQ_CYCLES_ADJUST)-floor(cycles/65535.0)*120.0);
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
