#include "platform.h"

#include "tacos/io.h"
#include "tacos/lockout.h"
#include "tacos/terminal.h"
#include "tacos/network.h"
#include "tacos/state.h"
#include "tacos/time.h"
#include "tacos/utils.h"

void setup()
{
    Serial.begin(115200);
    delay(10);

    Serial.printf("Booting node %s...\n", NODE_ID);

    // prepare STATUS_PIN
    pinMode(STATUS_PIN, OUTPUT);
    pinMode(ERROR_PIN, OUTPUT);
#ifdef BUTTON_MODE
    pinMode(BUTTON_PIN, BUTTON_MODE);
#else
    pinMode(BUTTON_PIN, INPUT_PULLUP);
#endif
    pinMode(POWER_PIN, OUTPUT);

    // Clean up
    setToolOff();

    Serial.printf("Setting startup state...\n");
    forceState(STATE_STARTUP);

    Serial.printf("Starting network...\n");
    networkInit();

    Serial.printf("Starting time...\n");
    timeInit();

#ifdef AUTH_TERMINAL
    initTerminal();
#endif

    Serial.printf("Setting default state...\n");
    forceState(STATE_UNTRUSTED);
}

void loop()
{
    heartBeat();
    timeLoop();

#ifdef AUTH_TERMINAL
    terminalLoop();
#endif

#ifdef LOCKOUT
    lockoutLoop();
#endif

    applyState();
}
