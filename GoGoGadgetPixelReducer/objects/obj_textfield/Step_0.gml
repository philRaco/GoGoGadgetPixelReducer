/// @description Insert description here
// You can write your code in this editor

#region skipping

if state == 0{
	if dalpha > 0.005{
        dalpha = lerp(dalpha,0,speedLerp);
        if canTri == 1{
            dalphaTri = dalpha;
        } else {
            dalphaTri = 0;
        }
    } else {
        instance_destroy();
        exit;
    }
}

if createdby.allowTextSkip == true{
	if scr_input_released("sub-action"){
	    audio_stop_sound(createdby.meSound);
	    audio_stop_sound(NPCsound);

	    createdby.meBox = noone;
	    currText = string_length(myText[countTexter]);
    
	    state = 0;
	}
}

#endregion

#region ///texting

if currText < string_length(myText[countTexter]){
    // text not done
    currPartText = string_copy(myText[countTexter],currText+1,1);
    if state != 0{
        if (currPartText != "." && currPartText != "," && currPartText != "?" && currPartText != "!" && currPartText != "'"
        && currPartText != "(" && currPartText != "{" && currPartText != "["
        && currPartText != ")" && currPartText != "}" && currPartText != "]"){
            currText += speedText;
            if textLast != partText{
                audio_sound_pitch(createdby.meSound,createdby.pitchChange+createdby.pitchnus);
                NPCsound = audio_play_sound(createdby.meSound,1,false);
            }
            canset3 = 1;
        } else {
            if canset3 == 1{
                //  .   ,   ?   !   "   ' (default just says whatever lel, this is just for more customiz)
                switch(currPartText){
                    case ",": timer3dot = 8; break;
                    case "?": timer3dot = irandom_range(9,12); break;
                    case "!": timer3dot = 12; break;
                    case "'": timer3dot = 2; break;
                    case "(": timer3dot = 5; break; case ")": timer3dot = 5; break;
                    case "{": timer3dot = 10; break; case "}": timer3dot = 10; break;
                    case "[": timer3dot = 15; break; case "]": timer3dot = 15; break;
                    default: timer3dot = 15; break;
                }
                canset3 = 0;
            }
            if timer3dot > 0{
                timer3dot--;
            } else {
                timer3dot = 15;
                currText += 0.5;
                if textLast != partText{
                    audio_sound_pitch(createdby.meSound,createdby.pitchChange+createdby.pitchnus);
                    NPCsound = audio_play_sound(createdby.meSound,1,false);
                }
            }
        }
    }
} else if currText >= string_length(myText[countTexter]){
    // jopb done
    currText = string_length(myText[countTexter]);
    displayStar = true;
    audio_stop_sound(createdby.meSound);
    if asset_get_index("NPCsound") != asset_unknown{
        audio_stop_sound(NPCsound);
    }
}

baser = string_height_ext(partText,sepBy,(withSep)*2);
baser = clamp(baser,string_height_ext("shoutouts to simpleflips",sepBy,9999),9999);
nicer = lerp(nicer,baser,speedText)+string_height(partText);

textLast = partText;

#endregion

#region ///starStep

if (displayStar == true){
    if starFrame <= 5{
        starFrame += 0.35;
    } else {
        starFrame = 0;
    }
} else if (displayStar == false || state != 1){
    starFrame = 0;
}

#endregion

