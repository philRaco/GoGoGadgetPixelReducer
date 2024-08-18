/// @description Water!

/*

These guys can be semisolids in the proper state! ("Jug")

*/

#region the world

upperstance = 270;

momVel = 0;

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

stateSemiSolid = 0;

timIsSolid = 1;
tim = 35;

#endregion


#endregion