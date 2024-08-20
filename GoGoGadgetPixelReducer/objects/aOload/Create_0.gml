/// @description Init object for entire game

randomize();

#region Macros

#macro WARM show_error("WARM macro incident !!")

#macro WARMinputkey working_directory + "inputkey.ini"

#macro WARMinputgp working_directory + "inputgp.ini"

#macro WARMsettings working_directory + "settings.ini"

#macro WARMfolder working_directory

#macro ture true //SUPER important macro

//gamepad buttons
#macro gp_button_down gp_face1
#macro gp_button_up gp_face2
#macro gp_button_left gp_face3
#macro gp_button_right gp_face4

#endregion

#region Resolution

global.gameWidth = 480; //actual in game resolution size
global.gameHeight = 240;

ini_open(WARMsettings)
	if !ini_section_exists("visual"){
		ini_write_real("visual","resWidth",1280);
		ini_write_real("visual","resWidth",640);
		ini_write_real("visual","chosenResolution",0);
	}
	global.resWidth = ini_read_real("visual","resWidth",1280); //upscaled resolution displayed at monitor
	global.resHeight = ini_read_real("visual","resHeight",640);
	global.resF = ini_read_real("visual","chosenResolution",0);
ini_close();

global.aspectratio = global.gameWidth/global.gameHeight;

#endregion

#region Input

global.GP = 0; //0 = keyb, 1 = gamepad

ini_open(WARMinputkey);
    if !ini_section_exists("inputkey"){
        ini_write_real("inputkey","left",vk_left);
        ini_write_real("inputkey","right",vk_right);
        ini_write_real("inputkey","up",vk_up);
        ini_write_real("inputkey","down",vk_down);
        ini_write_real("inputkey","action",vk_space);
        ini_write_real("inputkey","sub-action",ord("X"));
        ini_write_real("inputkey","sub-action2",ord("C"));
        ini_write_real("inputkey","pause",vk_enter);
    }
	global.Kin[0] = ini_read_real("inputkey","left",ord("A"));
    global.Kin[1] = ini_read_real("inputkey","right",ord("D"));
    global.Kin[2] = ini_read_real("inputkey","up",ord("W"));
    global.Kin[3] = ini_read_real("inputkey","down",ord("S"));
    global.Kin[4] = ini_read_real("inputkey","action",ord("I"));
    global.Kin[5] = ini_read_real("inputkey","sub-action",ord("U"));
    global.Kin[6] = ini_read_real("inputkey","sub-action2",ord("O"));
    global.Kin[7] = ini_read_real("inputkey","pause",vk_enter);
ini_close();

ini_open(WARMinputgp);
    if !ini_section_exists("inputgp"){
        ini_write_real("inputgp","left",gp_padl);
        ini_write_real("inputgp","right",gp_padr);
        ini_write_real("inputgp","up",gp_padu);
        ini_write_real("inputgp","down",gp_padd);
        ini_write_real("inputgp","action",gp_face1);
        ini_write_real("inputgp","sub-action",gp_face3);
        ini_write_real("inputgp","sub-action2",gp_shoulderrb);
        ini_write_real("inputgp","pause",gp_start);
    }
	global.Gin[0] = gp_padl;
    global.Gin[1] = gp_padr;
    global.Gin[2] = gp_padu;
    global.Gin[3] = gp_padd;
    global.Gin[4] = gp_face1;
    global.Gin[5] = gp_face3;
    global.Gin[6] = gp_shoulderrb;
    global.Gin[7] = gp_start;
ini_close();

#endregion

#region Visual

global.chosenFont = fnt_rtm;
ini_open(WARMsettings)
	if !ini_key_exists("visual","font"){
		ini_write_real("visual","font",0);
	}
	global.fontChoice = ini_read_real("visual","font",0);
ini_close();

scr_res();

if (window_get_caption() != "the Story of my Sketchy Life"){
	window_set_caption("the Story of my Sketchy Life");
}
window_set_caption("the Story of my Sketchy Life");

#endregion

#region Gameplay general

//	Pause
global.pauseState = false;

//	Camera
global.gowon = 0;

global.lockXY = 0;

global.xCapable = 1;
global.yCapable = 0;

global.lerpingToX = 0;
global.lerpingToY = 0;

//	Checkpoint values
global.Check = noone;
global.CheckR = 0;
global.Checkx = 0;
global.Checky = 0;

//	Room to go to + restart
global.restartMode = 0;
global.roomor = rm_tts;

#endregion

#region Sound

audio_master_gain(1);

//	Volume variables
global.intMus = 1;
global.intSfx = 1;
global.intEnv = 1;

#endregion

#region Misc

global.Localization = 0;

//UNIQUE MENU SOUNDS FOR EVERYONE
ini_open(WARMsettings)
	if !ini_section_exists("Sounds"){
		//haha. they changed how it works
		snormalRandom = choose("SFXsnormal1","SFXsnormal2","SFXsmall1","SFXsnormal4")
		smallRandom = choose("SFXsnormal3","SFXsmall2","SFXsmall3")
		tinyRandom = choose("SFXtiny1","SFXtiny3","SFXtiny4")
	    //first write
	    ini_write_string("Sounds","snormal",snormalRandom);
	    ini_write_string("Sounds","small",smallRandom);
	    ini_write_string("Sounds","tiny",tinyRandom);
	    //now read
	    global.snormalS = ini_read_string("Sounds","snormal","SFXsmall1");
	    global.smallS = ini_read_string("Sounds","small","SFXsnormal3");
	    global.tinyS = ini_read_string("Sounds","tiny","SFXtiny4");
	} else {
	    //only read
	    global.snormalS = ini_read_string("Sounds","snormal","SFXsnormal1");
	    global.smallS = ini_read_string("Sounds","small","SFXtiny4");
	    global.tinyS = ini_read_string("Sounds","tiny","SFXtiny4");
	}
ini_close();

#endregion

#region debug maybe

game_set_speed(60,gamespeed_fps)

#endregion

alarm[0] = 1;