#ifndef TACOS_NETWORK_H
#define TACOS_NETWORK_H

#include "platform.h"

extern void networkInit();
extern String doTACOSRequest(String endpoint);
extern String doTACOSRequest(String endpoint, String request_data);

#endif