/// @description Lets player advnce level..... NVM

#region tts

if room != rm_tts{
	if global.timeToTransition == 1{
		with obj_kid{
			state = 5;
		}
	}

	if global.playerDeath == 1{
		instance_destroy(obj_kid);
		if restartAutoTimer > 0{
			restartAutoTimer--;
		} else {
			room_restart();
		}
		if bgSwitchTimer > 0{
			bgSwitchTimer--;
		} else {
			bgSwitchTimer = 0;
			bgMode = 0; //dark
		}
	}

	if global.noKid == 1{
		if kidTimer > 0{
			kidTimer--;
		} else {
			instance_create_layer(x,y,"Instances",obj_kid);
			obj_kid.vspeed = 8;
			obj_kid.x = global.Checkx;
			obj_kid.y = global.Checky;
			global.noKid = 0;
		}
	}
	
	if global.playerDeath != 1{
		if bgSwitchTimer < 45{
			bgSwitchTimer++
		} else {
			bgSwitchTimer = 45; 
			bgMode = 1; //light
		}
	}
}

#endregion

switch(bgMode){
	case 0: bgToDraw = bg_behind_light; break;
	case 1: bgToDraw = bg_behind_dark; break;
}

