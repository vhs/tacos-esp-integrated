#ifndef CONFIG_H
#define CONFIG_H

#include <TZ.h>

#ifndef NODE_ID
#define NODE_ID "vhs-tacos-lolin-d1-mini-test-1"
#endif

// #define LOCKOUT
// #define AUTH_TERMINAL

// Wireless
#define WIFI_NAME "WIFI-SSID"
#define WIFI_PASS "WIFI-PASS"

// Set the 
#ifdef AUTH_TERMINAL
#define NODE_SECRET "TERMINALSECRET"
#endif

// TACOS backend configuration
#define HTTPS_BACKEND
#define SERVER_API_URL "https://tacos.vanhack.ca/api"

// NTP configuration
#define NTP_SERVER "ca.pool.ntp.org"
#define NTP_TZ TZ_America_Vancouver

// Debug, this is usually off
// #define DEBUG 1

// Defaults
#define BLINK_DELAY 250
#define CONNECTION_RETRIES 50
#define DEBOUNCE_DELAY 50
#define LOOP_DELAY 500
#define NETWORK_DELAY 500

// IO settings
#define STATUS_PIN D0
#define ERROR_PIN D1
#define POWER_PIN D8

#define BUTTON_PIN D2
// #define BUTTON_MODE INPUT

#define SS_PIN D4
#define RST_PIN D3

#endif