# szAMPexperiment
schizophrenia AMP presentation versions of paradigms

This repository contains presentation (www.neurobs.com) versions of the pronet EEG paradigms.  When you download and unzip the experiment on your local stimulus presentation PC, you will encounter several errors on startup because the computer this experiment was created on likely had different hardware compared to your local PC.  Anticipated issues include:

<em>Response Devices not found...</em><br>
The uploaded experiment uses the keyboard for the response device.  If you have a button box or other device that you like, update this accordingly.  Space bar is the target response button on the uploaded version (but note that the space bar is response button #1 or #2, depending on the scenario).

<em>Sound Device not found...</em><br>
The uploaded experiment uses a specific soundblaster audio card on an old PC, you have to select your specific card, and test it, as shown below:<br>
![alt text](http://www.bieegl.net/broach/support/presSoundtest2.png)<br>
If possible, direct X hardware is recommended for timing, but see presentation's website for timing tests and sound-card specific recommendations

<em>Video Device/Driver not found...</em><br>
Your video card may or may not cause this error.  Be sure to double-check the resolution (1920x1080x32 recommended), as shown below:<br>

![alt text](http://www.bieegl.net/broach/support/1920x1080.png)

<em>Output Port Device not found...</em><br>
The uploaded experiment looks for a parallel port (to send TTL pulse trigger/event codes to EEG acquisition software) labeled LPT3.  Yours could be LPT1, or something else entirely.  This may need to be changed to set up your local experiment to output events to EEG hardware (however you accomplish that).  See below:<br>


![alt text](http://www.bieegl.net/broach/support/presPorttest2.png)<br>

Please note, most experiments have a 5 or 10ms pulse duration, but if your sampling rate is slow, this may not be long enough.  Test to be sure all event codes are collected in EEG software.
<br>

<hr>
<b>NOTES:</b>
<br><br>
1. Sound attenuation levels are set to 0.3, which means sounds will be played at 70% of sound card maximum intensity output.  This may not be ideal in your lab, and you should calibrate sound intensity levels to meet your needs.
<br><br>
2. All scenarios begin with a 254 event code and end with a 255 event code.  These can be used to automatically start and stop your EEG recording software, respectively, if the program has such an option.
