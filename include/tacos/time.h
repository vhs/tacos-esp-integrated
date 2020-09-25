#pragma once
#ifndef TACOS_TIME_H
#define TACOS_TIME_H

#include "platform.h"

extern time_t now;

void timeInit();
void timeLoop();

#endif