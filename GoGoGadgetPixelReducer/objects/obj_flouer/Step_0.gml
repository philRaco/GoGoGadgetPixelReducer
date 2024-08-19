/// @description the big state machine

#region gravity + essential

#region gravity

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

#region collision

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

#endregion

#region states

switch(state){ //OH MAN I LOVE [NON DESCRIPT GAME COMING OUT SEPTEMBER 6TH]
	#region //	WATER BOTTLE	//
	case "Bottle":
		solid = false;
		
	break;
	#endregion
	#region //	WATER ITSELF	//
	case "Water":
		solid = false;
		
	break;
	#endregion
	#region //	WATER JUG		//
	case "Jug":
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

#region animation

switch(state){ //OH MAN I LOVE [NON DESCRIPT GAME COMING OUT SEPTEMBER 6TH]
	#region //	WATER BOTTLE	//
	case "Bottle":
		sprite_index = spr_waterbottle;
	break;
	#endregion
	#region //	WATER ITSELF	//
	case "Water":
		sprite_index = spr_waterflow;
	break;
	#endregion
	#region //	WATER JUG		//
	case "Jug":
		sprite_index = spr_watertank;
	break;
	#endregion
}

#endregion