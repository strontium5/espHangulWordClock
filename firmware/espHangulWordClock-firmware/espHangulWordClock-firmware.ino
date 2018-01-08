//this is the driver code for the big 16x16 led panel
#include "masks.h"
#include <SPI.h>

#include <TimeLib.h>
//#include "WifiConfig.h"
#include <NtpClientLib.h>
#include <ESP8266WiFi.h>

#include <DNSServer.h>
#include <ESP8266WebServer.h>
#include <WiFiManager.h>          //https://github.com/tzapu/WiFiManager

#define PIN_CLOCK  14
#define PIN_DATA_A  12
#define  PIN_DATA_B  13
#define PIN_STROBE 05

//#ifndef WIFI_CONFIG_H
//#define YOUR_WIFI_SSID "YOUR_WIFI_SSID"
//#define YOUR_WIFI_PASSWD "YOUR_WIFI_PASSWD"
//#endif // !WIFI_CONFIG_H


void onSTAGotIP(WiFiEventStationModeGotIP ipInfo) {
  Serial.printf("Got IP: %s\r\n", ipInfo.ip.toString().c_str());
  NTP.begin("us.pool.ntp.org", 1, true);
  NTP.setInterval(63);
  //digitalWrite(2, LOW);
}

void onSTAGotIP2() {
//  Serial.printf("Got IP: %s\r\n", ipInfo.ip.toString().c_str());
  NTP.begin("us.pool.ntp.org", 1, true);
  NTP.setInterval(63);
  NTP.setTimeZone(-5);
  //digitalWrite(2, LOW);
}

void onSTADisconnected(WiFiEventStationModeDisconnected event_info) {
  Serial.printf("Disconnected from SSID: %s\n", event_info.ssid.c_str());
  Serial.printf("Reason: %d\n", event_info.reason);
  //digitalWrite(2, HIGH);
}

/*
 * Like shiftOut, but uses 1 clock for 2 data lines at same time
 */
void shiftOutDual(uint8_t clockPin, uint8_t dataPinA, uint8_t dataPinB, uint8_t bitOrder, uint8_t valA, uint8_t valB)
{
  uint8_t i;

  for (i = 0; i < 8; i++)  {
    if (bitOrder == LSBFIRST){
      
      digitalWrite(dataPinA, !!(valA & (1 << i)));
      digitalWrite(dataPinB, !!(valB & (1 << i)));
    }
    else{
      digitalWrite(dataPinA, !!(valA & (1 << (7 - i))));
      digitalWrite(dataPinB, !!(valB & (1 << (7 - i))));
    }
      
    digitalWrite(clockPin, HIGH);
    digitalWrite(clockPin, LOW);    
  }
}

uint8_t _mask[] = {0,0,0,0,0,0,0,0};

void addMask(uint8_t maskToAdd[]){
  for(int i=0;i<BYTE_COUNT;i++){
    _mask[i] = _mask[i] | maskToAdd[i];
  }
}

void resetMask(){
  for(int i=0;i<BYTE_COUNT;i++){
    _mask[i] = 0;
  }
}

void printBits(byte myByte){
 for(byte mask = 0x80; mask; mask >>= 1){
   if(mask  & myByte)
       Serial.print('1');
   else
       Serial.print('0');
 }
}

void printMask(){
  Serial.println("--------");
  for(int i=0;i<BYTE_COUNT;i++){
    printBits(_mask[i]);
    Serial.println();
  }
  Serial.println("--------");
}

void showDate(bool bSeoul=false)
{
  //Serial.println("showDate()");
  time_t tTime = NTP.getTime();
  resetMask();
  
  if(bSeoul){
    addMask(masksCore[MASK_SEOUL]);
  }
  
  addMask(masksCore[MASK_TODAY]);

  addMask(masksWeekday[weekday(tTime)-1]);//sunday,monday...
  
  //NB there is a known issue with November and day of week overlap
  if(month(tTime)>9){
    addMask(masksNumbersB[10]);//10s
  }
  addMask(masksNumbersB[(month(tTime)%10)]);//0,1,2,3,4..
  addMask(masksCore[MASK_MONTH]);

  if(day(tTime)>10){
    addMask(masksNumbersC[9+(day(tTime)/10)]);//10s,20s,30s
  }
  addMask(masksNumbersC[(day(tTime)%10)]);//0,1,2,3,4..
  addMask(masksCore[MASK_DAY]);
  
  addMask(masksCore[MASK_COPULA]);
  writeToMatrix(_mask);
}

void showTime(bool bSeoul=false){
  //Serial.println("showTime()");
  time_t tTime = NTP.getTime();
  resetMask();
  
  if(bSeoul){
    addMask(masksCore[MASK_SEOUL]);
  }
  
  addMask(masksCore[MASK_NOW]);
  if(hour(tTime)>12){
    addMask(masksCore[MASK_PM]);
  }
  else{
    addMask(masksCore[MASK_AM]);
  }
  
  if((hour(tTime)%12)>10){
    addMask(masksNumbersA[10]);//10s
  }
  addMask(masksNumbersA[((hour(tTime)%12)%10)]);//0,1,2,3,4..
  addMask(masksCore[MASK_HOUR]);

  if(minute(tTime)>10){
    addMask(masksNumbersB[9+(minute(tTime)/10)]);//10s,20s,30s,40s,50s
  }
  addMask(masksNumbersB[(minute(tTime)%10)]);//0,1,2,3,4..
  addMask(masksCore[MASK_MINUTE]);
  
  if(second(tTime)>10){
    addMask(masksNumbersC[9+(second(tTime)/10)]);//10s,20s,30s,40s,50s
  }
  addMask(masksNumbersC[(second(tTime)%10)]);//0,1,2,3,4..
  addMask(masksCore[MASK_SECOND]);
  addMask(masksCore[MASK_COPULA]);
  
  writeToMatrix(_mask);
}

void showTest(){
  static int a = 0;
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < BYTE_COUNT; j++)
    {
      shiftOut(PIN_DATA_A, PIN_CLOCK, MSBFIRST, letters[a][j]);
      //SPI.transfer(disp2[j][i]);
    }
  }
  a = (a+1)%SYMBOL_COUNT;
}

/*
 * takes in 256 bits to write to the display
 */
void writeToMatrix(uint8_t mask[])
{
  //printMask();
  uint8_t _lineA;//left half of a row goes in first
  uint8_t _lineB;
  
  for (int i = 7; i >=0; i--) {
    _lineA = 0;
    _lineA = 
    ((mask[0]>>i) & 1)<<0 |
    ((mask[0]>>i) & 1)<<1 |
    ((mask[1]>>i) & 1)<<2 |
    ((mask[1]>>i) & 1)<<3 |
    ((mask[2]>>i) & 1)<<4 |
    ((mask[2]>>i) & 1)<<5 |
    ((mask[3]>>i) & 1)<<6 |
    ((mask[3]>>i) & 1)<<7;
    
    _lineB = 0;
    _lineB =
    ((mask[4]>>i) & 1)<<0 |
    ((mask[4]>>i) & 1)<<1 |
    ((mask[5]>>i) & 1)<<2 |
    ((mask[5]>>i) & 1)<<3 |
    ((mask[6]>>i) & 1)<<4 |
    ((mask[6]>>i) & 1)<<5 |
    ((mask[7]>>i) & 1)<<6 |
    ((mask[7]>>i) & 1)<<7;
    
    shiftOutDual(PIN_CLOCK, PIN_DATA_A, PIN_DATA_B, MSBFIRST, _lineA, _lineB);
    shiftOutDual(PIN_CLOCK, PIN_DATA_A, PIN_DATA_B, MSBFIRST, _lineA, _lineB);
    
    //printBits(_lineB);
    //Serial.println();
  }
}

WiFiEventHandler e1, e2;
void setup()
{  
  Serial.begin(115200);
  
  pinMode(PIN_CLOCK, OUTPUT);
  pinMode(PIN_DATA_A, OUTPUT);
  pinMode(PIN_DATA_B, OUTPUT);
  pinMode(PIN_STROBE, OUTPUT);
  analogWrite(PIN_STROBE, 255);
  //digitalWrite(PIN_STROBE, HIGH);


//  static WiFiEventHandler e1, e2;
//
//  Serial.begin(115200);
//  WiFi.mode(WIFI_STA);
//  WiFi.begin(YOUR_WIFI_SSID, YOUR_WIFI_PASSWD);
//  pinMode(2, OUTPUT);
//  digitalWrite(2, HIGH);

  //WiFiManager
  //Local intialization. Once its business is done, there is no need to keep it around
  WiFiManager wifiManager;
  //reset settings - for testing
  //wifiManager.resetSettings();

  //sets timeout until configuration portal gets turned off
  //useful to make it all retry or go to sleep
  //in seconds
  wifiManager.setTimeout(180);
  
  //fetches ssid and pass and tries to connect
  //if it does not connect it starts an access point with the specified name
  //here  "AutoConnectAP"
  //and goes into a blocking loop awaiting configuration
  if(!wifiManager.autoConnect("HangulClockAP")) {
    Serial.println("failed to connect and hit timeout");
    delay(3000);
    //reset and try again, or maybe put it to deep sleep
    ESP.reset();
    delay(5000);
  } 

  //if you get here you have connected to the WiFi
  Serial.println("connected...yeey :)");


  
  NTP.onNTPSyncEvent([](NTPSyncEvent_t ntpEvent) {
    if (ntpEvent) {
      Serial.print("Time Sync error: ");
      if (ntpEvent == noResponse)
        Serial.println("NTP server not reachable");
      else if (ntpEvent == invalidAddress)
        Serial.println("Invalid NTP server address");
    }
    else {
      //Serial.print("Got NTP time: ");
      //Serial.println(NTP.getTimeDateString(NTP.getLastNTPSync()));
    }
  });

  Serial.println("setting onEvent");
  WiFi.onEvent([](WiFiEvent_t e) {
    Serial.printf("Event wifi -----> %d\n", e);
  });
  Serial.println("setting e1");
  e1 = WiFi.onStationModeGotIP(onSTAGotIP);// As soon WiFi is connected, start NTP Client
  onSTAGotIP2();
  e2 = WiFi.onStationModeDisconnected(onSTADisconnected);
}


bool bSeoul = false;

void loop()
{
  static uint16_t counter = 0;
  static uint32_t lastMillis = 0;
  
  //every 1 second show the time
  //every 120 seconds, show the date for 5 seconds
  //every 600 seconds, show Seoul time and date for 120 seconds
  if ((millis() - lastMillis) > 1000) {
    lastMillis = millis();

    if(counter%600==120){
      bSeoul = true;
      NTP.setTimeZone(9);
    }
    if(counter%600==240){
      bSeoul = false;
      NTP.setTimeZone(-5);
    }
    if(counter%120<5){
      showDate(bSeoul);
    }else{
      showTime(bSeoul);
    }

    //give some feedback over serial every 10 seconds
    if(!(counter%10)){
      Serial.print(counter); Serial.print(" ");
      Serial.print(NTP.getTimeDateString()); Serial.print(" ");
      Serial.print(NTP.isSummerTime() ? "Summer Time. " : "Winter Time. ");
      Serial.print("WiFi is ");
      Serial.print(WiFi.isConnected() ? "connected" : "not connected"); Serial.print(". ");
      Serial.print("Uptime: ");
      Serial.print(NTP.getUptimeString()); Serial.print(" since ");
      Serial.println(NTP.getTimeDateString(NTP.getFirstSync()).c_str());
    }
    
    counter++;
  }
}
