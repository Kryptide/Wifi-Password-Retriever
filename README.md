# Wifi Password Retriever
This BATCH file uses a powershell command to retrieve relevent information about each previously connected wifi network.
This information includes Wifi Network Profile Information, Connectivity Settings, Security Settings, and Cost Settings. 
Below is an example output.

Profile <SSID> on interface Wi-Fi: 
======================================================================= 

Applied: All User Profile    

Profile information 
------------------- 
    Version                : 1
    Type                   : Wireless LAN
    Name                   : <SSID>
    Control options        : 
        Connection mode    : Connect automatically
        Network broadcast  : Connect only if this network is broadcasting
        AutoSwitch         : Do not switch to other networks
        MAC Randomization  : Disabled

Connectivity settings 
--------------------- 
    Number of SSIDs        : 1
    SSID name              : "SSID"
    Network type           : Infrastructure
    Radio type             : [ Any Radio Type ]
    Vendor extension          : Not present

Security settings 
----------------- 
    Authentication         : WPA2-Personal
    Cipher                 : CCMP
    Authentication         : WPA2-Personal
    Cipher                 : GCMP
    Security key           : Present
    Key Content            : <WIFI PASSWORD>

Cost settings 
------------- 
    Cost                   : Unrestricted
    Congested              : No
    Approaching Data Limit : No
    Over Data Limit        : No
    Roaming                : No
    Cost Source            : Default

# Output File:
This file will be saved in the same directory as the BATCH file and will be named "Wifi_Passwords.txt"
You can change the name of the output file by editing it in the powershell script.
