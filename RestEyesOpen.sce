scenario = "szAMP_resting_eyes_open";
no_logfile = false;
default_background_color = 0,0,0;              
pulse_width = 10;
write_codes = true;
default_trial_type = fixed;          
          
begin;

picture {         text { caption = "+"; 
               font_size = 36;
               font_color = 255,255,255;
               };
           x = 0; y = 0;} default;

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
      time = 1000;
      code = "rest eyes open";
      port_code=20;
      };
}rest;


trial {      
   stimulus_event{
      nothing{};
      time = 1500;
      duration = 20;
      code = "end recording";
      port_code=255;
      };
}endRecording;

####PCL####
begin_pcl;

int i = 1;
startRecording.present();
wait_interval(1500);
loop
until   
#As many seconds of rest as specified below
   i > 180
   
begin 
i = i+1;
rest.present();
end;      
wait_interval(1500);
endRecording.present();
