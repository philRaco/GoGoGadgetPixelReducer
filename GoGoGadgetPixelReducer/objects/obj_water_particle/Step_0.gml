/// @description Insert description here
// You can write your code in this editor

#region poopers

if pop == true{
	if popTimer > 0{
		popTimer--;
		sprite_index = spr_water_pop;
	} else {
		instance_destroy();
	}
	vspeed = 0
	hspeed = 0;
	momVel = 0;
}

if (collision_rectangle(bbox_left+(momVel*2.5),y+sprite_yoffset-4,bbox_right+(momVel*2.5),y+sprite_yoffset-2,obj_col,false,false) || y > room_height+72){
	pop = true;
}

#endregion

if pop != true{
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

#endregion

#region collision

//	upperstance

if sign(vspeed) = -1{
    upperstance = 90;
}
if sign(vspeed) = 1{
    upperstance = 270;
}

x += momVel; //VERY IMPORTANT!

//snap cause i'm close
if (vspeed > 0) {
    if
    (collision_rectangle(x-1,y,x+1,y+(sprite_yoffset*0.8),obj_col,false,false))
    {
        nearObjectSnapMK();
        vspeed = 0; //test?
    }
}

#endregion

#region unstucking!

makePlaceHG(); //huh.

#endregion
} else {
	hspeed = 0;
	vspeed = 0;
	momVel = 0;
}