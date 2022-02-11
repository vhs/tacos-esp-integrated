#include "platform.h"

#include "tacos/io.h"
#include "tacos/state.h"

// Block trying to arm in case switch was accidentally left on
int tool_armed = 0;
int block_retry = 1;

boolean state_dirty = false;

TACOS_STATES device_state = STATE_IDLE;

TACOS_STATES getState()
{
    return device_state;
}

void setState(TACOS_STATES new_state)
{
    if (new_state != device_state)
    {
        Serial.printf("STATE: Changing state from %i -> %i\n", device_state, new_state);
        device_state = new_state;
        state_dirty = true;
    }
}

void applyState(unsigned long max_delay)
{
    TACOS_STATES update_state = device_state;

    unsigned long start = millis();

    if (state_dirty)
    {
        switch (device_state)
        {
        case STATE_UNTRUSTED:
            Serial.printf("STATE: Untrusted\n");
            setBlockRetry();
            unsetToolArmed();
            break;
        case STATE_IDLE:
            Serial.printf("STATE: Idle\n");
            ledMultiBlink(STATUS_PIN, 1, 250);
            break;
        case STATE_QUERYING:
            Serial.printf("STATE: Querying\n");
            setStatusLedOn();
            break;
        case STATE_PRIMED:
            Serial.printf("STATE: Primed\n");
            ledMultiBlink(STATUS_PIN, 3, 125);
            break;
        case STATE_TOOL_ARMED:
            setErrorLedOff();
            ledMultiBlink(STATUS_PIN, 3, 125);
            unsetBlockRetry();
            setStatusLedOn();
            setToolArmed();
            setToolOn();
            ledMultiBlink(ERROR_PIN, 3, 125);
            Serial.printf("NOTICE: Tool enabled\n");
            break;
        case STATE_TOOL_SAFE:
            setPowerOff();
            setStatusLedOff();
            setErrorLedOff();
            unsetToolArmed();
            unsetBlockRetry();
            Serial.printf("NOTICE: Tool disabled\n");
            update_state = STATE_IDLE;
            break;
        case STATE_STARTUP:
            Serial.printf("Starting up\n");
            doAlternateBlink();
            setStatusLedOff();
            setErrorLedOff();
            break;
        case STATE_ERROR:
            Serial.printf("STATE: ERROR\n");
            ledMultiBlink(ERROR_PIN);
            setErrorLedOn();
            break;
        case STATE_TOOL_ERROR:
            Serial.printf("STATE: TOOL ERROR\n");
            ledMultiBlink(ERROR_PIN);
            setBlockRetry();
            setErrorLedOn();
            Serial.printf("ERROR: Error set\n");
            break;
        case STATE_CLEAR_TOOL_ERRORS:
            Serial.printf("STATE: CLEAR TOOL ERRORS\n");
            setErrorLedOff();
            ledMultiBlink(STATUS_PIN);
            unsetBlockRetry();
            Serial.printf("NOTICE: Error cleared\n");
            update_state = STATE_IDLE;
            break;
        case STATE_AUTH_SUCCESS:
            Serial.printf("STATE: Authenticated\n");
            setStatusLedOn();
            ledMultiBlink(ERROR_PIN, 1, 1000);
            setStatusLedOff();
            update_state = STATE_IDLE;
            break;
        case STATE_ERROR_AUTH:
        case STATE_AUTH_ERROR:
            Serial.printf("STATE: AUTH ERROR\n");
            errorSignal();
            update_state = STATE_IDLE;
            break;
        case STATE_ERROR_SERVER:
        case STATE_ERROR_NETWORK:
            Serial.printf("STATE: NETWORK ERROR\n");
            ledMultiBlink(ERROR_PIN, 6, 125);
            update_state = STATE_IDLE;
            break;
        };

        state_dirty = false;
    }

    setState(update_state);

    // Sleep for remaining time
    unsigned long end = millis();

    unsigned long duration = (end - start);
    long remainder = (long)(max_delay - duration);

    if (remainder > 0)
    {
        // Serial.printf("STATE: waiting for %li ms\n", remainder);
        delay(remainder);
    }
    // Serial.printf("STATE: nap time over!\n");
}

void forceState(TACOS_STATES new_state, unsigned long max_delay)
{
    setState(new_state);
    applyState(max_delay);
}

int getBlockRetry()
{
    return block_retry;
}

bool isBlockRetry()
{
    return block_retry == 1;
}

void setBlockRetry()
{
    block_retry = 1;
}

void unsetBlockRetry()
{
    block_retry = 0;
}

int getToolArmed()
{
    return tool_armed;
}

bool isToolArmed()
{
    return (tool_armed == 1);
}

void setToolArmed()
{
    Serial.println("setToolArmed");
    tool_armed = 1;
}

void unsetToolArmed()
{
    Serial.println("unsetToolArmed");
    tool_armed = 0;
}
