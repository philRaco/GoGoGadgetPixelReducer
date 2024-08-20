/// @description Mostly copied from MiKe
// You can write your code in this editor

#region misc from cleaned up

state = 1;

jumpAbl = 3;
tempDir = global.MKdir;
willsaveDir = tempDir;
saveUpMV = 0;

landingRecover = 0;
convBelow = 0; // check if conveyroBelt is below

cantwont = 1;

#endregion

#region movement

SV = 0.25;
DV = 0.5;
MaxV = global.kidMaxV;
movement = 0;

DeAcc = 0;

#endregion

#region i created Jumping? a Coding Block.

jumpMax = 2.4;
jumpSpeed = jumpMax;
jumpMinus = 1;
jumpInitial = -1;

jumpCap = 2.1; //lesser = higher CAP here (OMG OBLIGATORY GEOMETRY DASH REFERENCE)
jumpCapDefault = jumpCap;

jumpRecoverDis = sprite_yoffset*2.1;
noMoreJump = 0;

itLands = 1;

callingr = 0;
calling2 = 0;

vorSpeise = 0; //jump buffer: activated when pressing
vorCount = 0; //countdown

scheduleJump = 0;
scheduleJumpCanDo = 0;

pitchJump = 0;
pJInc = 0.06;
initPitchJump = 0.8;

audio_play_sound(SFXjump,1,false);
audio_stop_sound(SFXjump);

soundJump = audio_play_sound(SFXjump,1,false);

audio_sound_pitch(soundJump,initPitchJump+pitchJump);
audio_stop_sound(SFXjump);

coyoteTimerInit = 12;
coyoteTimer = coyoteTimerInit;

//	also

arbC = 0;

rJT = 0;
extrJump = -1;

#endregion

#region that reminds me of that time i started Grabbing

grabClaimed = noone;
stopGrabbing = false;

grabOffsetY = -(sprite_yoffset/2)+4
grabbedObjOffsetY = 0; //half of hieght of other object

grabbedNextColX = noone;
noMomCarry = false;

allowThrowDir = false;
grabMomX = 0;
grabMomY = 0;

currentDirThrow = 1;

#endregion

#region GOG GO GO

lockedIn = false;
indSubImage = 0;

//anim lol
theIndScale = 1;
theIndTimer = 0;
theIndPower = 3;

#endregion

#region visual

depth = -5;

image_xscale = global.MKdir;

Lkid = (sprite_get_width(spr_player)/2);
Hkid = (sprite_get_height(spr_player)/2);

/* finer x- and y-scale and angle control */
ixs = 1; //replaces image_xscale and yscale
iys = 1;
xMod = 1; //modifier of x and y scale
yMod = 1;
xJ = 0; // the J series of variables tells us whether xMod has been modified or not for ultimate perofrmance
yJ = 0;
mX = 1; //multipier to how slow or fast lerp should be
mY = 1;

#endregion

#region collision

//	snap to ground instantly btw
var snapToSolidBeninging = collision_line(x,y,x,y+(sprite_yoffset*4),obj_col,false,false);
if snapToSolidBeninging != noone{
	y = snapToSolidBeninging.y;
	if (place_meeting(x,y,snapToSolidBeninging)){
	    for(var pgi = 0; pgi < 1000; ++pgi){
	        //up :) :) :) :)
	        if (!place_meeting(x,y-pgi,snapToSolidBeninging)){
	            y -= pgi;
	            break;
	        }
	    }
	}
}

upperstance = 270;

sloped = 15;
slpSpd = 4;

snapMKcooldown = 0;
withSolid = noone;
withBox = noone;

#endregion

exit;