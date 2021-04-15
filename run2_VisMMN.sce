scenario = "run2_VisoddballPlusMMN_pronetSZAMP_09042021"; 
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
      };                
      x = 0; y = 0; } default;

# location and name of the stimuli to be used in the experiment
bitmap {filename = "T.png";} Targ;
bitmap {filename = "F.png";} Freq;
bitmap {filename = "2.png"; height=1080; width=1440;} nov2;
bitmap {filename = "4.png"; height=1080; width=1440;} nov4;
bitmap {filename = "13.png"; height=1080; width=1440;} nov13;
bitmap {filename = "17.png"; height=1080; width=1440;} nov17;
bitmap {filename = "19.png"; height=1080; width=1440;} nov19;
bitmap {filename = "24.png"; height=1080; width=1440;} nov24;
bitmap {filename = "28.png"; height=1080; width=1440;} nov28;
bitmap {filename = "41.png"; height=1080; width=1440;} nov41;
bitmap {filename = "45.png"; height=1080; width=1440;} nov45;
bitmap {filename = "48.png"; height=1080; width=1440;} nov48;
bitmap {filename = "57.png"; height=1080; width=1440;} nov57;
bitmap {filename = "60.png"; height=1080; width=1440;} nov60;
bitmap {filename = "61.png"; height=1080; width=1440;} nov61;
bitmap {filename = "68.png"; height=1080; width=1440;} nov68;
bitmap {filename = "70.png"; height=1080; width=1440;} nov70;
bitmap {filename = "80.png"; height=1080; width=1440;} nov80;

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

picture { bitmap nov2; x=0; y=0; }n2;
picture { bitmap nov4; x=0; y=0; }n4;
picture { bitmap nov13; x=0; y=0; }n13;
picture { bitmap nov17; x=0; y=0; }n17;
picture { bitmap nov19; x=0; y=0; }n19;
picture { bitmap nov24; x=0; y=0; }n24;
picture { bitmap nov28; x=0; y=0; }n28;
picture { bitmap nov41; x=0; y=0; }n41;
picture { bitmap nov45; x=0; y=0; }n45;
picture { bitmap nov48; x=0; y=0; }n48;
picture { bitmap nov57; x=0; y=0; }n57;
picture { bitmap nov60; x=0; y=0; }n60;
picture { bitmap nov61; x=0; y=0; }n61;
picture { bitmap nov68; x=0; y=0; }n68;
picture { bitmap nov70; x=0; y=0; }n70;
picture { bitmap nov80; x=0; y=0; }n80;

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
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	197	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
T	64	1	247	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	114	s	16	s	16	s	16	s	16	;
T	64	1	380	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	130	s	16	s	16	s	16	s	16	;
F	32	2	164	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	280	Cd	18	s	16	s	16	Cd	18	;
F	32	2	330	s	16	s	16	s	16	s	16	;
T	64	1	180	s	16	s	16	s	16	s	16	;
F	32	2	147	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
T	64	1	364	Cd	18	s	16	s	16	s	16	;
F	32	2	197	s	16	s	16	s	16	s	16	;
F	32	2	247	s	16	s	16	s	16	s	16	;
F	32	2	164	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	Cd	18	s	16	s	16	;
F	32	2	397	s	16	Cd	18	s	16	s	16	;
F	32	2	180	s	16	s	16	s	16	s	16	;
n70	128	2	347	s	16	s	16	s	16	s	16	;
F	32	2	297	Cd	18	s	16	s	16	s	16	;
F	32	2	114	s	16	s	16	s	16	s	16	;
F	32	2	147	s	16	Cd	18	s	16	s	16	;
F	32	2	280	s	16	Cd	18	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
T	64	1	247	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	97	s	16	s	16	Cd	18	s	16	;
T	64	1	264	s	16	s	16	s	16	s	16	;
F	32	2	280	s	16	s	16	Cd	18	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	147	s	16	s	16	s	16	Cd	18	;
F	32	2	314	s	16	s	16	s	16	Cd	18	;
F	32	2	397	s	16	s	16	s	16	s	16	;
n60	128	2	197	Cd	18	s	16	s	16	s	16	;
F	32	2	297	s	16	Cd	18	s	16	s	16	;
F	32	2	230	s	16	s	16	s	16	s	16	;
F	32	2	247	s	16	s	16	s	16	s	16	;
F	32	2	230	s	16	Cd	18	s	16	s	16	;
F	32	2	97	s	16	s	16	s	16	s	16	;
F	32	2	330	Cd	18	s	16	s	16	s	16	;
n17	128	2	364	s	16	s	16	s	16	s	16	;
F	32	2	180	s	16	s	16	s	16	s	16	;
F	32	2	197	Cd	18	s	16	s	16	s	16	;
n4	128	2	380	s	16	s	16	Cd	18	s	16	;
F	32	2	197	s	16	s	16	s	16	s	16	;
F	32	2	264	s	16	s	16	s	16	Cd	18	;
F	32	2	314	s	16	s	16	s	16	Cd	18	;
F	32	2	180	s	16	s	16	s	16	s	16	;
F	32	2	214	s	16	s	16	s	16	s	16	;
F	32	2	297	s	16	s	16	s	16	s	16	;
T	64	1	380	s	16	Cd	18	s	16	s	16	;
F	32	2	230	s	16	Cd	18	s	16	s	16	;
F	32	2	214	s	16	s	16	s	16	s	16	;
T	64	1	130	s	16	s	16	s	16	s	16	;
F	32	2	264	s	16	s	16	Cd	18	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
T	64	1	364	s	16	Cd	18	s	16	s	16	;
F	32	2	197	s	16	s	16	s	16	s	16	;
F	32	2	214	Cd	18	s	16	s	16	Cd	18	;
n61	128	2	364	s	16	s	16	s	16	s	16	;
F	32	2	264	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	Cd	18	s	16	s	16	;
F	32	2	280	s	16	s	16	s	16	s	16	;
F	32	2	130	s	16	s	16	s	16	Cd	18	;
T	64	1	397	s	16	s	16	s	16	s	16	;
F	32	2	297	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	Cd	18	s	16	;
T	64	1	247	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	214	s	16	Cd	18	s	16	s	16	;
F	32	2	97	s	16	s	16	Cd	18	s	16	;
F	32	2	264	s	16	s	16	s	16	s	16	;
T	64	1	347	s	16	s	16	s	16	s	16	;
F	32	2	147	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	147	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	Cd	18	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	347	Cd	18	s	16	s	16	Cd	18	;
n41	128	2	280	s	16	s	16	s	16	s	16	;
F	32	2	297	s	16	s	16	Cd	18	s	16	;
F	32	2	314	s	16	s	16	s	16	Cd	18	;
F	32	2	280	s	16	s	16	s	16	s	16	;
n48	128	2	397	s	16	s	16	s	16	Cd	18	;
F	32	2	230	s	16	s	16	s	16	s	16	;
F	32	2	230	s	16	s	16	s	16	s	16	;
n2	128	2	230	Cd	18	s	16	s	16	s	16	;
F	32	2	147	s	16	s	16	Cd	18	s	16	;
F	32	2	114	s	16	s	16	s	16	s	16	;
F	32	2	214	Cd	18	s	16	s	16	s	16	;
n68	128	2	397	s	16	s	16	s	16	s	16	;
F	32	2	180	s	16	Cd	18	s	16	s	16	;
F	32	2	97	s	16	s	16	s	16	s	16	;
F	32	2	247	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
T	64	1	297	s	16	s	16	s	16	s	16	;
F	32	2	97	Cd	18	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	Cd	18	s	16	;
F	32	2	130	s	16	s	16	s	16	s	16	;
T	64	1	380	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	280	s	16	s	16	s	16	s	16	;
F	32	2	180	s	16	s	16	s	16	s	16	;
n57	128	2	380	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	Cd	18	s	16	s	16	;
F	32	2	264	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	Cd	18	s	16	s	16	;
F	32	2	330	Cd	18	s	16	s	16	s	16	;
T	64	1	330	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	Cd	18	;
F	32	2	214	s	16	s	16	s	16	s	16	;
F	32	2	130	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
n24	128	2	330	Cd	18	s	16	s	16	Cd	18	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	Cd	18	s	16	s	16	;
F	32	2	97	s	16	s	16	s	16	s	16	;
n28	128	2	114	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	Cd	18	s	16	s	16	;
F	32	2	247	s	16	s	16	s	16	s	16	;
F	32	2	214	s	16	s	16	s	16	Cd	18	;
F	32	2	314	s	16	s	16	s	16	s	16	;
n19	128	2	130	s	16	s	16	s	16	s	16	;
F	32	2	164	s	16	Cd	18	s	16	s	16	;
F	32	2	347	s	16	s	16	Cd	18	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	Cd	18	;
n13	128	2	114	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	Cd	18	;
F	32	2	297	s	16	s	16	s	16	s	16	;
T	64	1	180	s	16	s	16	s	16	s	16	;
F	32	2	130	s	16	s	16	Cd	18	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	397	s	16	s	16	Cd	18	s	16	;
F	32	2	114	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
n45	128	2	230	Cd	18	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	264	s	16	s	16	s	16	Cd	18	;
F	32	2	397	s	16	s	16	s	16	s	16	;
F	32	2	97	s	16	s	16	s	16	Cd	18	;
F	32	2	147	s	16	s	16	s	16	s	16	;
n80	128	2	330	s	16	s	16	s	16	Cd	18	;
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