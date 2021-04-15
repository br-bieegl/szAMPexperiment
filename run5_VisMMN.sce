scenario = "run5_VisoddballPlusMMN_pronetSZAMP_09042021"; 
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
bitmap {filename = "5.png"; height=1080; width=1440;} nov5;
bitmap {filename = "7.png"; height=1080; width=1440;} nov7;
bitmap {filename = "8.png"; height=1080; width=1440;} nov8;
bitmap {filename = "9.png"; height=1080; width=1440;} nov9;
bitmap {filename = "10.png"; height=1080; width=1440;} nov10;
bitmap {filename = "18.png"; height=1080; width=1440;} nov18;
bitmap {filename = "23.png"; height=1080; width=1440;} nov23;
bitmap {filename = "29.png"; height=1080; width=1440;} nov29;
bitmap {filename = "47.png"; height=1080; width=1440;} nov47;
bitmap {filename = "51.png"; height=1080; width=1440;} nov51;
bitmap {filename = "52.png"; height=1080; width=1440;} nov52;
bitmap {filename = "55.png"; height=1080; width=1440;} nov55;
bitmap {filename = "58.png"; height=1080; width=1440;} nov58;
bitmap {filename = "66.png"; height=1080; width=1440;} nov66;
bitmap {filename = "74.png"; height=1080; width=1440;} nov74;
bitmap {filename = "77.png"; height=1080; width=1440;} nov77;

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

picture { bitmap nov5; x=0; y=0; }n5;
picture { bitmap nov7; x=0; y=0; }n7;
picture { bitmap nov8; x=0; y=0; }n8;
picture { bitmap nov9; x=0; y=0; }n9;
picture { bitmap nov10; x=0; y=0; }n10;
picture { bitmap nov18; x=0; y=0; }n18;
picture { bitmap nov23; x=0; y=0; }n23;
picture { bitmap nov29; x=0; y=0; }n29;
picture { bitmap nov47; x=0; y=0; }n47;
picture { bitmap nov51; x=0; y=0; }n51;
picture { bitmap nov52; x=0; y=0; }n52;
picture { bitmap nov55; x=0; y=0; }n55;
picture { bitmap nov58; x=0; y=0; }n58;
picture { bitmap nov66; x=0; y=0; }n66;
picture { bitmap nov74; x=0; y=0; }n74;
picture { bitmap nov77; x=0; y=0; }n77;


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
F	32	2	147	s	16	s	16	s	16	s	16	;
F	32	2	230	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	164	s	16	s	16	s	16	s	16	;
T	64	1	214	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	Cd	18	s	16	s	16	;
n18	128	2	97	Cd	18	s	16	s	16	Cd	18	;
F	32	2	180	s	16	s	16	s	16	s	16	;
F	32	2	280	s	16	s	16	s	16	s	16	;
F	32	2	297	s	16	s	16	s	16	s	16	;
F	32	2	180	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	Cd	18	s	16	;
T	64	1	97	s	16	s	16	s	16	s	16	;
F	32	2	247	s	16	s	16	s	16	s	16	;
F	32	2	264	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	Cd	18	;
T	64	1	364	s	16	s	16	s	16	s	16	;
F	32	2	214	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	180	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	364	Cd	18	s	16	s	16	s	16	;
T	64	1	330	s	16	s	16	s	16	s	16	;
F	32	2	214	s	16	s	16	s	16	s	16	;
F	32	2	297	Cd	18	s	16	s	16	s	16	;
F	32	2	130	s	16	s	16	s	16	s	16	;
F	32	2	114	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	280	s	16	s	16	s	16	s	16	;
T	64	1	397	s	16	s	16	s	16	s	16	;
F	32	2	214	s	16	s	16	s	16	Cd	18	;
F	32	2	380	s	16	s	16	s	16	Cd	18	;
F	32	2	364	s	16	s	16	s	16	Cd	18	;
F	32	2	147	s	16	s	16	s	16	s	16	;
n5	128	2	264	s	16	s	16	s	16	s	16	;
F	32	2	247	Cd	18	s	16	s	16	s	16	;
F	32	2	130	s	16	s	16	s	16	s	16	;
F	32	2	197	s	16	s	16	s	16	Cd	18	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	214	s	16	s	16	s	16	Cd	18	;
n74	128	2	347	s	16	s	16	s	16	s	16	;
F	32	2	280	Cd	18	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	197	s	16	s	16	Cd	18	s	16	;
F	32	2	97	s	16	s	16	Cd	18	s	16	;
F	32	2	264	s	16	s	16	s	16	s	16	;
n23	128	2	264	s	16	s	16	Cd	18	s	16	;
F	32	2	330	s	16	Cd	18	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	Cd	18	;
F	32	2	147	s	16	s	16	s	16	s	16	;
T	64	1	230	s	16	s	16	s	16	Cd	18	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	Cd	18	s	16	;
F	32	2	230	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
n51	128	2	147	s	16	s	16	s	16	s	16	;
F	32	2	97	s	16	s	16	s	16	s	16	;
F	32	2	147	s	16	s	16	s	16	s	16	;
F	32	2	164	s	16	s	16	s	16	s	16	;
n29	128	2	164	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	Cd	18	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
T	64	1	230	s	16	s	16	s	16	s	16	;
F	32	2	247	s	16	s	16	s	16	s	16	;
F	32	2	230	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	Cd	18	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	164	Cd	18	s	16	s	16	s	16	;
T	64	1	180	s	16	s	16	s	16	Cd	18	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
T	64	1	114	Cd	18	s	16	s	16	s	16	;
F	32	2	397	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	Cd	18	s	16	;
F	32	2	197	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	Cd	18	;
n8	128	2	314	s	16	s	16	s	16	Cd	18	;
F	32	2	97	s	16	s	16	s	16	s	16	;
F	32	2	130	s	16	s	16	s	16	s	16	;
F	32	2	97	s	16	s	16	Cd	18	s	16	;
F	32	2	280	s	16	s	16	s	16	s	16	;
n7	128	2	114	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	Cd	18	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	Cd	18	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	247	s	16	s	16	s	16	s	16	;
n77	128	2	314	s	16	Cd	18	s	16	s	16	;
F	32	2	264	s	16	s	16	s	16	s	16	;
F	32	2	147	Cd	18	s	16	s	16	s	16	;
T	64	1	397	s	16	s	16	s	16	s	16	;
F	32	2	114	s	16	s	16	Cd	18	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	Cd	18	;
F	32	2	297	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	s	16	s	16	;
n52	128	2	180	s	16	Cd	18	s	16	s	16	;
F	32	2	230	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
n66	128	2	314	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	s	16	s	16	;
F	32	2	164	s	16	s	16	s	16	s	16	;
F	32	2	114	s	16	s	16	Cd	18	s	16	;
F	32	2	214	s	16	s	16	s	16	s	16	;
F	32	2	114	s	16	s	16	s	16	Cd	18	;
F	32	2	130	s	16	s	16	s	16	s	16	;
T	64	1	147	s	16	s	16	s	16	s	16	;
F	32	2	330	Cd	18	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	197	s	16	s	16	Cd	18	s	16	;
F	32	2	247	s	16	s	16	Cd	18	s	16	;
T	64	1	397	s	16	s	16	s	16	s	16	;
F	32	2	280	s	16	s	16	s	16	s	16	;
F	32	2	197	s	16	s	16	Cd	18	s	16	;
n58	128	2	197	s	16	s	16	s	16	s	16	;
F	32	2	214	s	16	s	16	s	16	s	16	;
F	32	2	130	s	16	Cd	18	s	16	s	16	;
F	32	2	297	s	16	s	16	s	16	s	16	;
n47	128	2	314	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	s	16	Cd	18	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
T	64	1	114	s	16	s	16	Cd	18	s	16	;
F	32	2	180	s	16	s	16	s	16	s	16	;
F	32	2	297	s	16	Cd	18	s	16	s	16	;
F	32	2	264	s	16	s	16	s	16	Cd	18	;
n55	128	2	297	s	16	s	16	s	16	s	16	;
F	32	2	280	s	16	s	16	s	16	s	16	;
F	32	2	130	s	16	Cd	18	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
F	32	2	364	s	16	Cd	18	s	16	s	16	;
F	32	2	397	s	16	s	16	s	16	s	16	;
F	32	2	397	s	16	s	16	s	16	s	16	;
n9	128	2	247	s	16	Cd	18	s	16	s	16	;
F	32	2	97	Cd	18	s	16	s	16	s	16	;
F	32	2	280	s	16	s	16	Cd	18	s	16	;
F	32	2	264	s	16	s	16	s	16	s	16	;
F	32	2	164	s	16	s	16	s	16	s	16	;
F	32	2	330	s	16	s	16	Cd	18	s	16	;
F	32	2	130	s	16	Cd	18	s	16	s	16	;
T	64	1	297	s	16	s	16	s	16	s	16	;
F	32	2	380	Cd	18	s	16	s	16	s	16	;
F	32	2	180	s	16	s	16	s	16	s	16	;
T	64	1	230	Cd	18	s	16	s	16	s	16	;
F	32	2	364	s	16	Cd	18	s	16	s	16	;
F	32	2	247	s	16	s	16	Cd	18	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	s	16	s	16	s	16	;
F	32	2	380	s	16	s	16	s	16	s	16	;
F	32	2	347	s	16	s	16	s	16	s	16	;
T	64	1	164	s	16	s	16	s	16	s	16	;
F	32	2	314	s	16	Cd	18	s	16	s	16	;
F	32	2	397	s	16	s	16	Cd	18	s	16	;
n10	128	2	330	s	16	s	16	s	16	Cd	18	;
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