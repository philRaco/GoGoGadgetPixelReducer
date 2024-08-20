/// @description the big state machine

#region gravity + essential

#region gravity

if canHaveGravity == true{
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

x += momVel; //VERY IMPORTANT!

//snap cause i'm close
if (vspeed > 0) {
    if
    (collision_rectangle(x-1,y,x+1,y+(sprite_yoffset*0.8),obj_col,false,false))
    {
        nearObjectSnapMK();
        vspeed = 0; //test?
		canBeGrabbed = true;
    }
}

#endregion

#region unstucking!

makePlaceHG(); //huh.

#endregion

#endregion

if currChanging != true{

#region states (ACTIONS.)

switch(state){ //OH MAN I LOVE [NON DESCRIPT GAME COMING OUT SEPTEMBER 6TH]
	#region //	WATER BOTTLE	//
	case "Bottle":
		solid = false;
		if place_meeting(x,y,obj_water_particle){
			momVel = instance_nearest(x,y,obj_water_particle).momVel*0.75;
		}
	break;
	#endregion
	#region //	WATER ITSELF	//
	case "Water":
		solid = false;
		x += mustGoToX;
		y += mustGoToY;
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

image_blend = c_white; //debug

} else {

image_blend = c_red; //debug

changingWith = collision_rectangle(bbox_left-2,bbox_top-2,bbox_right+2,bbox_bottom+3,obj_changer,false,false);

if changingWith == noone{
	stopChanging = true;
}

if stopChanging == true{
	
#region MADdddE YOURSL

switch(stateHold){
	case "toBottle":
		stateHold = "toJug";
	break;
	case "toJug":
		stateHold = "toBottle";
	break;
}
stopChanging = false;
currChanging = false;

#endregion

} else { //in chagning phase
	
	if initChangeVars != false{ //do funny actions
		switch(stateHold){
			case "toBottle":
				
			break;
			case "toJug":
				
			break;
		}
		objSize = lerp(objSize,objTargetSize,0.2);
	} else { //!= else
		if changingWith.state == "Grow"{ //GROW OBJECT
			if objSize <= 1{
				objTargetSize *= 2;
			}
		} else if changingWith.state == "Shrink"{ //SHRINK OBJECT
			
		}
		initChangeVars = false;
	}
}

}

#region animation

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