/// @description Insert description here
// You can write your code in this editor

meBox = noone;
pitchnus = 0;

weText[0] = "f";
pitchChange = random_range(0.0,0.4);

creationCodeMessage = "...";

NPCsound = 0;

disableTri = 0;

#region Box!

meBox = noone;

maxAmountText = array_length(weText);
allowTextSkip = true;

pitchnus = 1;
pitchChange = random_range(0.2,1.6);

NPCsound = audio_play_sound(SFXtalkUnknown,1,false);
meSound = SFXtalkUnknown;
audio_stop_sound(SFXtalkUnknown);
audio_stop_sound(NPCsound);

disableTri = 1;

alarm[0] = 1;