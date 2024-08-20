/// @description Water!

/*

These guys can be semisolids in the proper state! ("Jug")

*/

#region the world

upperstance = 270;

momVel = 0;
momSD = 0.2;

solid = false; //HERES MY BIG BRAIN IDEA

hanged = false;

#endregion

#region default to these even if state doesnt use variables
canBeGrabbed = true;
momMultiplier = 1;
canHaveGravity = true;
mustGoToX = 0;
mustGoToY = 0;
spriteDirection = 90;
stateSemiSolid = 0;
timIsSolid = 0;
tim = 35;
#endregion

#region state machine (most things can be changed in create code/instance properties!)

state = "None";
stateHold = "toBottle";
objSize = 1;
objTargetSize = objSize;

changingWith = noone;
iMust = "Grow";

wasThrownTowards = 1;

currChanging = false;
stopChanging = false;

initChangeVars = false;

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

if state == "Bottle"{
#region forBottle

momMultiplier = 1.5;

#endregion
}

if state == "Water"{
#region forWater

canBeGrabbed = false;
canHaveGravity = false;

mustGoToX = 2;
mustGoToY = 0;
spriteDirection = 0; //0 = right and then it goes from there!

#endregion
}

if state == "Jug"{
#region forJug

/*
IDsemi = instance_create_layer(x,y,"Instances",obj_ssolid);
IDsemi.x = x;
IDsemi.y = y;
*/ //lol

//READDING IN SEMI SOLID CODE LOL

stateSemiSolid = 0;

timIsSolid = 1;
tim = 35;

#endregion
}

#endregion