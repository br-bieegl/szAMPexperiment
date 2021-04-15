scenario = "Auditory Oddball Instructions";
scenario_type = trials;

# sets the default text font
default_font = "Arial";
default_font_size = 14;
default_text_color = 0,0,0; # sets text to black

# sets the background colour to white (default is black)
default_background_color = 255,255,255;    

#center the text
default_text_align = align_center;
begin;

bitmap { filename = "SleepLookCircle.bmp";} NoSleep;
bitmap { filename = "SleepLook.bmp";} Sleep;
bitmap { filename = "IncorrectLookCircle.bmp";} NoLookAway;
bitmap { filename = "IncorrectLook.bmp";} LookAway;
bitmap { filename = "CorrectLookCircle.bmp";} YesLook;
bitmap { filename = "CorrectLook.bmp";} Look;
bitmap { filename = "BlankSubject.bmp";} sub;

wavefile { filename = "AODinstruct1.wav"; } adi1;
sound {
    wavefile adi1;
    attenuation = 0.2;
} aod1Instruction;

wavefile { filename = "500.wav"; } onekHz;
sound {
    wavefile onekHz;
    attenuation = 0.3;
} target;

wavefile { filename = "f1200Hz.wav"; } stan;
sound {
    wavefile stan;
    attenuation = 0.3;
} standard;

wavefile { filename = "AODinstruct2.wav"; } adi2;
sound {
    wavefile adi2;
    attenuation = 0.2;
} aod2Instruction;

wavefile { filename = "AODinstruct3.wav"; } adi3;
sound {
    wavefile adi3;
    attenuation = 0.2;
} aod3Instruction;

wavefile { filename = "AODinstruct4.wav"; } adi4;
sound {
    wavefile adi4;
    attenuation = 0.2;
} aod4Instruction;

wavefile { filename = "AODinstruct5.wav"; } adi5;
sound {
    wavefile adi5;
    attenuation = 0.2;
} aod5Instruction;

picture {} default; 

trial {

sound aod1Instruction;
time = 0;

picture {bitmap sub;
			x = 0; y = 0;
			};
			time = 1000;
			duration = next_picture;
};

trial {
trial_duration = 1000;
sound standard;
time = 0;
};

trial {

sound aod2Instruction;
time = 0;
};

trial {

sound target;

};

trial {

sound aod3Instruction;
};

trial {

sound target;
};

trial {

sound aod4Instruction;
};

trial {

sound target;
};

trial {

sound aod5Instruction;

picture {bitmap sub;
			x = 0; y = 0;
			};
			duration = next_picture;

picture {bitmap Look;
			x = 0; y = 0;
			};
			time = 400;
			duration = next_picture;			

picture {bitmap YesLook;
			x = 0; y = 0;
			};
			time = 600;
			duration = next_picture;

picture {bitmap Look;
			x = 0; y = 0;
			};
			time = 800;
			duration = next_picture;			

picture {bitmap YesLook;
			x = 0; y = 0;
			};
			time = 1000;
			duration = next_picture;

picture {bitmap Look;
			x = 0; y = 0;
			};
			time = 1200;
			duration = next_picture;			

picture {bitmap YesLook;
			x = 0; y = 0;
			};
			time = 1400;
			duration = next_picture;

picture {bitmap sub;
			x = 0; y = 0;
			};
			time = 1600;
			duration = next_picture;			
			
picture {bitmap LookAway;
			x = 0; y = 0;
			};
			time = 2600;
			duration = next_picture;			

picture {bitmap NoLookAway;
			x = 0; y = 0;
			};
			time = 2800;
			duration = next_picture;			

picture {bitmap LookAway;
			x = 0; y = 0;
			};
			time = 3000;
			duration = next_picture;			

picture {bitmap NoLookAway;
			x = 0; y = 0;
			};
			time = 3200;
			duration = next_picture;			

picture {bitmap LookAway;
			x = 0; y = 0;
			};
			time = 3400;
			duration = next_picture;			

picture {bitmap NoLookAway;
			x = 0; y = 0;
			};
			time = 3600;
			duration = next_picture;			

picture {bitmap sub;
			x = 0; y = 0;
			};
			time = 3800;
			duration = next_picture;

picture {bitmap Sleep;
			x = 0; y = 0;
			};
			time = 8500;
			duration = next_picture;

picture {bitmap NoSleep;
			x = 0; y = 0;
			};
			time = 9000;
			duration = next_picture;

picture {bitmap Sleep;
			x = 0; y = 0;
			};
			time = 9200;
			duration = next_picture;

picture {bitmap NoSleep;
			x = 0; y = 0;
			};
			time = 9400;
			duration = next_picture;

picture {bitmap Sleep;
			x = 0; y = 0;
			};
			time = 9600;
			duration = next_picture;

picture {bitmap NoSleep;
			x = 0; y = 0;
			};
			time = 9800;
			duration = next_picture;

picture {bitmap sub;
			x = 0; y = 0;
			};
			time = 2000;
			duration = next_picture;
};

			