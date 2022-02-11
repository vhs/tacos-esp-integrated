#ifndef CONFIG_H
#define CONFIG_H

#include <TZ.h>

#ifndef NODE_ID
#define NODE_ID "vhs-tacos-test-001"
#endif

#define LOCKOUT
// #define AUTH_TERMINAL

// Wireless
#ifndef WIFI_NAME
#define WIFI_NAME "WIFI-NAME"
#endif
#ifndef WIFI_PASS
#define WIFI_PASS "WIFI-PASS"
#endif

// Set the
#ifdef AUTH_TERMINAL
#define NODE_SECRET "TERMINAL-SECRET"
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
// Outputs
#define STATUS_PIN D4
#define ERROR_PIN D3
#define POWER_PIN D2

// Inputs
#define BUTTON_PIN D1
#define BUTTON_MODE INPUT_PULLUP

// SPI
#define SS_PIN D8
#define RST_PIN D0

#endif
