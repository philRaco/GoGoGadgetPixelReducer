// misc custom functions

#region isInBetween2

///@function isInBetween2(var,x1,x2)

/*
argument 1: left boundary
argument 2: right boundary

argument 1 >= x >= argument 2
*/

function isInBetween2(argument0,argument1,argument2){
	if (argument0 >= argument1) && (argument0 <= argument2){
	    return true;
	} else {
	    return false;
	}
}

#endregion

#region collisionLine

///@function collisionLine(y_offset)

//	diagonal collision line that points down for every "solid" collision, i love how it uses a rectangle lol

function collisionLine(argument0){
	if (collision_rectangle(bbox_left,bbox_top,bbox_right,y+(argument0),obj_col,false,false))
	or 
    (collision_rectangle(bbox_left,bbox_top,bbox_right,y+(argument0),obj_flouer,false,false) && collision_rectangle(bbox_left,bbox_top,bbox_right,y+(argument0),obj_flouer,false,false) != noone && collision_rectangle(bbox_left,bbox_top,bbox_right,y+(argument0),obj_flouer,false,false).stateSemiSolid = 0)
	or 
    (collision_rectangle(bbox_left,bbox_top,bbox_right,y+(argument0),obj_ssolid,false,false) && collision_rectangle(bbox_left,bbox_top,bbox_right,y+(argument0),obj_ssolid,false,false) != noone && collision_rectangle(bbox_left,bbox_top,bbox_right,y+(argument0),obj_ssolid,false,false).stateSemiSolid = 0)
	{ //..wow that is long
	    return true;
	} else {
	    return false;
	}
}

#endregion

#region nearObjectSnapMK

///nearObjectSnapMK()

function nearObjectSnapMK(){
	withSolid = collision_line(x,y,x,y+(sprite_yoffset*1.25),obj_col,false,false);
	if withSolid != noone{
	    y = withSolid.y;
	    if (place_meeting(x,y,withSolid)){
	        for(var pgi = 0; pgi < 1000; ++pgi){
	            //up :) :) :) :)
	            if (!place_meeting(x,y-pgi,withSolid)){
	                y -= pgi;
	                break;
	            }
	        }
	    }
	}
}

#endregion

#region makePlaceHG

///@function makePlaceHG()

/*
previously known just as Unstucking!
*/
function makePlaceHG(){
	if place_meeting(x,y,obj_col){
	    for(var pdi = 0; pdi < 1000; ++pdi){
	        //left
	        if (!place_meeting(x-pdi,y,obj_col)){
	            x -= pdi;
	            if vspeed > 0{
	                vspeed = 0;
	            }
	            break;
	        }
	        //right
	        if (!place_meeting(x+pdi,y,obj_col)){
	            x += pdi;
	            if vspeed > 0{
	                vspeed = 0;
	            }
	            break;
	        }
	        //up left
	        if (!place_meeting(x-pdi,y-pdi,obj_col)){
	            y -= pdi;
	            x -= pdi;
	            if vspeed > 0{
	                vspeed = 0;
	            }
	            break;
	        }
	        //up right
	        if (!place_meeting(x+pdi,y-pdi,obj_col)){
	            y -= pdi;
	            x += pdi;
	            if vspeed > 0{
	                vspeed = 0;
	            }
	            break;
	        }
	        //up
	        if (!place_meeting(x,y-pdi,obj_col)){
	            y -= pdi;
	            if vspeed > 0{
	                vspeed = 0;
	            }
	            break;
	        }
	        //down left
	        if (!place_meeting(x-pdi,y+pdi,obj_col)){
	            y += pdi;
	            x -= pdi;
	            if vspeed > 0{
	                vspeed = 0;
	            }
	            break;
	        }
	        //down right
	        if (!place_meeting(x+pdi,y+pdi,obj_col)){
	            y += pdi;
	            x += pdi;
	            if vspeed > 0{
	                vspeed = 0;
	            }
	            break;
	        }
	        //down
	        if (!place_meeting(x,y+pdi,obj_col)){
	            y += pdi;
	            if vspeed > 0{
	                vspeed = 0;
	            }
	            break;
	        }
	    }
	}
}

#endregion

#region followKidXGrab

///@function followKidXGrab()

/*
makes object follow the x coordinate of kid object. grabbedNextColX
*/

function followKidXGrab(){
	var kidKnowsY = obj_kid.y-sprite_get_yoffset(spr_player)*1.5;
	var nearestColLateral = 0;
	if instance_nearest(x,y,obj_col).x < x{
		nearestColLateral = instance_nearest(x,kidKnowsY,obj_col).bbox_right;
	} else {
		nearestColLateral = instance_nearest(x,kidKnowsY,obj_col).bbox_left;
	}
	//the fun shtuff
	grabbedNextColX = collision_line(x,kidKnowsY,nearestColLateral,kidKnowsY,obj_col,false,false);
	if !collision_line(bbox_left-2,y,bbox_right+1,y,obj_col,false,false){ //betcha i will have to update this with other shtuff later on
		x = lerp(x,obj_kid.x,0.3); //will get back to ya soon
		show_debug_message("i am")
		//increase bounding box.?
	} else {
		if instance_nearest(x,y,obj_col).x < x{
			//code
			if !isInBetween2(obj_kid.x,nearestColLateral,x){
				show_debug_message("i am NOT left")
				x = lerp(x,obj_kid.x,0.3);
			}
		} else if instance_nearest(x,y,obj_col).x > x{
			//code
			if !isInBetween2(obj_kid.x,x,nearestColLateral){
				show_debug_message("i am NOT right")
				x = lerp(x,obj_kid.x,0.3);
			}
		}
	}
}

#endregion