scenario = "run4_VisoddballPlusMMN_pronetSZAMP_09042021"; 
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
bitmap {filename = "1.png"; height=1080; width=1440;} nov1;
bitmap {filename = "6.png"; height=1080; width=1440;} nov6;
bitmap {filename = "14.png"; height=1080; width=1440;} nov14;
bitmap {filename = "20.png"; height=1080; width=1440;} nov20;
bitmap {filename = "21.png"; height=1080; width=1440;} nov21;
bitmap {filename = "22.png"; height=1080; width=1440;} nov22;
bitmap {filename = "30.png"; height=1080; width=1440;} nov30;
bitmap {filename = "34.png"; height=1080; width=1440;} nov34;
bitmap {filename = "38.png"; height=1080; width=1440;} nov38;
bitmap {filename = "43.png"; height=1080; width=1440;} nov43;
bitmap {filename = "44.png"; height=1080; width=1440;} nov44;
bitmap {filename = "53.png"; height=1080; width=1440;} nov53;
bitmap {filename = "57.png"; height=1080; width=1440;} nov57;
bitmap {filename = "64.png"; height=1080; width=1440;} nov64;
bitmap {filename = "65.png"; height=1080; width=1440;} nov65;
bitmap {filename = "73.png"; height=1080; width=1440;} nov73;

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

picture { bitmap nov1; x=0; y=0; }n1;
picture { bitmap nov6; x=0; y=0; }n6;
picture { bitmap nov14; x=0; y=0; }n14;
picture { bitmap nov20; x=0; y=0; }n20;
picture { bitmap nov21; x=0; y=0; }n21;
picture { bitmap nov22; x=0; y=0; }n22;
picture { bitmap nov30; x=0; y=0; }n30;
picture { bitmap nov34; x=0; y=0; }n34;
picture { bitmap nov38; x=0; y=0; }n38;
picture { bitmap nov43; x=0; y=0; }n43;
picture { bitmap nov44; x=0; y=0; }n44;
picture { bitmap nov53; x=0; y=0; }n53;
picture { bitmap nov57; x=0; y=0; }n57;
picture { bitmap nov64; x=0; y=0; }n64;
picture { bitmap nov65; x=0; y=0; }n65;
picture { bitmap nov73; x=0; y=0; }n73;

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
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	264	s	16	s	16	s	16	s	16	;
F	32	2	130	s	16	s	16	s	16	s	16	;
n14	128	2	380	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	264	s	16	s	16	Cd	18	s	16	;
F	32	2	164	s	16	s	16	s	16	s	16	;
F	32	2	147	s	16	s	16	s	16	s	16	;
T	64	1	347	s	16	s	16	s	16	s	16	;
F	32	2	280	s	16	s	16	s	16	s	16	;
F	32	2	280	s	16	s	16	s	16	s	16	;
n64	128	2	364	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	Cd	18	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	297	s	16	s	16	s	16	Cd	18	;
T	64	1	214	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	Cd	18	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	214	s	16	s	16	s	16	s	16	;
F	32	2	247	s	16	s	16	s	16	s	16	;
F	32	2	147	s	16	s	16	s	16	s	16	;
T	64	1	397	s	16	s	16	s	16	s	16	;
F	32	2	264	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	Cd	18	s	16	;
F	32	2	197	s	16	s	16	s	16	s	16	;
T	64	1	330	s	16	s	16	Cd	18	s	16	;
F	32	2	180	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	Cd	18	s	16	;
T	64	1	147	s	16	s	16	Cd	18	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	197	s	16	s	16	s	16	s	16	;
F	32	2	164	s	16	s	16	s	16	s	16	;
F	32	2	214	s	16	s	16	s	16	s	16	;
F	32	2	147	s	16	s	16	s	16	s	16	;
n30	128	2	214	s	16	Cd	18	s	16	s	16	;
F	32	2	114	s	16	s	16	s	16	Cd	18	;
F	32	2	297	s	16	s	16	s	16	s	16	;
F	32	2	280	s	16	s	16	Cd	18	s	16	;
F	32	2	297	s	16	s	16	Cd	18	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
n6	128	2	330	s	16	s	16	s	16	s	16	;
F	32	2	314	Cd	18	s	16	s	16	s	16	;
F	32	2	247	s	16	s	16	s	16	Cd	18	;
n73	128	2	214	s	16	s	16	s	16	Cd	18	;
F	32	2	314	s	16	s	16	Cd	18	s	16	;
F	32	2	197	s	16	s	16	s	16	s	16	;
T	64	1	314	s	16	s	16	s	16	Cd	18	;
F	32	2	397	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	Cd	18	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
T	64	1	264	s	16	s	16	s	16	s	16	;
F	32	2	97	Cd	18	s	16	s	16	s	16	;
F	32	2	114	s	16	s	16	s	16	s	16	;
F	32	2	264	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	297	s	16	s	16	s	16	s	16	;
n22	128	2	214	s	16	Cd	18	s	16	s	16	;
F	32	2	247	s	16	s	16	s	16	s	16	;
F	32	2	297	s	16	s	16	s	16	s	16	;
F	32	2	330	Cd	18	s	16	s	16	s	16	;
F	32	2	180	s	16	s	16	s	16	s	16	;
F	32	2	130	Cd	18	s	16	s	16	s	16	;
n65	128	2	180	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	230	s	16	s	16	s	16	s	16	;
F	32	2	164	s	16	s	16	s	16	s	16	;
n21	128	2	364	s	16	s	16	s	16	s	16	;
F	32	2	164	s	16	Cd	18	s	16	s	16	;
F	32	2	147	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	97	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
n43	128	2	97	Cd	18	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
n53	128	2	314	Cd	18	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	264	Cd	18	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	180	Cd	18	s	16	s	16	s	16	;
n57	128	2	230	Cd	18	s	16	s	16	s	16	;
F	32	2	230	s	16	s	16	s	16	s	16	;
F	32	2	180	s	16	s	16	Cd	18	s	16	;
F	32	2	130	s	16	Cd	18	s	16	s	16	;
F	32	2	114	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
T	64	1	347	s	16	Cd	18	s	16	s	16	;
F	32	2	97	s	16	s	16	s	16	s	16	;
F	32	2	347	Cd	18	s	16	s	16	s	16	;
T	64	1	247	Cd	18	s	16	s	16	s	16	;
F	32	2	247	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	Cd	18	s	16	;
F	32	2	130	s	16	s	16	s	16	s	16	;
n38	128	2	130	s	16	s	16	s	16	s	16	;
F	32	2	180	Cd	18	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	Cd	18	s	16	;
F	32	2	397	s	16	Cd	18	s	16	s	16	;
F	32	2	164	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	Cd	18	s	16	;
F	32	2	280	s	16	s	16	s	16	s	16	;
T	64	1	364	s	16	s	16	s	16	Cd	18	;
F	32	2	397	s	16	s	16	s	16	s	16	;
F	32	2	147	Cd	18	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	Cd	18	;
F	32	2	380	s	16	s	16	s	16	s	16	;
n44	128	2	380	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	164	Cd	18	s	16	s	16	s	16	;
T	64	1	214	s	16	s	16	s	16	s	16	;
F	32	2	280	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	Cd	18	;
F	32	2	397	s	16	s	16	s	16	s	16	;
F	32	2	230	s	16	s	16	s	16	s	16	;
F	32	2	114	s	16	s	16	Cd	18	s	16	;
n34	128	2	114	s	16	s	16	s	16	s	16	;
F	32	2	97	s	16	s	16	s	16	s	16	;
F	32	2	280	s	16	s	16	Cd	18	s	16	;
F	32	2	314	s	16	s	16	s	16	Cd	18	;
F	32	2	197	s	16	s	16	Cd	18	s	16	;
F	32	2	97	s	16	s	16	s	16	s	16	;
T	64	1	330	s	16	s	16	s	16	s	16	;
F	32	2	130	s	16	s	16	Cd	18	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	Cd	18	s	16	;
n20	128	2	114	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	164	s	16	Cd	18	s	16	s	16	;
F	32	2	230	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	330	Cd	18	s	16	s	16	s	16	;
F	32	2	397	s	16	s	16	s	16	s	16	;
T	64	1	347	s	16	Cd	18	s	16	s	16	;
F	32	2	330	Cd	18	s	16	s	16	s	16	;
F	32	2	147	s	16	Cd	18	s	16	s	16	;
F	32	2	397	s	16	s	16	s	16	s	16	;
n1	128	2	347	s	16	s	16	s	16	s	16	;
F	32	2	230	s	16	s	16	Cd	18	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	247	s	16	s	16	s	16	s	16	;
F	32	2	264	s	16	s	16	s	16	Cd	18	;
T	64	1	314	s	16	s	16	s	16	s	16	;
F	32	2	280	s	16	Cd	18	s	16	s	16	;
F	32	2	114	s	16	s	16	s	16	s	16	;
F	32	2	180	s	16	s	16	s	16	s	16	;
F	32	2	230	s	16	s	16	Cd	18	s	16	;
T	64	1	197	s	16	s	16	s	16	Cd	18	;
F	32	2	97	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	Cd	18	s	16	s	16	;
F	32	2	380	s	16	s	16	Cd	18	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
T	64	1	197	s	16	s	16	s	16	Cd	18	;
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