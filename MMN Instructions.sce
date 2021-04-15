scenario = "Visual Oddball Instructions";
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
bitmap { filename = "F.png";} F;
bitmap { filename = "T.png";} T;
bitmap { filename = "default.png";} blankPCX;

wavefile { filename = "nvmmn_instructions.wav"; } visInstruct;
sound {
    wavefile visInstruct;
    attenuation = 0.2;
} visualInstruction;

picture {
      bitmap blankPCX;
      x = 0; y = 0;
} default; 

trial {
trial_duration = 50000;
sound visualInstruction;
time = 0;

picture {bitmap sub;
			x = 0; y = 0;
			};
			time = 1000;
			duration = 7000;
			
picture {bitmap F;
			x = 0; y = 0;
			};
			time= 8000; # 8 secs
			duration = 6000;

picture {bitmap T;
			x = 0; y = 0;
			};
			time = 16000; # 16 secs
			duration = 6000;
			
picture {bitmap T;
			x = 0; y = 0;
			};
			time = 28000; # 28 secs
			duration = 2000;

picture {bitmap sub;
			x = 0; y = 0;
			};
			time = 40000; # 40 secs
			duration = next_picture;

picture {bitmap Look;
			x = 0; y = 0;
			};
			time = 40200; #40.2 secs
			duration = next_picture;			

picture {bitmap YesLook;
			x = 0; y = 0;
			};
			time = 40400; #40.4 secs
			duration = next_picture;

picture {bitmap Look;
			x = 0; y = 0;
			};
			time = 40600; #50.4 secs
			duration = next_picture;			

picture {bitmap YesLook;
			x = 0; y = 0;
			};
			time = 40800;
			duration = next_picture;

picture {bitmap Look;
			x = 0; y = 0;
			};
			time = 41000;
			duration = next_picture;			

picture {bitmap YesLook;
			x = 0; y = 0;
			};
			time = 41200;
			duration = next_picture;

picture {bitmap sub;
			x = 0; y = 0;
			};
			time = 44200;
			duration = next_picture;			
			
picture {bitmap LookAway;
			x = 0; y = 0;
			};
			time = 444000;
			duration = next_picture;			

picture {bitmap NoLookAway;
			x = 0; y = 0;
			};
			time = 44800;
			duration = next_picture;			

picture {bitmap LookAway;
			x = 0; y = 0;
			};
			time = 46000;
			duration = next_picture;			

picture {bitmap NoLookAway;
			x = 0; y = 0;
			};
			time = 46200;
			duration = next_picture;			

picture {bitmap LookAway;
			x = 0; y = 0;
			};
			time = 46400;
			duration = next_picture;			

picture {bitmap NoLookAway;
			x = 0; y = 0;
			};
			time = 46600;
			duration = next_picture;			

picture {bitmap sub;
			x = 0; y = 0;
			};
			time = 46800;
			duration = next_picture;

picture {bitmap Sleep;
			x = 0; y = 0;
			};
			time = 47000;
			duration = next_picture;

picture {bitmap NoSleep;
			x = 0; y = 0;
			};
			time = 47200;
			duration = next_picture;

picture {bitmap Sleep;
			x = 0; y = 0;
			};
			time = 47400;
			duration = next_picture;

picture {bitmap NoSleep;
			x = 0; y = 0;
			};
			time = 47600;
			duration = next_picture;

picture {bitmap Sleep;
			x = 0; y = 0;
			};
			time = 47800;
			duration = next_picture;

picture {bitmap NoSleep;
			x = 0; y = 0;
			};
			time = 48000;
			duration = next_picture;
			
picture {bitmap sub;
			x = 0; y = 0;
			};
			time = 49000;
			duration = next_picture;
};



			