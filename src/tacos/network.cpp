#include "platform.h"

#include "tacos/io.h"
#include "tacos/state.h"
#include "tacos/utils.h"

HTTPClient httpGetStateClient;
HTTPClient httpAuthClient;

#ifdef HTTPS_BACKEND
BearSSL::WiFiClientSecure *client = new BearSSL::WiFiClientSecure();
BearSSL::X509List cert(certauthcert);
#else
WiFiClient client;
#endif

void networkInit()
{
#ifdef HTTPS_BACKEND
    // Set Root CA
    client->setTrustAnchors(&cert);
#endif

    // Connect to WiFi network
    Serial.printf("LOG: Connecting to [%s]...", WIFI_NAME);

    // Switch wifi on
    WiFi.persistent(false);
    WiFi.mode(WIFI_STA);
    WiFi.begin(WIFI_NAME, WIFI_PASS);

    // Wait for connection
    int connection_tries = 0;
    while (WiFi.status() != WL_CONNECTED && connection_tries < CONNECTION_RETRIES)
    {
        Serial.printf(".");
        ledBlink();
        connection_tries++;
    }
    if (WiFi.status() != WL_CONNECTED)
    {
        Serial.printf("\n");
        setToolError();
        Serial.printf("ERROR: Failed to connect to wireless network\n");
        return;
    }
    else
    {
        Serial.printf("ONLINE!\n");
    }

    // Wait for network to come up
    delay(NETWORK_DELAY);
}

String doTACOSRequest(String endpoint)
{
    String requestURL = String(String(SERVER_API_URL) + (endpoint[0] != '/' ? "/" : "") + endpoint + "/" + String(NODE_ID));
    Serial.printf("doTACOSRequest: requestURL = %s\n", requestURL.c_str());

#ifdef HTTPS_BACKEND
    // HTTPS
    Serial.printf("doTACOSRequest: HTTPS\n");
    httpGetStateClient.begin(*client, requestURL);
#else
    // HTTP
    Serial.printf("doTACOSRequest: HTTP\n");
    WiFiClient client;

    httpGetStateClient.begin(client, requestURL);
#endif

    String result_data = "";

    Serial.printf("doTACOSRequest: doing request\n");
    int httpCode = httpGetStateClient.GET();
    Serial.printf("doTACOSRequest: got httpCode: %i\n", httpCode);
    if (httpCode > 0)
    {
        if (httpCode == HTTP_CODE_OK)
        {
            Serial.printf("doTACOSRequest: got HTTP_CODE_OK\n");
            result_data = httpGetStateClient.getString();
            Serial.printf("doTACOSRequest: result_data: %s\n", result_data.c_str());
        }
        else
        {
            setError();
            Serial.printf("ERROR: Invalid response code in HTTP request\n");
        }
    }
    else
    {
        setError();
        Serial.printf("ERROR: Unexpected error in HTTP request: %s\n", httpGetStateClient.errorToString(httpCode).c_str());
    }
    Serial.printf("doTACOSRequest: finishing up request and returning result set: %s\n", result_data.c_str());
    delay(10);
    httpGetStateClient.end();
    delay(10);
    return result_data;
}

String doTACOSRequest(String endpoint, String request_data)
{
    String requestURL = String(String(SERVER_API_URL) + (endpoint[0] != '/' ? "/" : "") + endpoint + "/" + String(NODE_ID));
    Serial.printf("doTACOSRequest: requestURL = %s\n", requestURL.c_str());

#ifdef HTTPS_BACKEND
    // HTTPS
    Serial.printf("doTACOSRequest: HTTPS\n");
    httpAuthClient.begin(*client, requestURL);
#else
    // HTTP
    Serial.printf("doTACOSRequest: HTTP\n");
    WiFiClient client;

    httpAuthClient.begin(client, requestURL);
#endif

    httpAuthClient.addHeader("Content-Type", "application/x-www-form-urlencoded");

    String result_data = "";

    Serial.printf("doTACOSRequest: doing request\n");
    int httpCode = httpAuthClient.POST(request_data);
    Serial.printf("doTACOSRequest: got httpCode: %i\n", httpCode);
    if (httpCode > 0)
    {
        if (httpCode == HTTP_CODE_OK)
        {
            Serial.printf("doTACOSRequest: got HTTP_CODE_OK\n");
            result_data = httpAuthClient.getString();
            Serial.printf("doTACOSRequest: result_data: %s\n", result_data.c_str());
        }
        else
        {
            setError();
            Serial.printf("ERROR: Invalid response code in HTTP request\n");
        }
    }
    else
    {
        setError();
        Serial.printf("ERROR: Unexpected error in HTTP request: %s\n", httpAuthClient.errorToString(httpCode).c_str());
    }
    Serial.printf("doTACOSRequest: finishing up request and returning result set: %s\n", result_data.c_str());
    delay(10);
    httpAuthClient.end();
    delay(10);
    return result_data;
}
