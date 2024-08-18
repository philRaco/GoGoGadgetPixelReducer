// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@function scr_res()

#region scr_res

function scr_res(){
	//Set resolution to wanted res
	var displayWidth = global.resWidth;
	var displayHeight = global.resHeight;

	//Set size of GUI
	display_set_gui_size(displayWidth, displayHeight);

	//Set default resolution
	var baseWidth = global.gameWidth;
	var baseHeight = global.gameHeight;

	//set aspect_ratio
	var aspect = baseWidth/baseHeight;

	//Adjusted width and height work out (why it not worky :( )
	if (displayWidth >= displayHeight){
	    var height = min(baseHeight, displayHeight);
	    var width = height * aspect;
	}

	//Resize
	surface_resize(application_surface,width,height);
}

#endregion