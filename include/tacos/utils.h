#ifndef TACOS_UTILS_H
#define TACOS_UTILS_H

#include "platform.h"

String urldecode(String str);
String urlencode(String str);
unsigned char h2int(char c);
void convertHashToHex(uint8_t *hash, char *hashStr);
void printFreeMem();
String getDeviceState();
String getTerminalState();
void tryYield();

#endif