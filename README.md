# aqua-controller
##Aqua Controller Repository

![alt text](https://github.com/movoleg/aqua-controller/blob/master/media/2019-08-27%2016.18.35.png)

Please see the reference between ESP and UI versions below.

**ESP32 _Light_ v0.2.4 & UI v0.5.4**
- Fixed issue with temperature sensor

**ESP32 _Light_ v0.2.3 & UI v0.5.4** 
- Implemented static ssid and password for WiFi in access point mode
- Implemented working the External Preset button in cluster mode
- Fixed issue with Apply Preset with bounded time

**ESP32 _Light_ v0.2.2 & UI v0.5.3** 
- fixed issue with adding a point in FireFox/Safari or iPhone/iPad (added point had null time value)

**ESP32 _Light_ v0.2.2 & UI v0.5.2**
- Implementing Schedules feature - implemented apply, import, export, delete functions
- Implementing Schedules feature - implemented save current schedule to schedules libs
- Added Profile info to Global Configs
- Added auto synch clock feature (not implemented synchronization)

**ESP32 _Light_ v0.2.1 & UI v0.5.1**
- Added form validations to Point and Preset forms
- Added delete confirmation dialog
- Fixed issues with UDP IP Address 

**ESP32 _Light_ v0.2.0 & UI v0.5.0**
- Fixed rendering issue in iPad/iPhone

**ESP32 _Light_ v0.1.9 & UI v0.4.11**
- Added managing of Clock pins
- Added managing of Temp Sensor pin
- Added ability to control the Fan depending on the Light schedule


**ESP32 _Light_ v0.1.8 & UI v0.4.10**
- Fixed issue with disconnecting of WiFi
- Added Timezone&Daylight
- Added WiFi signal strength level


**ESP32 _Light_ v0.1.7 & UI v0.4.9**
- Fixed adaptation feature


**ESP32 _Light_ v0.1.6 & UI v0.4.8**
- Added Spectrum wave axis to main chart
- Implemented editable pins for channels and other things like fan and preset external button
- Added visualization power of lights


**ESP32 _Light_ v0.1.5 & UI v0.4.7**
- Added Spectrum chart to Scheduler chart
- Implemented turn on/off selected preset by external button (Boot button)
- Fixed a bug which occurred when the user tries to add a new preset
- Added default files with points, presets and settings.
- Configured as AccessPoint `192.168.4.1` with default ssid/password: `AquaLight/12345678`


**ESP32 _Light_ v0.1.3 & UI v0.4.5**
- Added supporting 9 channels
- Added ability to activate/deactivate channels
- Added ability to change position of channel
- Added ability to rename and change color for channel
- Added demo feature
- Fixed small old issues
- Fixed cluster mechanizm
- Fixed default channel naming
- Implemented demo mode feature
- Added throttle to Apply function
- Changed Spectrum component


**ESP32 _Light_ v0.1.2 & UI v0.4.4**
- Added BootLoad tool


**ESP32 _Light_ v0.1.2 & UI v0.4.4**
- Added tempDeltaFan/hysteresis settings for light's fan


**ESP32 _Dispenser_ v0.1.1 & UI v0.4.3**
- Added a fireware for Dispenser


**ESP32 _Light_ v0.1.1 & UI v0.4.3**
- Hide IP, Gateway and Mask fields for the AccessPoint mode


**ESP32 _Light_ v0.1.1 & UI v0.4.1**
- Implemented of working the controller in the AccessPoint mode


**ESP32 _Light_ v0.1.0 & UI v0.4.0&v0.4.1**
- UI: 0.4.0 + 0.4.1
- ESP: 0.1.0
- refactored structure of files



## Instructions: How to load a firmware to ESP32 controller.
1. Checkout source code (download)
2. Go to _/utils_ folder: `cd utils`
3. Connect ESP32 to USB port
4. Execute: `./flashme.sh /dev/cu.SLAB_USBtoUART` 

5. Connect your device (computer/smartphone) to WiFi: `MTS-50_2G` / `050050050`
6. Open _http://192.168.4.1_ in a browser
7. Go to Global Settings -> WiFi and change your WiFi name and password and save changes
8. Connect your device to your WiFi
9. Open _http://192.168.1.91_ in a browser
10. **Done!**

## Instructions: How to configure the controller.
**Please follow by this instruction:**

**_AFTER 0.2.3 ver._**
1. Use charger from Android with microUSB. (Skip this step if you have already installed the controller to the Lights)
2. Connect the card to microUSB. (Skip this step if you have already installed the controller to the Lights)
3. Find WiFi access point in your device (laptop) with name: Light_XXXXXXXXX
4. Connect to the WiFi with password: 12345678 (sometimes the device (PC/Mac/iPhone/Android) switches back to previous WiFi with internet access)
5. Open Chrome browser and go to url: http://192.168.4.1
6. Go to GlobalSettings -> WiFi
7. Change SSID and password (also check Local IP, Gateway, Mask) from your WiFi router (connect to your local network to see this info) and press Save.
8. Restart the controller (turn it off, wait 5-10 seconds, turn it on)
9. Connect the device (PC/Mac/iPhone/Android) to your WiFi access point (router)
10. Open browser and enter url which you entered in Local IP. Usually it looks like: http://192.168.1.91
11. You should see Dashboard page. If your Local IP is not 192.168.1.91 then press by SCAN NODES button, SAVE button (sometimes need to press twise). You should see time, channes values, green plug icon and your local IP in the box.
12. Done. Open LED -> Channels page and you should see the scheduled chart. Open LED -> Presets page and you should see presets.

-----(Skip these steps if you have already installed the controller to the Lights)------
13. Open/Unscrew the front side of Lights
14. Remove old the card and install new one.
15. Assemble the Light.
16. It is ready to work.

**_BEFORE 0.2.2 ver._** 
1. Use charger from Android with microUSB. (Skip this step if you have already installed the controller to the Lights)
2. Connect the card to microUSB. (Skip this step if you have already installed the controller to the Lights)
3. Find WiFi access point in your device (laptop) with name: MTS-50_2G_AP
4. Connect to the WiFi with password: 050050050 (sometimes the device re-connect to previous wifi with internet access)
5. Open Chrome browser and go to url: http://192.168.4.1
6. Go to GlobalSettings -> WiFi
7. Change SSID and password (also check Local IP, Gateway, Mask) from your WiFi router (connect to your local network to see this info) and press Save.
8. Restart the controller (turn it off, wait 5-10 seconds, turn it on)
9. Connect the device to your WiFi access point (router)
10. Open browser and enter url which you entered in Local IP. Usually it looks like: http://192.168.1.91
11. You should see Dashboard page. If your Local IP is not 192.168.1.91 then press by SCAN NODES button, SAVE button (sometimes need to press twise). You should see time, channes values, green plug icon and your local IP in the box.
12. Done. Open LED -> Channels page and you should see the scheduled chart. Open LED -> Presets page and you should see presets.

-----(Skip these steps if you have already installed the controller to the Lights)------
13. Open/Unscrew the front side of Lights
14. Remove old the card and install new one.
15. Assemble the Light.
16. It is ready to work.

## Screenshots

Dashboard page with all attached controllers (not only light controllers but PH, Dispenser, Wave Pump and other)
![alt text](https://github.com/movoleg/aqua-controller/blob/master/media/2019-08-27%2016.18.31.png)

Main page of light controller where you can configure a light schedule 
![alt text](https://github.com/movoleg/aqua-controller/blob/master/media/2019-08-27%2016.18.29.png)

Add/Edit point on the scheduler/chart
![alt text](https://github.com/movoleg/aqua-controller/blob/master/media/2019-08-27%2016.18.32.png)

Presets page where you can apply any preset in any time
![alt text](https://github.com/movoleg/aqua-controller/blob/master/media/2019-08-27%2016.18.30.png)

Settings page with flexible configurations
![alt text](https://github.com/movoleg/aqua-controller/blob/master/media/2019-08-27%2016.18.34.png)

Settings channel page for setup PINs, Color, Name, Power, Spectrum and Order for each channel
![alt text](https://github.com/movoleg/aqua-controller/blob/master/media/2019-08-27%2016.18.37.png)
activate or deactivate any channel. Select type of channel: Dimmable or Switch mode (for T5)
![alt text](https://github.com/movoleg/aqua-controller/blob/master/media/2019-08-27%2016.18.33.png)

![alt text](https://github.com/movoleg/aqua-controller/blob/master/media/2019-08-27%2016.18.36.png)