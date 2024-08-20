/// @description the big state machine

#region gravity + essential

#region gravity

if (canHaveGravity == true){
	if !place_free(x,y+1){
	    gravity = 0;
	
		#region momentum
			if momVel != 0{
				if momVel > 0{
					momVel -= momSD;
				}
				if momVel < 0{
					momVel += momSD;
				}
				if isInBetween2(momVel,-0.25,0.25){
					momVel = 0;
				}
			}
		#endregion
	} else {
		if hanged == false{
			if currChanging == false{
			    if vspeed <= -4{
			        gravity = 1.2/4;
			    }
			    if (vspeed >= -3.9 && vspeed < 2){
			        gravity = 0.635/4;
			    }
			    if vspeed >= 2{
			        gravity = 1.3/4;
			    }
			} else {
				gravity = 0.7/4;
				if (wasThrownTowards == 0 || wasThrownTowards == 4){
					vspeed = lerp(vspeed,0,0.5);
				}
			}
		} else {
			gravity = 0;
			vspeed = 0;
			momVel = 0;
		}
	}
}

#endregion

#region collision

//	upperstance

if sign(vspeed) = -1{
    upperstance = 90;
}
if sign(vspeed) = 1{
    upperstance = 270;
}

if place_meeting(x+momVel,y,obj_col){
    while(!place_meeting(x+sign(momVel),y,obj_col)){
        x += sign(momVel);
    }
    momVel = 0;
    hspeed = 0;
}

if state != "Water"{
	x += momVel; //VERY IMPORTANT!
}

//snap cause i'm close
if (vspeed > 0) {
    if
    (collision_rectangle(x-1,y,x+1,y+(sprite_yoffset*0.8),obj_col,false,false))
    {
        nearObjectSnapMK();
        vspeed = 0; //test?
		if state != "Water"{
			canBeGrabbed = true;
		}
    }
}

#endregion

#region unstucking!

makePlaceHG(); //huh.

#endregion

#endregion

#region states (ACTIONS.)

switch(state){ //OH MAN I LOVE [NON DESCRIPT GAME COMING OUT SEPTEMBER 6TH]
	#region //	WATER BOTTLE	//
	case "Bottle":
		solid = false;
		if place_meeting(x,y,obj_water_particle){
			momVel = instance_nearest(x,y,obj_water_particle).momVel*0.75;
		}
		if (instance_exists(obj_hanger) && instance_exists(obj_kid)){
			if (place_meeting(x,y,obj_hanger) && obj_kid.iAmGrabbing == false){
				if vspeed >= 0{
					vspeed = 0;
					y = lerp(y,obj_hanger.y,0.8);
					x = lerp(x,obj_hanger.x,0.2);
				}
				hanged = true;
			} else {
				hanged = false;
			}
		}
	break;
	#endregion
	#region //	WATER ITSELF	//
	case "Water":
		solid = false;
		jugOrBottleThrown(wasThrownTowards);
		x += mustGoToX;
		y += mustGoToY;
		canHaveGravity = false;
		canBeGrabbed = false;
		if vspeed != 0{
			vspeed = 0;
		}
		hspeed = 0;
		if
			collision_rectangle(bbox_left+mustGoToX,bbox_top+mustGoToY,bbox_right+mustGoToX,bbox_bottom+mustGoToY,obj_col,false,false)
		{
				//	creation of A LOT of water.
			var water1 = instance_create_layer(x,y+irandom_range(-2,4),"Instances",obj_water_particle);
				water1.momVel = 1.75;
			var water2 = instance_create_layer(x,y+irandom_range(-2,4),"Instances",obj_water_particle);
				water2.momVel = 2;
			var water3 = instance_create_layer(x,y+irandom_range(-2,4),"Instances",obj_water_particle);
				water3.momVel = 2.25;
			var water4 = instance_create_layer(x,y+irandom_range(-2,4),"Instances",obj_water_particle);
				water4.momVel = 2.5;
			var wWater5 = instance_create_layer(x,y+irandom_range(-2,4),"Instances",obj_water_particle);
				wWater5.momVel = -2.25;
			var wWater6 = instance_create_layer(x,y+irandom_range(-2,4),"Instances",obj_water_particle);
				wWater6.momVel = -2;
			var wWater7 = instance_create_layer(x,y+irandom_range(-2,4),"Instances",obj_water_particle);
				wWater7.momVel = -1.75;
			var wWater8 = instance_create_layer(x,y+irandom_range(-2,4),"Instances",obj_water_particle);
				wWater8.momVel = -2.5;
			instance_destroy();
		}
	break;
	#endregion
	#region //	WATER JUG		//
	case "Jug":
		if (instance_exists(obj_hanger) && instance_exists(obj_kid)){
			if (place_meeting(x,y,obj_hanger) && obj_kid.iAmGrabbing == false){
				if vspeed >= 0{
					vspeed = 0;
					y = lerp(y,obj_hanger.y,0.8);
					x = lerp(x,obj_hanger.x,0.2);
				}
				hanged = true;
			} else {
				hanged = false;
			}
		}
		if place_meeting(x,y,obj_water_particle){
			momVel = instance_nearest(x,y,obj_water_particle).momVel*0.75;
		}
		#region semi solid action
			if timIsSolid == 0{
				if instance_exists(obj_kid){
					if round(obj_kid.y+sprite_get_yoffset(spr_player)-1) > self.y-sprite_yoffset+9{ //funny offset of 9 WOKRS PERFECTLY WOW
						stateSemiSolid = 1;
					} else if round(obj_kid.y+sprite_get_yoffset(spr_player)) < self.y-sprite_yoffset+9{
						stateSemiSolid = 0;
					}
				}
			} else {
				//timIsSoli
				if tim > 35{
					tim--;
					timIsSolid = 1;
					stateSemiSolid = 0;
				} else {
					timIsSolid = 0;
				}
			}
			//	dun (0 = solid; 1 = passthrough)
			switch(stateSemiSolid){
				case 0:
					solid = true;
				break;
				case 1:
					solid = false;
				break;
			}
		#endregion
	break;
	#endregion
}
	
#endregion

#region its changing
if currChanging != true{

image_blend = c_white; //debug

} else {

image_blend = c_red; //debug

changingWith = collision_rectangle(bbox_left-2,bbox_top-2,bbox_right+2,bbox_bottom+3,obj_changer,false,false);

if changingWith == noone{
	stopChanging = true;
}

if stopChanging == true{ //(step 3)
	
#region MADdddE YOURSL

//IM [UHHH] MYSELF PLEASE LET THE [PLACE] BE FREE

if (iMust == "Grow" && state == "Water"){ //"grow" into item
	switch(stateHold){
		case "toBottle":
			stateHold = "toJug";
			state = "Bottle";
		break;
		case "toJug":
			stateHold = "toBottle";
			state = "Jug";
		break;
	}
	if mustGoToY != 0{
		vspeed = sign(mustGoToY)*7;
	}
}
if (iMust == "Shrink" && state != "Water"){ //after shrink turn into water if small enough
	if objTargetSize < 1{
		state = "Water";
		objSize = 1;
		objTargetSize = 1;
		jugOrBottleThrown();
		if wasThrownTowards == 0 || wasThrownTowards == 4{
			mustGoToY = 0;
		}
	}
}

//			state specific defaulting			//
switch("state"){
	case "Bottle":
		canBeGrabbed = true;
		canHaveGravity = true;
		momMultiplier = 1.5;
	break;
	case "Water":
		canBeGrabbed = false;
		canHaveGravity = false;
		momMultiplier = 1;
		momVel = 0;
		vspeed = 0;
		waterMakeDirection(wasThrownTowards);
	break;
	case "Jug":
		canBeGrabbed = true;
		canHaveGravity = true;
		momMultiplier = 1;
	break;
}

stopChanging = false;
currChanging = false;

#endregion

} else { //in chagning phase
	if initChangeVars != false{ //do funny actions (step 2, continuous until exit)
		/*
		switch(stateHold){
			case "toBottle":
				
			break;
			case "toJug":
				
			break;
		}
		*/
		
	} else { //!= else
		if changingWith.state == "Grow"{ //GROW OBJECT (step 1)
			switch(state){
				case "Bottle":
					if objSize == 0.5{
						objTargetSize = 1;
					}
					if objSize == 1{
						objTargetSize = 1.5;
					}
				break;
				case "Jug":
					if objSize == 0.5{
						objTargetSize = 1;
					}
					if objSize == 1{
						objTargetSize = 1.5;
					}
				break;
			}
			iMust = "Grow";
		} else if changingWith.state == "Shrink"{ //SHRINK OBJECT (step 1)
			if objSize >= 1.5{
				objTargetSize = 1;
			} else if objSize <= 1{
				switch(state){
					case "Bottle":
						objTargetSize = 0.5;
					break;
					case "Water":
						objTargetSize = 1;
					break;
					case "Jug":
						objTargetSize = 0.5;
					break;
				}
			}
			iMust = "Shrink";
		}
		initChangeVars = false;
	}
}

}

#endregion

#region animation

objSize = lerp(objSize,objTargetSize,0.2);

image_xscale = objSize;
image_yscale = objSize;

switch(state){ //OH MAN I LOVE [NON DESCRIPT GAME COMING OUT SEPTEMBER 6TH]
	#region //	WATER BOTTLE	//
	case "Bottle":
		sprite_index = spr_waterbottle;
		image_angle = lerp(image_angle,0,0.4);
	break;
	#endregion
	#region //	WATER ITSELF	//
	case "Water":
		sprite_index = spr_waterflow;
		image_angle = spriteDirection;
	break;
	#endregion
	#region //	WATER JUG		//
	case "Jug":
		sprite_index = spr_watertank;
		image_angle = lerp(image_angle,0,0.4);
	break;
	#endregion
}

#endregion