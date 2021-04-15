scenario = "run1_VisoddballPlusMMN_pronetSZAMP_09042021"; 
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
bitmap {filename = "3.png"; height=1080; width=1440;} nov3;
bitmap {filename = "15.png"; height=1080; width=1440;} nov15;
bitmap {filename = "16.png"; height=1080; width=1440;} nov16;
bitmap {filename = "27.png"; height=1080; width=1440;} nov27;
bitmap {filename = "31.png"; height=1080; width=1440;} nov31;
bitmap {filename = "33.png"; height=1080; width=1440;} nov33;
bitmap {filename = "35.png"; height=1080; width=1440;} nov35;
bitmap {filename = "37.png"; height=1080; width=1440;} nov37;
bitmap {filename = "56.png"; height=1080; width=1440;} nov56;
bitmap {filename = "59.png"; height=1080; width=1440;} nov59;
bitmap {filename = "62.png"; height=1080; width=1440;} nov62;
bitmap {filename = "63.png"; height=1080; width=1440;} nov63;
bitmap {filename = "69.png"; height=1080; width=1440;} nov69;
bitmap {filename = "71.png"; height=1080; width=1440;} nov71;
bitmap {filename = "75.png"; height=1080; width=1440;} nov75;
bitmap {filename = "79.png"; height=1080; width=1440;} nov79;

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

picture { bitmap nov3; x=0; y=0; }n3;
picture { bitmap nov15; x=0; y=0; }n15;
picture { bitmap nov16; x=0; y=0; }n16;
picture { bitmap nov27; x=0; y=0; }n27;
picture { bitmap nov31; x=0; y=0; }n31;
picture { bitmap nov33; x=0; y=0; }n33;
picture { bitmap nov35; x=0; y=0; }n35;
picture { bitmap nov37; x=0; y=0; }n37;
picture { bitmap nov56; x=0; y=0; }n56;
picture { bitmap nov59; x=0; y=0; }n59;
picture { bitmap nov62; x=0; y=0; }n62;
picture { bitmap nov63; x=0; y=0; }n63;
picture { bitmap nov69; x=0; y=0; }n69;
picture { bitmap nov71; x=0; y=0; }n71;
picture { bitmap nov75; x=0; y=0; }n75;
picture { bitmap nov79; x=0; y=0; }n79;

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
F	32	2	164	s	16	s	16	s	16	s	16	;
F	32	2	230	s	16	s	16	s	16	s	16	;
F	32	2	197	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	180	s	16	s	16	s	16	s	16	;
n75	128	2	364	s	16	s	16	s	16	s	16	;
F	32	2	330	Cd	18	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	197	s	16	s	16	Cd	18	s	16	;
F	32	2	397	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
T	64	1	347	s	16	s	16	s	16	s	16	;
F	32	2	230	Cd	18	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
T	64	1	314	s	16	s	16	s	16	s	16	;
F	32	2	130	s	16	s	16	s	16	s	16	;
F	32	2	214	s	16	s	16	s	16	s	16	;
T	64	1	330	s	16	Cd	18	s	16	s	16	;
F	32	2	97	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	164	s	16	s	16	s	16	s	16	;
n3	128	2	114	Cd	18	s	16	s	16	s	16	;
F	32	2	147	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
n37	128	2	330	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	Cd	18	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
T	64	1	280	s	16	s	16	s	16	Cd	18	;
F	32	2	230	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	Cd	18	s	16	s	16	;
F	32	2	347	s	16	Cd	18	s	16	s	16	;
T	64	1	314	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	197	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	264	Cd	18	s	16	s	16	s	16	;
T	64	1	380	s	16	s	16	s	16	s	16	;
F	32	2	214	s	16	s	16	s	16	Cd	18	;
F	32	2	397	s	16	s	16	s	16	s	16	;
n56	128	2	214	s	16	s	16	Cd	18	s	16	;
F	32	2	247	s	16	s	16	s	16	Cd	18	;
F	32	2	247	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
n35	128	2	347	s	16	s	16	s	16	s	16	;
F	32	2	230	s	16	s	16	s	16	s	16	;
F	32	2	97	s	16	s	16	s	16	s	16	;
T	64	1	347	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	Cd	18	s	16	;
F	32	2	330	s	16	s	16	s	16	Cd	18	;
F	32	2	397	s	16	s	16	s	16	s	16	;
n63	128	2	97	s	16	s	16	Cd	18	s	16	;
F	32	2	147	s	16	s	16	s	16	s	16	;
F	32	2	97	s	16	s	16	s	16	s	16	;
n31	128	2	164	Cd	18	s	16	s	16	s	16	;
F	32	2	147	s	16	s	16	s	16	Cd	18	;
F	32	2	130	s	16	s	16	s	16	s	16	;
F	32	2	280	s	16	s	16	s	16	s	16	;
F	32	2	297	s	16	s	16	Cd	18	s	16	;
F	32	2	114	s	16	s	16	s	16	s	16	;
F	32	2	197	Cd	18	s	16	s	16	s	16	;
n16	128	2	164	s	16	Cd	18	s	16	s	16	;
F	32	2	264	s	16	s	16	s	16	s	16	;
F	32	2	264	s	16	s	16	s	16	s	16	;
n33	128	2	314	s	16	s	16	Cd	18	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
T	64	1	380	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	264	s	16	s	16	s	16	Cd	18	;
F	32	2	364	s	16	s	16	s	16	s	16	;
T	64	1	380	s	16	s	16	Cd	18	s	16	;
F	32	2	397	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	130	s	16	s	16	Cd	18	s	16	;
F	32	2	97	s	16	s	16	s	16	s	16	;
n71	128	2	330	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	Cd	18	s	16	s	16	;
F	32	2	147	s	16	s	16	s	16	s	16	;
F	32	2	97	s	16	Cd	18	s	16	s	16	;
T	64	1	364	s	16	s	16	Cd	18	s	16	;
F	32	2	180	s	16	s	16	s	16	s	16	;
F	32	2	280	Cd	18	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	Cd	18	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	Cd	18	;
F	32	2	264	s	16	s	16	s	16	s	16	;
n15	128	2	297	s	16	s	16	s	16	s	16	;
F	32	2	130	s	16	s	16	s	16	s	16	;
F	32	2	280	s	16	s	16	s	16	s	16	;
F	32	2	380	Cd	18	s	16	s	16	s	16	;
F	32	2	364	Cd	18	s	16	s	16	s	16	;
T	64	1	164	Cd	18	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	Cd	18	s	16	;
F	32	2	180	s	16	s	16	s	16	s	16	;
F	32	2	164	s	16	s	16	s	16	s	16	;
T	64	1	180	s	16	s	16	s	16	Cd	18	;
F	32	2	230	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	Cd	18	;
F	32	2	114	s	16	s	16	s	16	s	16	;
n59	128	2	330	s	16	s	16	s	16	s	16	;
F	32	2	364	Cd	18	s	16	s	16	s	16	;
F	32	2	297	Cd	18	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	264	s	16	s	16	s	16	s	16	;
F	32	2	147	s	16	Cd	18	s	16	s	16	;
T	64	1	130	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	180	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	314	Cd	18	s	16	s	16	s	16	;
T	64	1	347	s	16	s	16	s	16	Cd	18	;
F	32	2	97	s	16	s	16	s	16	s	16	;
F	32	2	280	s	16	s	16	s	16	s	16	;
F	32	2	330	Cd	18	s	16	s	16	s	16	;
F	32	2	247	s	16	s	16	s	16	s	16	;
F	32	2	230	s	16	s	16	Cd	18	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
T	64	1	314	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	Cd	18	s	16	;
F	32	2	214	s	16	s	16	s	16	s	16	;
F	32	2	197	s	16	s	16	s	16	Cd	18	;
F	32	2	164	s	16	s	16	s	16	s	16	;
F	32	2	280	s	16	s	16	s	16	s	16	;
F	32	2	247	Cd	18	s	16	s	16	s	16	;
T	64	1	130	s	16	s	16	s	16	s	16	;
F	32	2	197	s	16	s	16	Cd	18	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	397	s	16	s	16	Cd	18	s	16	;
F	32	2	130	s	16	s	16	s	16	s	16	;
F	32	2	147	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	Cd	18	s	16	;
n62	128	2	247	s	16	s	16	s	16	s	16	;
F	32	2	247	s	16	s	16	s	16	s	16	;
F	32	2	397	s	16	s	16	Cd	18	s	16	;
F	32	2	297	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	297	s	16	Cd	18	s	16	s	16	;
n69	128	2	214	s	16	s	16	s	16	s	16	;
F	32	2	214	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	Cd	18	s	16	s	16	;
F	32	2	197	s	16	s	16	s	16	s	16	;
F	32	2	114	s	16	s	16	s	16	s	16	;
F	32	2	297	Cd	18	s	16	s	16	s	16	;
n79	128	2	247	s	16	s	16	s	16	s	16	;
F	32	2	180	Cd	18	s	16	s	16	Cd	18	;
F	32	2	264	s	16	s	16	s	16	s	16	;
F	32	2	114	s	16	s	16	s	16	Cd	18	;
F	32	2	397	s	16	s	16	s	16	Cd	18	;
F	32	2	297	s	16	s	16	Cd	18	s	16	;
F	32	2	114	s	16	Cd	18	s	16	s	16	;
n27	128	2	230	Cd	18	s	16	s	16	Cd	18	;
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