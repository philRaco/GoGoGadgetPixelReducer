/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_kid){
	if instance_exists(obj_viewfollow){
		x = lerp(x,obj_viewfollow.x,0.05);
		y = lerp(y,obj_viewfollow.y,0.05);
	}
} else {
	if instance_exists(obj_neutral_camera){
		if global.noKid == 0{
			if obj_neutral_camera.location == "first"{
				with obj_neutral_camera{
					obj_portfollow.lockMeIn = id;
				}
			}
		} else {
			if obj_neutral_camera.location == "last"{
				with obj_neutral_camera{
					obj_portfollow.lockMeIn = id;
				}
			}
		}
		if instance_exists(lockMeIn){
			x = lerp(x,lockMeIn.x,0.04);
			y = lerp(y,lockMeIn.y,0.04);
		}
	} else { //NO CAMMIES
		x = lerp(x,room_width/2,0.04);
		y = lerp(y,room_height/2,0.04);
	}
}

