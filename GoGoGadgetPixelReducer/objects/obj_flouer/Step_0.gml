/// @description the big state machine

#region gravity + essential

#region gravity

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
    (collision_rectangle(x-1,y,x+1,y+(sprite_yoffset*1.25),obj_col,false,false))
    {
        nearObjectSnapMK();
        vspeed = 0; //test?
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
			    if round(obj_kid.y+sprite_get_yoffset(spr_player)-1) > self.y-sprite_yoffset+7{
			        stateSemiSolid = 1;
			    } else if round(obj_kid.y+sprite_get_yoffset(spr_player)) < self.y-sprite_yoffset+7{
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



#endregion