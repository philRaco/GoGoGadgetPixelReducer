/// @description the small state machine

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