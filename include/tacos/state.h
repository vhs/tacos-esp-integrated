#ifndef TACOS_STATE_H
#define TACOS_STATE_H

#include "platform.h"

enum TACOS_STATES
{
    STATE_STARTUP,
    STATE_UNTRUSTED,
    STATE_IDLE,
    STATE_QUERYING,
    STATE_PRIMED,
    STATE_POWERED,
    STATE_TOOL_ON,
    STATE_TOOL_OFF,
    STATE_TOOL_ERROR,
    STATE_AUTH_SUCCESS,
    STATE_AUTH_ERROR,
    STATE_ERROR,
    STATE_CLEAR_TOOL_ERRORS,
    STATE_ERROR_AUTH,
    STATE_ERROR_SERVER,
    STATE_ERROR_NETWORK
};

void applyState(unsigned long max_delay = LOOP_DELAY);
void forceState(TACOS_STATES new_state = STATE_IDLE, unsigned long max_delay = LOOP_DELAY);
TACOS_STATES getState();
void setState(TACOS_STATES new_state = STATE_IDLE);

void setBlockRetry();

int getBlockRetry();

void unsetBlockRetry();

void setToolArmed();

int getToolArmed();

void unsetToolArmed();

#endif