/// @description ah here we go once again

if noPauseRoom() == true{
    cantPause = 1;
} else {
    cantPause = 0;
}

global.restartMode = 0;
global.roomor = rm_tts;

global.pauseState = 0;

arbiTimer = 3;