/// @description Water!

/*

These guys can be semisolids in the proper state! ("Jug")

*/

#region the world

upperstance = 270;

momVel = 0;
momSD = 0.2;

solid = false; //HERES MY BIG BRAIN IDEA

canBeGrabbed = true;

#endregion

#region state machine (most things can be changed in create code/instance properties!)

state = "None";
stateHold = "toBottle";
objSize = 1;

/*
"None"
"Bottle"
"Water"
"Jug"

"toBottle"
"toJug"
*/

#endregion

#region state specific

#region forJug

IDsemi = instance_create_layer(x,y,"Instances",obj_ssolid);
IDsemi.x = x;
IDsemi.y = y;

#endregion


#endregion