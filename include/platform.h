#ifndef PLATFORM_H
#define PLATFORM_H

#include "config.h"

#ifdef HTTPS_BACKEND
#include "cert-auth-cert.h"
#endif

#include <Arduino.h>

#include <ESP8266WiFi.h>
#include <WiFiUdp.h>
#include <ESP8266HTTPClient.h>

#include <SPI.h>
#include <MFRC522.h>

#include <coredecls.h>
#include <Schedule.h>
#include <PolledTimeout.h>
#include <time.h>
#include <sys/time.h>
#include <sntp.h>

#include <ArduinoJson.h>
#include <ESP8266TrueRandom.h>

#include <string.h>

#define HASH_SIZE 32
#define BLOCK_SIZE 64

#define YIELD_INTERVAL 50

extern "C"
{
#include "user_interface.h"
}

#endif
