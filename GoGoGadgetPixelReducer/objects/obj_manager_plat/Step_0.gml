/// @description Lets player advnce level..... NVM

if global.timeToTransition == 1{
	with obj_kid{
		state = 5;
	}
}

if global.playerDeath == 1{
	instance_destroy(obj_kid);
	if restartAutoTimer > 0{
		restartAutoTimer--;
	} else {
		room_restart();
	}
}

if global.noKid == 1{
	if kidTimer > 0{
		kidTimer--;
	} else {
		instance_create_layer(x,y,"Instances",obj_kid);
		obj_kid.x = global.Checkx;
		obj_kid.y = global.Checky;
		global.noKid = 0;
	}
}