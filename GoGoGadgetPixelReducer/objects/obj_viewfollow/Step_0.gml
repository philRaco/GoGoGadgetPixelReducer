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

if hasmove = 1{
	if global.lockXY != 1{
		#region from obj_kid

		if instance_exists(obj_kid){
		    ifall = obj_kid;

		    //change distance away from player
		    if snapToMKdis == 1{
		        if snapTimer > 0{
		            snapTimer--;
		        } else {
		            snpMe = 1;
		            distanceharm = 5;
		        }
		    } else {
		        if snapTimer < snapTimerMAX{
		            snapTimer++;
		        } else {
		            snpMe = 0;
		        }
		    }
		    if distance_to_object(obj_kid) > tooaway{
		        if snapToMKdis != 1{
		            distanceharm = 14;
		        }
		        snapToMKdis = 1;
		    } else {
		        distanceharm = 5;
		        snapToMKdis = 0;
		    }
		    if (obj_kid.movement == 1){
		        if global.gowon > gowonAX{
		            global.gowon = lerp(global.gowon,gowonAX,lerpSpeed);
		        } else if global.gowon < gowonAX{
		            global.gowon += 1;
		        }
		    } else {
		        if global.gowon > 0{
		            global.gowon -= 1;
		        }
		    }
		    lerpDir = lerp(lerpDir,global.MKdir,lerpSpeed);

		    //move towards player, or dont, your choiche
		    if global.lockXY != 2{
		        if obj_kid.state == 1{
		            x += (((obj_kid.x-x)/(distanceharm)) + (global.gowon)*lerpDir)*global.xCapable;
		            if abs(global.kidV) < 6{
		                gowonAX = gowonAXb;
		            } else if abs(global.kidV) >= 7{
		                gowonAX = gowonAXb*3;
		            } 
		        } else {
		            x += (((obj_kid.x-x)/distanceharm) + (global.gowon)*lerpDir)*global.xCapable;
		            gowonAX = ceil(gowonAXb*1.5);
		        }
		    } else {
		        x = lerp(x,global.lerpingToX,0.14);
		    }                                               //xCap
		    if global.lockXY != 3{
		        y += (((obj_kid.y-y)/floor(distanceharm/2)) + 2)*global.yCapable;
		    } else {
		        y = lerp(y,global.lerpingToY,0.14);
		    }                                               //yCap

			#endregion
		}
	} else {
		#region goto

		x = lerp(x,global.lerpingToX,lerpSpeed);
		y = lerp(y,global.lerpingToY,lerpSpeed);
		
		#endregion
	}
}