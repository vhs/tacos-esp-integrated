#ifndef TACOS_CARD_H
#define TACOS_TERMINAL_H

#include "platform.h"

#ifdef AUTH_TERMINAL

void initTerminal();
void terminalLoop();
String getScannedCardID();
String getRFIDAccessCheckPacket(String card_id);

#endif

#endif