#include "platform.h"

#include "tacos/io.h"
#include "tacos/state.h"
#include "tacos/utils.h"

void lockoutLoop()
{
    // Get button status
    int button_status = readInput(BUTTON_PIN);

    // If the button is on, tool is unsafe and we're not blocked from trying, turn it on
    if (button_status == HIGH && getToolArmed() == 0 && getBlockRetry() == 0)
    {
        if (latchInput(BUTTON_PIN) != HIGH)
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
        int tool_armed = (int)jsonDoc["state"]["powered"];
        Serial.printf("LOG: New tool power status: %i\n", (int)jsonDoc["state"]["powered"]);

        // Switch on, else set error
        if (tool_armed == 1)
        {
            setState(STATE_TOOL_ON);
            return;
        }
        else
        {
            setState(STATE_TOOL_ERROR);
            return;
        }
    }

    // If button is off and the tool was on, switch it off
    if (button_status == LOW && getToolArmed() == 1)
    {
        if (latchInput(BUTTON_PIN) != LOW)
        {
            return;
        }

        setState(STATE_TOOL_OFF);
        return;
    }

    // If switch is off, tool is safe and retry is blocked, clear errors
    if (button_status == LOW && getToolArmed() == 0 && getBlockRetry() == 1)
    {
        if (latchInput(BUTTON_PIN) != LOW)
        {
            return;
        }
        setState(STATE_CLEAR_TOOL_ERRORS);
        return;
    }

    // If switch is on, but we're blocked from retrying, set error
    if (button_status == HIGH && getToolArmed() == 0 && getBlockRetry() == 1)
    {
        if (latchInput(BUTTON_PIN) != HIGH)
        {
            return;
        }
        setState(STATE_TOOL_ERROR);
        return;
    }
}