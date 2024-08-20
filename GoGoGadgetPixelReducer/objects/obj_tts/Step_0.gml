/// @description Insert description here
// You can write your code in this editor


//debug

if scr_input_pressed("pause"){
	global.timeToTransition = 1;
	obj_manager_plat.bgSwitchTimer = 45;
	obj_manager_plat.bgMode = 1; //dark
	if !audio_is_playing(snd_mus_main){
		audio_play_sound(snd_mus_main,2,true);
	}
}