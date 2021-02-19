#include <Arduino.h>
#include <ESP8266WiFi.h>

const char *ssid = "";
const char *password = "";

void setup()
{
    Serial.begin(115200);
    delay(20);

    WiFi.begin(ssid, password); // Connect to the network
    Serial.print("Connecting to ");
    Serial.print(ssid);
    Serial.println(" ...");

    int i = 0;
    while (WiFi.status() != WL_CONNECTED)
    { // Wait for the Wi-Fi to connect
        delay(1000);
        Serial.print(++i);
        Serial.print(' ');
    }

    Serial.println('\n');
    Serial.println("Connection established!");
    Serial.print("IP address:\t");
    Serial.println(WiFi.localIP()); // Send the IP address of the ESP8266 to the computer
}

void loop()
{
    delay(5000);
    WiFi.printDiag(Serial);
    Serial.println("\n");
}