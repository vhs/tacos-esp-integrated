#include "platform.h"

#include "tacos/network.h"
#include "tacos/utils.h"
#include "tacos/pitches.h"

unsigned int yield_time = 0;

String urldecode(String str)
{

    String encodedString = "";
    char c;
    char code0;
    char code1;
    for (unsigned int i = 0; i < str.length(); i++)
    {
        c = str.charAt(i);
        if (c == '+')
        {
            encodedString += ' ';
        }
        else if (c == '%')
        {
            i++;
            code0 = str.charAt(i);
            i++;
            code1 = str.charAt(i);
            c = (h2int(code0) << 4) | h2int(code1);
            encodedString += c;
        }
        else
        {

            encodedString += c;
        }
    }

    return encodedString;
}

String urlencode(String str)
{
    String encodedString = "";
    char c;
    char code0;
    char code1;
    // char code2;
    for (unsigned int i = 0; i < str.length(); i++)
    {
        c = str.charAt(i);
        if (c == ' ')
        {
            encodedString += '+';
        }
        else if (isalnum(c))
        {
            encodedString += c;
        }
        else
        {
            code1 = (c & 0xf) + '0';
            if ((c & 0xf) > 9)
            {
                code1 = (c & 0xf) - 10 + 'A';
            }
            c = (c >> 4) & 0xf;
            code0 = c + '0';
            if (c > 9)
            {
                code0 = c - 10 + 'A';
            }
            // code2 = '\0';
            encodedString += '%';
            encodedString += code0;
            encodedString += code1;
            //encodedString+=code2;
        }
    }
    return encodedString;
}

unsigned char h2int(char c)
{
    if (c >= '0' && c <= '9')
    {
        return ((unsigned char)c - '0');
    }
    if (c >= 'a' && c <= 'f')
    {
        return ((unsigned char)c - 'a' + 10);
    }
    if (c >= 'A' && c <= 'F')
    {
        return ((unsigned char)c - 'A' + 10);
    }
    return (0);
}

void convertHashToHex(uint8_t *hash, char *hashStr)
{
    for (int i = 0; i < 32; i++)
    {
        hashStr[i * 2] = "0123456789abcdef"[hash[i] >> 4];
        hashStr[i * 2 + 1] = "0123456789abcdef"[hash[i] & 0xf];
    }
    hashStr[64] = '\0';
}

void printFreeMem()
{
    Serial.print("freeMemory()=");
    uint32_t free = system_get_free_heap_size();
    Serial.println(free);
    delay(0);
}

String getDeviceState()
{
    return doTACOSRequest("/devices/state");
}

String getTerminalState()
{
    return doTACOSRequest("/terminals/state");
}

void tryYield()
{
    if (yield_time < millis())
    {
        yield();
        yield_time = millis() + YIELD_INTERVAL;
    }
}
