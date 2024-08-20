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