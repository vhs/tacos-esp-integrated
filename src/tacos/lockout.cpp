#include "platform.h"

#include "tacos/io.h"
#include "tacos/state.h"
#include "tacos/utils.h"

#ifdef BUTTON_MODE
#define BUTTON_PRESSED (BUTTON_MODE == INPUT_PULLUP) ? LOW : HIGH
#define BUTTON_DEPRESSED (BUTTON_MODE == INPUT_PULLUP) ? HIGH : LOW
#else
#define BUTTON_PRESSED HIGH
#define BUTTON_DEPRESSED LOW
#endif

void lockoutLoop()
{
    // Get button status
    int button_status = readInput(BUTTON_PIN);

    // If the button is on, tool is unsafe and we're not blocked from trying, turn it on
    if (button_status == BUTTON_PRESSED && getToolArmed() == 0 && getBlockRetry() == 0)
    {
        if (latchInput(BUTTON_PIN) != BUTTON_PRESSED)
        {
            return;
        }

        Serial.printf("LOG: Getting status from server\n");
        String payload = getDeviceState();

        Serial.printf("LOG: Parsing status from server\n");
        StaticJsonDocument<1024> jsonDoc;
        DeserializationError error = deserializeJson(jsonDoc, payload);
        if (error)
        {
            Serial.printf("ERROR: Server status gave err: %s\n", error.c_str());
            setState(STATE_TOOL_ERROR);
            return;
        }

        // Get state from the data
        int tool_armed = (int)jsonDoc["armed"];
        Serial.printf("LOG: New tool power status: %i\n", (int)jsonDoc["armed"]);

        // Switch on, else set error
        if (tool_armed == 1)
        {
            setState(STATE_TOOL_ARMED);
            return;
        }
        else
        {
            setState(STATE_TOOL_ERROR);
            return;
        }
    }

    // If button is off and the tool was on, switch it off
    if (button_status == BUTTON_DEPRESSED && getToolArmed() == 1)
    {
        if (latchInput(BUTTON_PIN) != BUTTON_DEPRESSED)
        {
            return;
        }

        setState(STATE_TOOL_SAFE);
        return;
    }

    // If switch is off, tool is safe and retry is blocked, clear errors
    if (button_status == BUTTON_DEPRESSED && getToolArmed() == 0 && getBlockRetry() == 1)
    {
        if (latchInput(BUTTON_PIN) != BUTTON_DEPRESSED)
        {
            return;
        }
        setState(STATE_CLEAR_TOOL_ERRORS);
        return;
    }

    // If switch is on, but we're blocked from retrying, set error
    if (button_status == BUTTON_PRESSED && getToolArmed() == 0 && getBlockRetry() == 1)
    {
        if (latchInput(BUTTON_PIN) != BUTTON_PRESSED)
        {
            return;
        }
        setState(STATE_TOOL_ERROR);
        return;
    }
}