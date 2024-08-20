/// @description Insert description here
// You can write your code in this editor

#region not my problem lmfao

if zoomChange != zoom{
    timesUpdate();
    scr_res();
    if (zoomChange < (zoom-0.01) || zoomChange > (zoom+0.01)){
        zoomChange += ((zoom-zoomChange)/3);
        view_wview[0] = 440*zoomChange;
        view_hview[0] = 260*zoomChange;
    } else {
        zoomChange = zoom;
        view_wview[0] = 440*zoom;
        view_hview[0] = 260*zoom;
    }
}


var roundedGowon = round(global.gowon)
if is_real(roundedGowon){
	global.gowon = roundedGowon;
}

#endregion

#region new.

if instance_exists(obj_kid){
	x = lerp(room_width/2,obj_kid.x,0.7);
	y = lerp(room_height/2,obj_kid.y,0.7);
}

#endregion