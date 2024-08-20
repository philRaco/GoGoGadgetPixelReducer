/// @description Insert description here
// You can write your code in this editor

#region plus

depth = -10000;

createdby = noone;

state = 1;
dalpha = 1;

dalphaTri = 1;
canTri = 1;

//alarm[0] = 1; //was probably USED

#endregion

#region ///weird animation yes

offsetty = 16;
nofset = 8;

#endregion

#region textFunctionality

/*

partText is the text that the player can see ! !

*/

countTexter = 0;
maxAmountText = 3;

myAlignment = fa_left;

myText[countTexter] = "This is a world.";

currText = 0;
textLast = currText;
/* here! */ partText = string_copy(myText[countTexter],1,currText); //here!

withSep = (sprite_get_width(spr_idea)-16);
sepBy = 14;

speedText = 0.8;
speedLerp = 0.4;

//phil how the heck can you copy copied code (sure)
timer3dot = 15; 
canset3 = 1;

#endregion

#region boxControl

baser = string_height_ext(partText,sepBy,withSep);
nicer = baser;

lineLimit = 1;

displayStar = false;
starFrame = 0;

#endregion