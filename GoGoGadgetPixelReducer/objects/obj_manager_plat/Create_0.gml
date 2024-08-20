/// @description Insert description here
// You can write your code in this editor

global.kidV = 0 //kid velocity
global.kidMaxV = 2 //max speed

global.MKdir = 1;
global.jumpAb = 1;
global.momDir = 0;

global.hAv = 1;

global.timeToTransition = 0;
global.playerDeath = 0;
global.noKid = 1;

if instance_exists(obj_col){
    global.FloorPLAT = (instance_nearest(x,y+(view_hport[0]/2),obj_col).y-3);
}

restartAutoTimer = 90;
kidTimer = 65;

audio_sound_pitch(SFXjump,1);