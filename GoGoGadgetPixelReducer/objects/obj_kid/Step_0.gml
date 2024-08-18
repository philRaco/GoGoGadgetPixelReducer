/// @description MOVEMENT YAY
// You can write your code in this editor

#region Gravity (pls ONLY gravity [BRUH WHY])

if !place_free(x,y+1){
    gravity = 0;
} else {
    if vspeed <= -4{
        gravity = 1.2/4;
    }
    if (vspeed >= -3.9 && vspeed < 2){
        gravity = 0.635/4;
    }
    if vspeed >= 2{
        gravity = 1.3/4;
    }
}

//	upperstance

if sign(vspeed) = -1{
    upperstance = 90;
}
if sign(vspeed) = 1{
    upperstance = 270;
}

#endregion

#region deacc and more

//fix?

if vspeed = 0{
	y = floor(y);
}

//	hoo! im tired.

if rJT > 0{
    rJT--;
} else {
    rJT = 0;
}

// death (most likely will do nothing.)

if y >= (room_height+72){
	/*
    if !instance_exists(obj_statictransition){
        global.restartMode = 1;
        instance_create(view_xview[0]+x,view_yview[0]+y,obj_statictransition);
    }
	*/
    state = 6;
	room_restart(); //	temp
}

//jump cap

if (vspeed <= -jumpCap && global.jumpAb == 0){
    vspeed = -jumpCap;
}

//deacceleration

if !scr_input("left") && !scr_input("right") && isInBetween2(global.kidV,-0.26,0.26){
    global.kidV = 0;
}

if (DeAcc == 1){
    if global.kidV > 0{
        global.kidV -= DV;
    } else if global.kidV < 0{
        global.kidV += DV;
    }
}

//only deacc on input

if global.kidV != 0{
    if ((!scr_input("left") or !scr_input("right"))) && !place_free(x,y+3){
        DeAcc = 1;
    }
} else if global.kidV == 0{
    DeAcc = 0;
}

//abs.

if abs(global.kidV) != 0{
    if abs(global.kidV) < 1{
        SV = 0.5;
    } else if abs(global.kidV) >= 1{
        SV = 0.25;
        global.MKdontgo = false;
    }
    movement = 1;
} else {
    movement = 0;
}

#endregion

#region collision (what a mess.)

if instance_exists(obj_ssolid){ //REMEMBER TO CARRY OVER TO MIND !!!
	var nearestSolidSemi = collision_rectangle(bbox_left,bbox_top,bbox_right,y+14,obj_ssolid,false,false);
	if nearestSolidSemi != noone{
		if place_meeting(x,y+3,obj_ssolid){
			if nearestSolidSemi.solid == true{
				show_debug_message(string(nearestSolidSemi))
			    if (bbox_bottom > nearestSolidSemi.y+sprite_get_yoffset(spr_player)){
			        y -= nearestSolidSemi.y-sprite_get_yoffset(spr_player);
			    }
			    move_contact_solid(270,12);
			    hspeed = 0;
			    vspeed = 0;
			}
		}
	}
}

if place_meeting(x+global.kidV,y,obj_col){
    while(!place_meeting(x+sign(global.kidV),y,obj_col)){
        x += sign(global.kidV);
    }
    global.kidV = 0;
    hspeed = 0;
}

x += global.kidV; //VERY IMPORTANT!

if !collisionLine(sprite_yoffset*1.25){
    //in the air
    if vspeed < 1{
        jumpRecoverDis = (sprite_yoffset*1.25);
    } else {
        jumpRecoverDis = (sprite_yoffset*1.75)*clamp(vspeed,0,1.5);
    }
	//i am a coyote
	if coyoteTimer > 0{
		coyoteTimer--;
	} else {
		coyoteTimer = 0;
		global.jumpAb = 0;
		noMoreJump = 1;
		scheduleJump = 0;
	}
} else {
    //colliding with floor?
    if vspeed == 0{
        jumpRecoverDis = (sprite_yoffset*1.2);
    }
	coyoteTimer = coyoteTimerInit;
}

if collisionLine(sprite_yoffset+4){
    itLands = 1; //                             onGround variable
    noMoreJump = 0;
    global.jumpAb = 1; //hmmmmm
	coyoteTimer = coyoteTimerInit;
} else {
    itLands = 0;
}

if keyboard_check_pressed(ord("R")){
	game_restart()
}

if noMoreJump == 1{
    global.jumpAb = 0;
}

if scheduleJump == 1{
    if collisionLine(jumpRecoverDis*0.5+8) && (vspeed > -0.1) {
        scheduleJumpCanDo = 1;
        global.hAv = 1;
        scheduleJump = 0;
    }
}

//snap cause i'm close
if (vspeed > 0) {
    if
    (collision_rectangle(x-1,y+5,x+1,y+(sprite_yoffset*1.25),obj_col,false,false))
    {
        nearObjectSnapMK();
        vspeed = 0; //test?
    }
}

landingRecover = 0;

//ok go on
if (itLands == 1){
    if !(scr_input("action")){
        if (global.jumpAb = 0){
            callingr = 1; //landing code
        }
        if vspeed > 0{
            callingr = 2;
        }
    }
    if MaxV > global.kidMaxV{
        MaxV--;
    }
    hspeed = 0;
}

if collisionLine(jumpRecoverDis*0.5) or (itLands == 1){
    if global.hAv = 0{
        calling2 = 1;
    }
    hspeed = 0;
}

if (callingr == 1){ //RESET JUMP//
    global.jumpAb = 1;
    global.hAv = 1;
    jumpSpeed = jumpMax;
    MaxV = global.kidMaxV;
    obj_manager_plat.hiddenCounter = 0;
    callingr = 0;
}

if (callingr == 2){ //ACTIVATE ANIM!//
    MaxV = global.kidMaxV;
    obj_manager_plat.hiddenCounter = 0;
    global.hAv = 1;
    callingr = 0;
}


if (calling2 == 1){
    global.hAv = 1;
    calling2 = 0;
}


#endregion

#region unstucking!

makePlaceHG(); //huh.

if collision_rectangle(bbox_left,bbox_top,bbox_right,y+14,obj_ssolid,false,false) != noone{
	if (place_meeting(x,y,obj_ssolid) && isInBetween2(vspeed,0.1,2) && collision_rectangle(bbox_left,bbox_top,bbox_right,y+14,obj_ssolid,false,false).solid == true){
	    for(var pgi = 0; pgi < 1000; ++pgi){
	        //up :) :) :) :)
	        if (!place_meeting(x,y-pgi,obj_ssolid)){
	            y -= pgi;
	            itLands = 1;
	            break;
	        }
	    }
	}
}

#endregion

#region left to right...
            // move left //
    if scr_input("left"){
        DeAcc = 0;
        scr_kid_move("less",-MaxV,SV,1);
        global.MKdir = -1;
        tempDir = global.MKdir;
        //pebble();
    }
            // move right //
    if scr_input("right"){
        DeAcc = 0;
        scr_kid_move("more",MaxV,SV,1);
        global.MKdir = 1;
        tempDir = global.MKdir;
        //pebble();
    }
            // input pressed (left or right) //
    if (scr_input_pressed("left") && !place_free(x+global.kidV,y+12) && isInBetween2(global.kidV,-2.9,0)){
        global.kidV = -1;
        MaxV = global.kidMaxV;
        //instance_create(x+global.MKdir,y+sprite_yoffset,obj_steppers); scr_audiostop(stepSound); stepSound = scr_audioplay(stepInhalt,false); obj_steppers.sprite_index = stepSpr; stepTimer = 10;
    }
    if (scr_input_pressed("right") && !place_free(x+global.kidV,y+12) && isInBetween2(global.kidV,0,2.9)){
        global.kidV = 1;
        MaxV = global.kidMaxV;
        //instance_create(x+global.MKdir,y+sprite_yoffset,obj_steppers); scr_audiostop(stepSound); stepSound = scr_audioplay(stepInhalt,false); obj_steppers.sprite_index = stepSpr; stepTimer = 10;
    }
            // input released (left or right) //
    if (scr_input_released("left") || scr_input_released("right")){
        DeAcc = 1;
        MaxV = global.kidMaxV;
        cantwont = 0;
    }
#endregion

#region jump

/// --- Jump (Action) ---

if (scr_input_released("action")){
    if (vspeed <= -1){
        vspeed = -1;
    }
    global.jumpAb = 0; //i now understnad
    pitchJump = 0;
    jumpCap = jumpCapDefault;
    noMoreJump = 1;
}

if (coyoteTimer != 0){
	if scr_input_pressed("action"){
		coyoteTimer = coyoteTimerInit;
	    if collisionLine(sprite_yoffset+2) && (vspeed == 0 || vspeed > 2.3){
	        nearObjectSnapMK();
			coyoteTimer = coyoteTimerInit;
	        vspeed = 0; //test?
	        scheduleJump = 1;
	            global.jumpAb = 0; //i will now understnad
	            pitchJump = 0;
	            jumpCap = jumpCapDefault;
	            noMoreJump = 1;
	    }
	    obj_kid.jumpCap = obj_kid.jumpCapDefault;
	}

	if (global.jumpAb = 1 && arbC <= 0){
	    //replease scr_input_pressed("action") with jumpTirgger variable or sth
	    if (scr_input_pressed("action") || scheduleJumpCanDo = 1) && (noMoreJump != 1){
			/*
	        if (place_free(x,y+sprite_yoffset) && !instance_exists(obj_pfx_midjump)){
	            instance_create(x,y+sprite_yoffset,obj_pfx_midjump);
	        } else if (!place_free(x,y+sprite_yoffset) && !instance_exists(obj_pfxdustj)){
	            instance_create(x,y+sprite_yoffset,obj_pfxdustj);
	        }
			*/
	        vspeed = 0;
	        jumpSpeed = jumpMax;
			y -= 1;
        
	        soundJump = audio_play_sound(SFXjump,1,false);
	        xMod = 0.7;
	        xJ = 1;
	        DeAcc = 0;
        
		    if rJT > 0{
		        extrJump *= -1;
		    } else {
		        extrJump = -1;
		    }
	        scheduleJump = 0;
	    }
	    if (scr_input("action") || scheduleJumpCanDo = 1){
	        commitJump();
	        mX = 0.6;
	    } else {
	        mX = 1;
	    }
	}
}

#endregion

#region grabbing

if stopGrabbing != true{
	if scr_input("sub-action"){
		if grabClaimed == noone{
			//can grab water
			if collision_line(x,y,x+(12*global.MKdir),y,obj_flouer,false,false){
				grabClaimed = collision_line(x,y,x+(12*global.MKdir),y,obj_flouer,false,false);
			}
		}
	}
}

if grabClaimed != noone{
	if isInBetween2(x, grabClaimed.bbox_left-2, grabClaimed.bbox_right+1){ // if kid's x in between area of box when its close to wall
		with grabClaimed{
			followKidXGrab(); //follow Player on X axis (lower)
			y = (obj_kid.y-sprite_get_yoffset(spr_player)*1.5); // follow player on Y Axis (UPPER)
			vspeed = obj_kid.vspeed;
		}
	} else {
		stopGrabbing = true;
		noMomCarry = 1;
	}
}

if scr_input_released("sub-action"){
	stopGrabbing = true;
}

show_debug_message("ist?: " + string(stopGrabbing))

if (stopGrabbing == true){
	with grabClaimed{
		x = obj_kid.x;
		y = (obj_kid.y-sprite_get_yoffset(spr_player)*1.5);
		if obj_kid.noMomCarry != 1{
			momVel = global.MKdir*1.5;
			vspeed = -2;
		}
		canBeGrabbed = false; //doesnt let grab in mid air... nvm
	}
	grabClaimed = noone;
	stopGrabbing = false;
}

show_debug_message(string(grabClaimed))

#endregion

#region animations



#endregion

#region always

vspeed = min(vspeed,5.8);

#endregion