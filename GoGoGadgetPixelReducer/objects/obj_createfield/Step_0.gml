/// @description Insert description here
// You can write your code in this editor

pitchChange = random_range(0.2,0.8);

if (scr_input_pressed("action") || autoStart == true){ //THIS WILL BE USED FOR CREATING TEXTBOXES!
    if (meBox == noone){
        meBox = instance_create_layer(x,y,"Instances",obj_textfield);
        meBox.myText = weText;
        meBox.maxAmountText = array_length(weText)-1;
        meBox.createdby = id;
        meBox.partText = ".";
        meBox.canTri = disableTri;
		meBox.myAlignment = weAlignment;
		alarm[0] = 1;
		exit;
    } else {
		/*
        if meBox.currText != string_length(weText[meBox.countTexter]){
            meBox.currText = string_length(weText[meBox.countTexter]);
            meBox.displayStar = true;
            audio_stop_sound(meBox.createdby.meSound);
            audio_stop_sound(NPCsound);
        } else {
            if meBox.countTexter < (array_length(weText) - 1){
                meBox.countTexter ++;
                meBox.partText = ".";
                meBox.currText = 0;
                meBox.displayStar = false;
            } else {
                if (meBox != noone){
                    meBox.currText = string_length(weText[meBox.countTexter]);
                    audio_stop_sound(meBox.createdby.meSound);
                    audio_stop_sound(NPCsound);
                    with meBox{
                        state = 0;
                    }
                    meBox = noone;
                }
            }
        }
		*/
    }
}