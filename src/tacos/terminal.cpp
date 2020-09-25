#include "platform.h"

#ifdef AUTH_TERMINAL

#ifndef NODE_SECRET
#error "Missing NODE_SECRET. Please set a NODE_SECRET in config.h"
#endif

#include "tacos/io.h"
#include "tacos/network.h"
#include "tacos/state.h"
#include "tacos/time.h"
#include "tacos/utils.h"

#include <Crypto.h>
#include <SHA256.h>

MFRC522 mfrc522(SS_PIN, RST_PIN); // Create MFRC522 instance.
SHA256 sha256;

// Variables
StaticJsonDocument<4096> request_data;
StaticJsonDocument<200> response_data;

void initTerminal()
{
    SPI.begin();
    mfrc522.PCD_Init();
}

String getScannedCardID()
{
    String card_id = "";

    for (byte i = 0; i < mfrc522.uid.size; i++)
    {
        if (i > 0)
            card_id.concat(":");
        card_id.concat(String(mfrc522.uid.uidByte[i] < 0x10 ? "0" : ""));
        card_id.concat(String(mfrc522.uid.uidByte[i], HEX));
    }
    card_id.toUpperCase();

    return card_id;
}

String getRFIDAccessCheckPacket(String card_id)
{
    tryYield();

    // Get timestamp
    uint32_t ts = (uint32_t)time(nullptr);

    // Generate nonce
    byte nonceNumber[16];
    ESP8266TrueRandom.uuid(nonceNumber);
    String nonce = ESP8266TrueRandom.uuidToString(nonceNumber);
    nonce.trim();

    tryYield();
    // First we create the hash over the packet data structure

    // if (DEBUG) Serial.println(String((uint32_t)time(nullptr)) + " - getRFIDAccessCheckPacket: create packet data structure");
    // if (DEBUG) printFreeMem();

    // create packet data structure
    request_data["card_id"] = card_id;
    request_data["ts"] = String(ts);
    request_data["nonce"] = nonce;

    char json_packet_data[2048];

    serializeJson(request_data, json_packet_data, sizeof(json_packet_data));

    // if (DEBUG) Serial.println(String((uint32_t)time(nullptr)) + " Encoded Packet: " + String(json_packet_data));
    // if (DEBUG) Serial.println(String((uint32_t)time(nullptr)) + " - getRFIDAccessCheckPacket: create HMAC key");
    // if (DEBUG) printFreeMem();

    tryYield();

    // Create HMAC key
    String packet_key = String(nonce) + String(ts) + String(NODE_SECRET);
    char *key = const_cast<char *>(packet_key.c_str());

    // if (DEBUG) Serial.println(String((uint32_t)time(nullptr)) + " - getRFIDAccessCheckPacket: convert key");
    // if (DEBUG) printFreeMem();

    tryYield();

    sha256.resetHMAC(key, strlen(key));

    tryYield();

    sha256.update(json_packet_data, strlen(json_packet_data));

    tryYield();

    uint8_t hash_result[HASH_SIZE];

    sha256.finalizeHMAC(key, strlen(key), hash_result, sizeof(hash_result));

    char data_hash[65];

    tryYield();

    convertHashToHex(hash_result, data_hash);

    // We have the hash from the JSON data, so now we create the actual packet

    // if (DEBUG) Serial.println(String((uint32_t)time(nullptr)) + " - getRFIDAccessCheckPacket: create packet structure");
    // if (DEBUG) printFreeMem();

    tryYield();

    String packet = "";
    packet.concat(String("data[card_id]=") + String(card_id));
    packet.concat(String("&data[ts]=") + String(ts));
    packet.concat(String("&data[nonce]=") + String(nonce));
    packet.concat(String("&hash=") + String(data_hash));

    // if (DEBUG) Serial.println(" - getRFIDAccessCheckPacket: URL encode the data packet");
    // if (DEBUG) Serial.println(String((uint32_t)time(nullptr)) + "" + packet);
    // if (DEBUG) printFreeMem();

    tryYield();

    // String encoded_packet = urlencode( packet );
    String encoded_packet = packet;

    tryYield();

    return encoded_packet;
}

void terminalHeartBeat()
{
    if ((now % 60) == 0)
        Serial.println(getTerminalState());
}

void terminalLoop()
{
    terminalHeartBeat();

    Serial.printf("Reading card...\n");

    if (mfrc522.PICC_IsNewCardPresent() && mfrc522.PICC_ReadCardSerial())
    {
        Serial.printf("Got card...\n");
        // Get the current card ID
        String card_id = getScannedCardID();

        // Check access allowed
        String encoded_packet = getRFIDAccessCheckPacket(card_id);

        tryYield();

        // Do server request
        String response = doTACOSRequest("/terminals/authenticate/rfid", encoded_packet);

        boolean auth_result = false;

        tryYield();

        // Parse server response
        Serial.println("LOG: Parsing status from server");
        if (response.length() == 0)
        {
            setState(STATE_ERROR_SERVER);
            return;
        }
        else
        {
            DeserializationError error = deserializeJson(response_data, response);
            if (error)
            {
                setState(STATE_ERROR);
            }
            else if (response_data["result"] == "OK")
            {
                const char *message = response_data["message"];
                Serial.println(message);
                auth_result = true;
            }
        }

        if (auth_result)
        {
            Serial.println("Authorized access");
            setState(STATE_AUTH_SUCCESS);
        }
        else
        {
            Serial.println("Access denied");
            setState(STATE_AUTH_ERROR);
        }
    }
}

#endif