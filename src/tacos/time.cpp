#include "platform.h"

#include "tacos/io.h"

#define RTC_UTC_TEST 1500000000

time_t now;
time_t rtc = RTC_UTC_TEST;
timeval tv = { rtc, 0 };

static esp8266::polledTimeout::periodicMs showTimeNow(5000);

extern "C" int clock_gettime(clockid_t unused, struct timespec* tp);

void showTime()
{
    struct tm timeinfo;
    gmtime_r(&now, &timeinfo);
    Serial.print("Current time: ");
    Serial.print(asctime(&timeinfo));

    Serial.printf("time: %i\n", (uint32_t)now);
}

void timeInit()
{
    settimeofday(&tv, nullptr);

    configTime(0, 0, NTP_SERVER, "pool.ntp.org", "time.nist.gov");

    Serial.print("Waiting for NTP time sync: ");
    now = time(nullptr);
    while (now < (RTC_UTC_TEST + 3600))
    {
        Serial.print(".");
        now = time(nullptr);
        ledMultiBlink(ERROR_PIN, 1, 65);
        delay(125);
    }
    ledMultiBlink(ERROR_PIN, 1, 125);
    Serial.println("");
    struct tm timeinfo;
    gmtime_r(&now, &timeinfo);
    Serial.print("Current time: ");
    Serial.print(asctime(&timeinfo));
}

void timeLoop()
{
    now = time(nullptr);

    if ((now % 60) == 30)
        showTime();
}