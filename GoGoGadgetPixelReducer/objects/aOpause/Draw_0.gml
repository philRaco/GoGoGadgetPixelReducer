/// @description Insert description here
// You can write your code in this editor

scr_draw_reset();

if global.pauseState == true{
	debug_vardrawview("GAME PAUSED RIGHT NOW.",view_wport[0]/2,view_hport[0]/2);
	
	//draw screenshot of pause
	if bgFondo == -1{
	    bgFondo = sprite_add(WARMfolder + "pauseshot.png",0,0,0,0,0);
	}
	draw_sprite_ext(bgFondo,0,view_xport[0]+0,view_yport[0]+0,global.gameWidth/global.resWidth,global.gameWidth/global.resWidth,0,c_white,1);
}

scr_draw_reset();