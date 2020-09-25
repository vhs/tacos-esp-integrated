#include "platform.h"

#include "tacos/io.h"
#include "tacos/pitches.h"
#include "tacos/state.h"

void blinkLED(int PIN)
{
    ledMultiBlink(PIN);
}

void ledMultiBlink(int PIN, int amount, int blink_delay)
{
    digitalWrite(PIN, LOW);

    for (int i = 0; i < amount; i++)
    {
        digitalWrite(PIN, HIGH);
        delay(blink_delay);
        digitalWrite(PIN, LOW);
        delay(blink_delay);
    }
}

void setOutputOn(int PIN)
{
    digitalWrite(PIN, HIGH);
}

void setOutputOff(int PIN)
{
    digitalWrite(PIN, LOW);
}

void setStatusLedOn()
{
    setOutputOn(STATUS_PIN);
}

void setStatusLedOff()
{
    setOutputOff(STATUS_PIN);
}

void setErrorLedOn()
{
    setOutputOn(ERROR_PIN);
}

void setErrorLedOff()
{
    setOutputOff(ERROR_PIN);
}

void setPowerOn()
{
    setOutputOn(POWER_PIN);
}

void setPowerOff()
{
    setOutputOff(POWER_PIN);
}

void ledBlink()
{
    ledMultiBlink(STATUS_PIN, 1, 250);
}

void ledLongBlink()
{
    ledMultiBlink(STATUS_PIN, 1, 250);
}

void ledShortBlink()
{
    ledMultiBlink(STATUS_PIN, 1, 125);
}

void ledSingleBlink()
{
    ledMultiBlink(STATUS_PIN, 1, 125);
}

void ledDoubleBlink()
{
    ledMultiBlink(STATUS_PIN, 2, 125);
}

void ledSignal()
{
    ledMultiBlink(STATUS_PIN, 1, 1500);
}

unsigned long nextHeartBeat = 0;

void heartBeat()
{
    if (getState() == STATE_IDLE && (nextHeartBeat == 0 || nextHeartBeat < millis()))
    {
        ledMultiBlink(STATUS_PIN, 1, 125);
        nextHeartBeat = millis() + 5000;
    }
}

void doAlternateBlink()
{
    Serial.printf("doAlternateBlink");

    int shift = HIGH;

    for (int i = 0; i < 5; i++)
    {
        Serial.printf(".");

        if (i > 0)
            delay(125);

        tone(STATUS_PIN, shift);
        tone(ERROR_PIN, !shift);
        delay(125);
        tone(STATUS_PIN, !shift);
        tone(ERROR_PIN, shift);

        shift = !shift;
    }

    Serial.printf("done!\n");
}

void errorSignal()
{
    tone(ERROR_PIN, NOTE_AS3, 125);
    delay(250);
    tone(ERROR_PIN, NOTE_A3, 125);
    delay(250);
    tone(ERROR_PIN, NOTE_GS3, 125);
    delay(250);
    tone(ERROR_PIN, NOTE_G3, 500);
}

void setSuccess()
{
    ledBlink();
}

void setError()
{
    errorSignal();
}

void setToolOff()
{
    setPowerOff();
    setStatusLedOff();
    setErrorLedOff();
    unsetToolArmed();
    unsetBlockRetry();
    Serial.printf("NOTICE: Tool disabled\n");
}

void setToolOn()
{
    digitalWrite(POWER_PIN, HIGH);
}

void setToolError()
{
    blinkLED(ERROR_PIN);
    setBlockRetry();
    Serial.printf("ERROR: Error set\n");
    digitalWrite(ERROR_PIN, HIGH);
}

void clearToolError()
{
    digitalWrite(ERROR_PIN, LOW);
    blinkLED(STATUS_PIN);
    unsetBlockRetry();
    Serial.printf("NOTICE: Error cleared\n");
}

int latchInput(int PIN)
{
    delay(DEBOUNCE_DELAY);
    return readInput(PIN);
}

int readInput(int PIN)
{
    return digitalRead(PIN);
}
