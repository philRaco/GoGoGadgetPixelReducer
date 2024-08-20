// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

#region scr_kid_move

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

#endregion

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

#endregion

#region directionDpadHeld

///@function directionDpadHeld()
//I HAVE NO TIME TO WRITE THIS COMMENT  return 1;

function directionDpadHeld(){
	if scr_input("left"){
		if scr_input("up"){
			return 3; //up left
		} else if scr_input("down"){
			return 5; //down left
		} else if (!scr_input("up") && !scr_input("down")){
			return 4; //just left
		}
	} else if scr_input("right"){
		if scr_input("up"){
			return 1; //up right
		} else if scr_input("down"){
			return 7; //down right
		} else if (!scr_input("up") && !scr_input("down")){
			return 0; //just right
		}
	} else if (!scr_input("left") && !scr_input("right")){
		if scr_input("up"){
			return 2; //up
		} else if scr_input("down"){
			return 6; //down
		} else if (!scr_input("up") && !scr_input("down")){
			return 8; //NOTHING, i guess
		}
	}
}

#endregion

#region dirHeldThrowResult

///@function directionDpadHeld(direction based on arrow)
//what time crunch does to a woman :3

function dirHeldThrowResult(argument0){
	switch(argument0){ //funny rotation :P
		case 0: obj_kid.grabMomX = 4; obj_kid.grabMomY = -0.5; break;
		case 1: obj_kid.grabMomX = 1.5; obj_kid.grabMomY = -2.5; break;
		case 2: obj_kid.grabMomX = 0; obj_kid.grabMomY = -4; break;
		case 3: obj_kid.grabMomX = -4; obj_kid.grabMomY = -2.5; break;
		case 4: obj_kid.grabMomX = -4; obj_kid.grabMomY = -0.5; break;
		case 5: obj_kid.grabMomX = -4; obj_kid.grabMomY = 0; break;
		case 6: obj_kid.grabMomX = 0; obj_kid.grabMomY = 0; break;
		case 7: obj_kid.grabMomX = 4; obj_kid.grabMomY = 0; break;
		default: obj_kid.grabMomX = 0; obj_kid.grabMomY = 0; break;
	}
}

#endregion

#region jugOrBottleThrown

///@function jugOrBottleThrown(direction based on arrow)
//what time crunch does to a woman :3

function jugOrBottleThrown(argument0){
	switch(argument0){ //funny rotation :P always 2 !! ???????????
		case 0: mustGoToX = -2; mustGoToY = 0; break;
		case 1: mustGoToX = 2; mustGoToY = -2; break;
		case 2: mustGoToX = 0; mustGoToY = -2; break;
		case 3: mustGoToX = -2; mustGoToY = -2; break;
		case 4: mustGoToX = 2; mustGoToY = 0; break;
		case 5: mustGoToX = -2; mustGoToY = 2; break;
		case 6: mustGoToX = 0; mustGoToY = 2; break;
		case 7: mustGoToX = 2; mustGoToY = 2; break;
		default: mustGoToX = 2; mustGoToY = -0.25; break;
	}
}

#endregion/**/

#region jugOrBottleThrown

///@function jugOrBottleThrown(direction based on arrow)
//what time crunch does to a woman :3

function waterMakeDirection(argument0){
	switch(argument0){ //funny rotation :P always 2 !!
		case 0: spriteDirection = 0; break;
		case 1: spriteDirection = 45; break;
		case 2: spriteDirection = 90; break;
		case 3: spriteDirection = 135; break;
		case 4: spriteDirection = 180; break;
		case 5: spriteDirection = 225; break;
		case 6: spriteDirection = 270; break;
		case 7: spriteDirection = 315; break;
		default: spriteDirection = 90; break;
	}
}

#endregion/**/