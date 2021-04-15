scenario = "SS40_napls06122009";
no_logfile = false;
default_background_color = 0,0,0;              
pulse_width = 10;
pcl_file = "gamma.pcl";
write_codes = true;
default_trial_type = fixed;          
          
begin;

wavefile { filename = "click40.wav"; } wav1;
sound {
    wavefile wav1;
    attenuation = 0.3;
} s1;

picture {         text { caption = "+"; 
               font_size = 36;
               font_color = 255,255,255;
               };
           x = 0; y = 0;} default;

trial {
	trial_duration = 1000;
      sound s1;
      time = 0;  
      port_code = 8;
		code = "train";
   }play_train;

trial {      
   stimulus_event{
      nothing{};
      time = 10;
      duration = 1500;
      code = "start recording";
      port_code=254;
      };
}startRecording;

trial {      
   stimulus_event{
      nothing{};
      time = 1500;
      duration = 20;
      code = "end recording";
      port_code=255;
      };
}endRecording;
