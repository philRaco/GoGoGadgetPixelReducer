// Anything related to sound etc

#region scr_menu_sound

///@function scr_menu_sound

/* returns correspondent menu sound based on string. */

function scr_menu_sound(argument0){
	switch(argument0){
		case "SFXsnormal1":
			return SFXsnormal1;
		break;
		case "SFXsnormal2":
			return SFXsnormal2;
		break;
		case "SFXsnormal3":
			return SFXsnormal3;
		break;
		case "SFXsnormal4":
			return SFXsnormal4;
		break;
		case "SFXsmall1":
			return SFXsmall1;
		break;
		case "SFXsmall2":
			return SFXsmall2;
		break;
		case "SFXsmall3":
			return SFXsmall3;
		break;
		case "SFXtiny1":
			return SFXtiny1;
		break;
		case "SFXtiny2":
			return SFXtiny2;
		break;
		case "SFXtiny3":
			return SFXtiny3;
		break;
		case "SFXtiny4":
			return SFXtiny4;
		break;
		default:
			show_message("global.snormalS: wrong sound used!")
		break;
	}
}

#endregion

#region scr_audiovolume

///@function scr_audio_volume(soundID,volume)

function scr_audiovolume(argument0,argument1){
    audio_sound_gain(argument0,argument1,0);
	return 0;
}

#endregion