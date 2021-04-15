scenario = "run3_VisoddballPlusMMN_pronetSZAMP_09042021"; 
#========================================
#
#Visual Task:
#
#Tone1 16
#Tone2 18
#Response 17
#Standard 32
#Target 64
#Novel 128
#
#========================================
#attenuation updated for ER1 insert earphones and X-fi gamer card
pcl_file = "nvMMNCommands.pcl";
scenario_type = trials	; 
write_codes = true	;
response_matching = simple_matching	;
active_buttons = 2;
button_codes = 17, 117;
target_button_codes = 17,117;
pulse_width = 5	;
default_trial_type = fixed	;       
default_background_color = 255,255,255	;
 
begin	;               
#standard tone (50ms 633Hz, 10ms rise/fall):
sound{  wavefile {filename = "633standard.wav"	;}	; attenuation = 0.283	;} s	; 

#Combination Deviant (100ms 1000Hz, 10ms rise/fall)
sound{ wavefile {filename = "1000dfDeviant.wav"	;}	; attenuation = 0.283	;} Cd	;

#silence tone placeholder
sound{ wavefile {filename = "633standard.wav"	;}	; attenuation = 1	;} silence	;

picture {   
      bitmap { filename = "default.png"; 
      width = 1920;
      height = 1080;};                
      x = 0; y = 0; } default;
# location and name of the stimuli to be used in the experiment
bitmap {filename = "T.png";} Targ;
bitmap {filename = "F.png";} Freq;
bitmap {filename = "11.png"; height=1080; width=1440;} nov11;
bitmap {filename = "12.png"; height=1080; width=1440;} nov12;
bitmap {filename = "25.png"; height=1080; width=1440;} nov25;
bitmap {filename = "26.png"; height=1080; width=1440;} nov26;
bitmap {filename = "32.png"; height=1080; width=1440;} nov32;
bitmap {filename = "36.png"; height=1080; width=1440;} nov36;
bitmap {filename = "39.png"; height=1080; width=1440;} nov39;
bitmap {filename = "40.png"; height=1080; width=1440;} nov40;
bitmap {filename = "42.png"; height=1080; width=1440;} nov42;
bitmap {filename = "46.png"; height=1080; width=1440;} nov46;
bitmap {filename = "49.png"; height=1080; width=1440;} nov49;
bitmap {filename = "50.png"; height=1080; width=1440;} nov50;
bitmap {filename = "54.png"; height=1080; width=1440;} nov54;
bitmap {filename = "72.png"; height=1080; width=1440;} nov72;
bitmap {filename = "76.png"; height=1080; width=1440;} nov76;
bitmap {filename = "78.png"; height=1080; width=1440;} nov78;

#T is for target
picture {
		bitmap Targ;
		x = 0; y = 0;		
}T;

#F is for frequent (or Fstandard, where the f is silent)
picture {
		bitmap Freq;
		x = 0; y = 0;		
}F;

picture { bitmap nov11; x=0; y=0; }n11;
picture { bitmap nov12; x=0; y=0; }n12;
picture { bitmap nov25; x=0; y=0; }n25;
picture { bitmap nov26; x=0; y=0; }n26;
picture { bitmap nov32; x=0; y=0; }n32;
picture { bitmap nov36; x=0; y=0; }n36;
picture { bitmap nov39; x=0; y=0; }n39;
picture { bitmap nov40; x=0; y=0; }n40;
picture { bitmap nov42; x=0; y=0; }n42;
picture { bitmap nov46; x=0; y=0; }n46;
picture { bitmap nov49; x=0; y=0; }n49;
picture { bitmap nov50; x=0; y=0; }n50;
picture { bitmap nov54; x=0; y=0; }n54;
picture { bitmap nov72; x=0; y=0; }n72;
picture { bitmap nov76; x=0; y=0; }n76;
picture { bitmap nov78; x=0; y=0; }n78;

trial {
	stimulus_event {
	picture{text { caption = "3"	; 
               	font_size = 48	;
               	font_color = 0,0,0	;}	;
		x = 0	; y = 0	;}	;
        duration = 1500	;
        code = "83"	;
        
        port_code = 254;
     	}	;

	stimulus_event {
	picture{text { caption = "2"	; 
                font_size = 48	;
                font_color = 0,0,0	;}	;
          	x = 0	; y = 0	;}	;
	time = 2000	; 
	duration = 1500	;
	code = "82"	;
       	}	;  
       
	stimulus_event {
	picture{text { caption = "1"	; 
                font_size = 48	;
                font_color = 0,0,0	;}	;
           	x = 0	; y = 0	;}	;
         time = 4000	; 
         duration = 1500	;
         code = "81"	; 
         
         }	;        
}	;

TEMPLATE "nvMMN.tem"{   
#pic	word	picPort	wordPort	targResp	picTime	wrdTime	snd1	s1Port	snd2	s2Port	snd3	s3Port	snd4	s4Port	snd5	s5Port	snd6	s6Port ;	
pic	picPort	targResp	picTime	snd1	s1Port	snd2	s2Port	snd3	s3Port	snd4	s4Port;
F	32	2	264	s	16	s	16	s	16	s	16	;
F	32	2	180	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
T	64	1	380	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	230	s	16	s	16	s	16	s	16	;
F	32	2	397	s	16	s	16	s	16	s	16	;
F	32	2	130	s	16	s	16	s	16	s	16	;
T	64	1	247	s	16	s	16	s	16	s	16	;
F	32	2	97	s	16	s	16	s	16	s	16	;
F	32	2	97	s	16	s	16	s	16	s	16	;
F	32	2	197	s	16	s	16	Cd	18	s	16	;
F	32	2	97	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	130	s	16	Cd	18	s	16	s	16	;
T	64	1	314	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	Cd	18	s	16	s	16	;
n11	128	2	280	s	16	s	16	s	16	s	16	;
F	32	2	130	s	16	s	16	s	16	Cd	18	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	114	s	16	s	16	s	16	s	16	;
F	32	2	230	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	180	s	16	s	16	s	16	s	16	;
n54	128	2	164	Cd	18	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	Cd	18	;
F	32	2	347	s	16	s	16	Cd	18	s	16	;
F	32	2	147	s	16	s	16	s	16	s	16	;
F	32	2	114	s	16	s	16	Cd	18	s	16	;
T	64	1	347	s	16	s	16	s	16	s	16	;
F	32	2	164	s	16	s	16	s	16	s	16	;
F	32	2	364	Cd	18	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	164	s	16	s	16	s	16	s	16	;
F	32	2	230	s	16	s	16	s	16	s	16	;
F	32	2	397	s	16	s	16	s	16	Cd	18	;
T	64	1	230	s	16	s	16	s	16	s	16	;
F	32	2	180	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	264	s	16	s	16	Cd	18	s	16	;
n40	128	2	347	s	16	s	16	Cd	18	s	16	;
F	32	2	247	s	16	s	16	s	16	s	16	;
F	32	2	164	Cd	18	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
T	64	1	380	s	16	s	16	s	16	s	16	;
F	32	2	297	Cd	18	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	280	s	16	s	16	Cd	18	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	Cd	18	;
T	64	1	197	s	16	s	16	s	16	s	16	;
F	32	2	214	s	16	s	16	s	16	s	16	;
F	32	2	397	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	214	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
n42	128	2	347	s	16	s	16	Cd	18	s	16	;
F	32	2	330	s	16	s	16	Cd	18	s	16	;
F	32	2	380	s	16	s	16	Cd	18	s	16	;
T	64	1	364	s	16	s	16	s	16	s	16	;
F	32	2	380	Cd	18	s	16	s	16	s	16	;
F	32	2	214	s	16	Cd	18	s	16	s	16	;
F	32	2	147	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	297	s	16	s	16	s	16	Cd	18	;
T	64	1	347	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	197	s	16	s	16	s	16	s	16	;
T	64	1	297	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	130	s	16	s	16	s	16	s	16	;
F	32	2	147	Cd	18	s	16	s	16	s	16	;
F	32	2	380	s	16	Cd	18	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	Cd	18	s	16	s	16	;
T	64	1	380	s	16	Cd	18	s	16	s	16	;
F	32	2	114	Cd	18	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	297	s	16	s	16	s	16	s	16	;
F	32	2	280	s	16	s	16	s	16	s	16	;
F	32	2	247	s	16	Cd	18	s	16	s	16	;
n76	128	2	114	s	16	s	16	s	16	s	16	;
F	32	2	264	s	16	s	16	s	16	s	16	;
F	32	2	297	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
T	64	1	264	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	247	s	16	s	16	Cd	18	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
T	64	1	97	s	16	s	16	Cd	18	s	16	;
F	32	2	280	s	16	s	16	s	16	s	16	;
F	32	2	214	Cd	18	s	16	s	16	s	16	;
F	32	2	380	s	16	Cd	18	s	16	s	16	;
n25	128	2	197	s	16	Cd	18	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	114	s	16	s	16	s	16	Cd	18	;
F	32	2	180	s	16	s	16	s	16	s	16	;
F	32	2	130	Cd	18	s	16	s	16	s	16	;
n46	128	2	164	s	16	s	16	s	16	s	16	;
F	32	2	230	s	16	Cd	18	s	16	s	16	;
F	32	2	97	s	16	s	16	s	16	s	16	;
T	64	1	364	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	Cd	18	s	16	s	16	;
F	32	2	297	s	16	s	16	s	16	s	16	;
F	32	2	180	s	16	s	16	s	16	s	16	;
F	32	2	164	s	16	Cd	18	s	16	s	16	;
n12	128	2	397	s	16	s	16	s	16	s	16	;
F	32	2	314	Cd	18	s	16	s	16	s	16	;
F	32	2	197	s	16	s	16	s	16	s	16	;
F	32	2	264	s	16	s	16	s	16	Cd	18	;
F	32	2	114	s	16	s	16	s	16	s	16	;
T	64	1	147	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	247	Cd	18	s	16	s	16	s	16	;
n72	128	2	380	s	16	s	16	s	16	Cd	18	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	247	Cd	18	s	16	s	16	s	16	;
n50	128	2	180	s	16	s	16	s	16	s	16	;
F	32	2	130	Cd	18	s	16	s	16	s	16	;
F	32	2	164	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	Cd	18	s	16	s	16	;
F	32	2	280	s	16	s	16	s	16	Cd	18	;
n26	128	2	214	s	16	s	16	s	16	s	16	;
F	32	2	97	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	Cd	18	s	16	;
F	32	2	230	s	16	s	16	s	16	s	16	;
F	32	2	147	s	16	s	16	s	16	s	16	;
F	32	2	230	Cd	18	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
n36	128	2	280	s	16	s	16	s	16	s	16	;
F	32	2	347	Cd	18	s	16	s	16	s	16	;
F	32	2	197	s	16	s	16	s	16	s	16	;
F	32	2	147	s	16	s	16	s	16	Cd	18	;
F	32	2	364	s	16	s	16	Cd	18	s	16	;
F	32	2	280	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	Cd	18	s	16	;
n39	128	2	397	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	Cd	18	;
F	32	2	214	s	16	s	16	Cd	18	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
T	64	1	364	s	16	s	16	s	16	Cd	18	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	330	Cd	18	s	16	s	16	Cd	18	;
F	32	2	147	s	16	s	16	s	16	s	16	;
n49	128	2	314	s	16	Cd	18	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	314	Cd	18	s	16	s	16	s	16	;
F	32	2	114	s	16	s	16	s	16	s	16	;
n32	128	2	397	s	16	s	16	s	16	s	16	;
F	32	2	297	s	16	Cd	18	s	16	s	16	;
F	32	2	130	s	16	s	16	s	16	s	16	;
F	32	2	364	Cd	18	s	16	s	16	s	16	;
n78	128	2	364	s	16	s	16	s	16	Cd	18	;
}	;

trial {
stimulus_event {
      picture{ text { caption = "+"; 
               font_size = 28;
               font_color = 255,255,255;
               };
		x = 0; y = 0;
      };  
      time = 1000;
		duration = 1000;
		port_code = 255;
      }; 
};