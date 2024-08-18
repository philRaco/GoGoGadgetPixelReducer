// misc custom functions

#region isInBetween2

///@function isInBetween2(var,x1,x2)

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
	if (collision_rectangle(x-1,y,x+1,y+(argument0),obj_col,false,false))
	{
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

///makePlaceHG()

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