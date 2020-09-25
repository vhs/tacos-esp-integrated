#ifndef TACOS_IO_H
#define TACOS_IO_H

#include "platform.h"

void blinkLED(int PIN);
void ledMultiBlink(int PIN, int amount);
void ledMultiBlink(int PIN, int amount = 5, int blink_delay = BLINK_DELAY);
void doAlternateBlink();
void setStatusLedOn();
void setStatusLedOff();
void setErrorLedOn();
void setErrorLedOff();
void setPowerOff();
void setPowerOn();
void ledBlink();
void ledLongBlink();
void ledSingleBlink();
void ledDoubleBlink();
void ledSignal();
void heartBeat();

void setToolOff();
void setToolOn();
void setToolError();
void clearToolError();
void setSuccess();
void setError();
void errorSignal();

int latchInput(int PIN);
int readInput(int PIN);

#endif