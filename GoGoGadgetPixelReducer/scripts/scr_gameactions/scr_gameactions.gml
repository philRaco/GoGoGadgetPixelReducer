// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@function scr_kid_move(comparison,MaxV,SV,mod)

function scr_kid_move(argument0,argument1,argument2,argument3){
	//mod = modifier of max speed
	
	/* when conveyor belts
	var convbeltMask = collision_line(x,y,x,y+Hkid*1.65,instance_nearest(x,y,obj_convbelt),false,true);
	if (convbeltMask != noone){
	    convBelow = convbeltMask.mySpeed;
	} else {
	    convBelow = 0;
	}
	*/

	if argument0 == "less"{
	    if global.kidV <= ceil(argument1+convBelow)*argument3{
	        if !place_free(x,y+12){
	            global.kidV = (argument1+convBelow)*argument3;
	        } else {
	            cantwont = 1;
	        }
	    } else {
	        if (global.kidV > 1){
	            global.kidV -= (argument2*2);
	        } else {
	            global.kidV -= argument2;
	        }
	    }
	}
	if argument0 == "more"{
	    if global.kidV >= (argument1+convBelow)*argument3{
	        if !place_free(x,y+12){
	            global.kidV = (argument1+convBelow)*argument3;
	        } else {
	            cantwont = 1;
	        }
	    } else {
	        if (global.kidV < -1){
	            global.kidV += (argument2*2);
	        } else {
	            global.kidV += argument2;
	        }
	    }
	}
}

#region commitJump

///@function commitJump

function commitJump(){
	pitchJump += pJInc;
    scheduleJumpCanDo = 0;
    if jumpSpeed > 0{
        vspeed -= jumpSpeed;
        jumpSpeed -= jumpMinus;
        rJT = 6;
    } else if jumpSpeed <= 0{
        global.jumpAb = 0;
    }
    audio_sound_pitch(soundJump,initPitchJump+pitchJump);
}

#endregion

#region noPauseRoom

///@function noPauseRoom()
//i love these things

function noPauseRoom(){
	//sigh!!"!"!21!!"1 {nowhere near as bad as i thought}

	if (
	    room == rmInit
	//or
	    //room == theEnd //temp
	    )
	{
	    return true;
	} else {
	    return false;
	}
}