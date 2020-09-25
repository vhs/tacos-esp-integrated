# TACOS ESP integrated

This is the integrated interlock and terminal TACOS reference implementation on ESP/embedded (Platform IO).

## TACOS

[TACOS](https://github.com/vhs/tacos/) is an integrated tool access control operations system.

## Usage

* Clone this repository: `git clone https://github.com/vhs/tacos-esp-integrated`
* Copy includes/config.sample.h to includes/config.h
  * Configure NODE_ID
  * Enable and/or disable LOCKOUT and/or AUTH_TERMINAL functionality
  * Configure wifi, NODE_SECRET, backend, NTP, IO and default settings as needed
    * NODE_SECRET is only needed for authentication
* Copy `platformio.sample.ini` to `platformio.ini`
* Configure boards as needed
* Compile and upload
