/// @description Insert description here
// You can write your code in this editor

#region always

view_xport[0] = floor(view_xport[0]);
view_yport[0] = floor(view_yport[0]);

if keyboard_check(vk_control) && keyboard_check(ord("R")){
    room_restart();
}

if arbiTimer > 0{
	arbiTimer--;
} else {
	arbiTimer = 0;
}

#endregion

#region PAUSING

if (cantPause == 0){
	//pause 1
	if (scr_input_pressed("pause")){
	    if global.pauseState == 0{ //activate pause
	        arbiTimer = 3;
	        scr_res();
			
			audio_stop_all();
	        audio_stop_sound(SFXpse);
	        audio_play_sound(SFXpse,1,false);
        
	        if (bgFondo == -1){
	            screen_save(string(WARMfolder + "pauseshot.png"));
	        }
			
	        instance_deactivate_all(true);
	        global.pauseState = 1;
	    } else if (global.pauseState > 0){
	        //reMap NO.
	        if reMap == 0{
				if sprite_exists(bgFondo){
					sprite_delete(bgFondo);
				}
	            bgFondo = -1;
	            audio_resume_all();
	            instance_activate_all();
	            global.pauseState = 0;
	            scr_res();
	        }
	    }
	}

	//go out of pause menu
	if scr_input_pressed("sub-action"){
	    //reMap NO.
	    if reMap == 0{
	        if sprite_exists(bgFondo){
				sprite_delete(bgFondo);
			}
	        bgFondo = -1;
	        audio_resume_all();
	        instance_activate_all();
	        global.pauseState = 0;
	        scr_res();
	    }
	}
}

#endregion