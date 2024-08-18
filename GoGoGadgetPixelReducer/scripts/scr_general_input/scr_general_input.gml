///scr_general input: contains every relevant code relating to input handling

#region input_any

///@function input_any(varKey,varGame)
// must have A gamepad_lastbutton in object!!!

function input_any(argument0,argument1){
	switch(global.GP){
	    case 0: return keyboard_check(argument0);
	    case 1: return gamepad_button_check(argument1,0);
	}
}

#endregion 

#region scr_input

///@function scr_input(input)
//handles button inputs based on global.Kin/global.Gin array

function scr_input(argument0){
	if global.GP == 0{
	    // left
	    if argument0 == "left"{
	        if !(keyboard_check(global.Kin[1])){
	            return (keyboard_check(global.Kin[0]));
	        }
	    }
	    // right
	    if argument0 == "right"{
	        if !(keyboard_check(global.Kin[0])){
	            return (keyboard_check(global.Kin[1]));
	        }
	    }
	    // up
	    if argument0 == "up"{
	        if !(keyboard_check(global.Kin[3])){
	            return (keyboard_check(global.Kin[2]));
	        }
	    }
	    // down
	    if argument0 == "down"{
	        if !(keyboard_check(global.Kin[2])){
	            return (keyboard_check(global.Kin[3]));
	        }
	    }
	    // action
	    if argument0 == "action"{
	        return (keyboard_check(global.Kin[4]));
	    }
	    // sub-action
	    if argument0 == "sub-action"{
			return (keyboard_check(global.Kin[5]));
			/* toggle code
	        if global.togSA1 == 0{
	            return (keyboard_check(global.Kin[5]));
	        }
	        if global.togSA1 == 1{
	            if global.canSA1 != 0{
	                if keyboard_check(global.Kin[5]){
	                    global.pressSA1 *= -1;
	                    global.canSA1 = 0;
	                }
	            }
	            //toggles
	            if global.pressSA1 == -1 {return false;}
	            if global.pressSA1 == 1 {return true;}
	        }
			*/
	    }
	    // sub-action2
	    if argument0 == "sub-action2"{
			return (keyboard_check(global.Kin[6]));
			/* toggle code
	        if global.togSA2 == 0{
	            return (keyboard_check(global.Kin[6]));
	        }
	        if global.togSA2 == 1{
	            if global.canSA2 != 0{
	                if keyboard_check(global.Kin[6]){
	                    global.pressSA2 *= -1;
	                    global.canSA2 = 0;
	                }
	            }
	            //toggles
	            if global.pressSA2 == -1 {return false;}
	            if global.pressSA2 == 1 {return true;}
	        }
			*/
	    }
	    // pause
	    if argument0 == "pause"{
	        return (keyboard_check(global.Kin[7]));
	    }
	}
	if global.GP == 1{ //sadge, no joystick support for now
	    // left
	    if argument0 == "left"{
	        if !(gamepad_button_check(0, global.Gin[1])){
	            return (gamepad_button_check(0, global.Gin[0]));
	        }
	    }
	    // right
	    if argument0 == "right"{
	        if !(gamepad_button_check(0, global.Gin[0])){
	            return (gamepad_button_check(0, global.Gin[1]));
	        }
	    }
	    // up
	    if argument0 == "up"{
	        if !(gamepad_button_check(0, global.Gin[3])){
	            return (gamepad_button_check(0, global.Gin[2]));
	        }
	    }
	    // down
	    if argument0 == "down"{
	        if !(gamepad_button_check(0, global.Gin[2])){
	            return (gamepad_button_check(0, global.Gin[3]));
	        }
	    }
	    // action
	    if argument0 == "action"{
	        return (gamepad_button_check(0, global.Gin[4]));
	    }
	    // sub-action
	    if argument0 == "sub-action"{
			return (gamepad_button_check(0, global.Gin[5]));
			/* toggle code
	        if global.togSA1 == 0{
	            return (gamepad_button_check(0, global.Gin[5]));
	        }
	        if global.togSA1 == 1{
	            if global.canSA1 != 0{
	                if gamepad_button_check(0, global.Gin[5]){
	                    global.pressSA1 *= -1;
	                    global.canSA1 = 0;
	                }
	            }
	            //toggles
	            if global.pressSA1 == -1 {return false;}
	            if global.pressSA1 == 1 {return true;}
	        }
			*/
	    }
	    // sub-action2
	    if argument0 == "sub-action2"{
			return (gamepad_button_check(0, global.Gin[6]));
			/* toggle code
	        if global.togSA2 == 0{
	            return (gamepad_button_check(0, global.Gin[6]));
	        }
	        if global.togSA2 == 1{
	            if global.canSA2 != 0{
	                if gamepad_button_check(0, global.Gin[6]){
	                    global.pressSA2 *= -1;
	                    global.canSA2 = 0;
	                }
	            }
	            //toggles
	            if global.pressSA2 == -1 {return false;}
	            if global.pressSA2 == 1 {return true;}
	        }
			*/
	    }
	    // pause
	    if argument0 == "pause"{
	        return (gamepad_button_check(0, global.Gin[7]));
	    }
	}
	
	/*
	if global.togSA1 == 0{
	    global.pressSA1 = -1;
	}
	if global.togSA2 == 0{
	    global.pressSA2 = -1;
	}
	*/
}

#endregion

#region scr_input_pressed

///@function scr_input_pressed(input)
//handles button presses based on global.Kin/global.Gin array

function scr_input_pressed(argument0){
	if global.GP == 0{
	    // left
	    if argument0 == "left"{
	        if !(keyboard_check(global.Kin[1])){
	            return (keyboard_check_pressed(global.Kin[0]));
	        }
	    }
	    // right
	    if argument0 == "right"{
	        if !(keyboard_check(global.Kin[0])){
	            return (keyboard_check_pressed(global.Kin[1]));
	        }
	    }
	    // up
	    if argument0 == "up"{
	        if !(keyboard_check(global.Kin[3])){
	            return (keyboard_check_pressed(global.Kin[2]));
	        }
	    }
	    // down
	    if argument0 == "down"{
	        if !(keyboard_check(global.Kin[2])){
	            return (keyboard_check_pressed(global.Kin[3]));
	        }
	    }
	    // action
	    if argument0 == "action"{
	        return (keyboard_check_pressed(global.Kin[4]));
	    }
	    // sub-action
	    if argument0 == "sub-action"{
	        return (keyboard_check_pressed(global.Kin[5]));
	    }
	    // second sub-action
	    if argument0 == "sub-action2"{
	        return (keyboard_check_pressed(global.Kin[6]));
	    }
	    // pause
	    if argument0 == "pause"{
	        return (keyboard_check_pressed(global.Kin[7]));
	    }
	}
	if global.GP == 1{
	    // left
	    if argument0 == "left"{
	            if !(gamepad_button_check(0, global.Gin[1])){
	                return (gamepad_button_check_pressed(0, global.Gin[0])); global.pressED = 0;
	            }
	    }
	    // left
	    if argument0 == "right"{
	            if !(gamepad_button_check(0, global.Gin[0])){
	                return (gamepad_button_check_pressed(0, global.Gin[1])); global.pressED = 0;
	            }
	    }
	    // left
	    if argument0 == "up"{
	            if !(gamepad_button_check(0, global.Gin[3])){
	                return (gamepad_button_check_pressed(0, global.Gin[2])); global.pressED = 0;
	            }
	    }
	    // left
	    if argument0 == "down"{
	            if !(gamepad_button_check(0, global.Gin[2])){
	                return (gamepad_button_check_pressed(0, global.Gin[3])); global.pressED = 0;
	            }
	    }
	    // action
	    if argument0 == "action"{
	        return (gamepad_button_check_pressed(0, global.Gin[4]));
	    }
	    // sub-action
	    if argument0 == "sub-action"{
	        return (gamepad_button_check_pressed(0, global.Gin[5]));
	    }
	    // second sub-action
	    if argument0 == "sub-action2"{
	        return (gamepad_button_check_pressed(0, global.Gin[6]));
	    }
	    // pause
	    if argument0 == "pause"{
	        return (gamepad_button_check_pressed(0, global.Gin[7]));
	    }
	}
}

#endregion

#region scr_input_released

///@function scr_input_released(input)
//handles button releases based on global.Kin/global.Gin array

function scr_input_released(argument0){
	if global.GP == 0{
	    // left
	    if argument0 == "left"{
	        return (keyboard_check_released(global.Kin[0]));
	    }
	    // right
	    if argument0 == "right"{
	        return (keyboard_check_released(global.Kin[1]));
	    }
	    // up
	    if argument0 == "up"{
	        return (keyboard_check_released(global.Kin[2]));
	    }
	    // down
	    if argument0 == "down"{
	        return (keyboard_check_released(global.Kin[3]));
	    }
	    // action
	    if argument0 == "action"{
	        return (keyboard_check_released(global.Kin[4]));
	    }
	    // sub-action
	    if argument0 == "sub-action"{
			/*for toggle
	        if keyboard_check_released(global.Kin[5]) == true{
	            global.canSA1 = 1;
	        }
			*/
	        return (keyboard_check_released(global.Kin[5]));
	    }
	    // sub-action2
	    if argument0 == "sub-action2"{
			/* for toggle
	        if keyboard_check_released(global.Kin[6]) == true{
	            global.canSA2 = 1;
	        }
			*/
	        return (keyboard_check_released(global.Kin[6]));
	    }
	    // pause
	    if argument0 == "pause"{
	        return (keyboard_check_released(global.Kin[7]));
	    }
	}
	if global.GP == 1{
	    // left
	    if argument0 == "left"{
	            return (gamepad_button_check_pressed(0, global.Gin[0]));
	    }
	    // right
	    if argument0 == "right"{
	            return (gamepad_button_check_pressed(0, global.Gin[1]));
	    }
	    // up
	    if argument0 == "up"{
	            return (gamepad_button_check_released(0, global.Gin[2])); 
	    }
	    // down
	    if argument0 == "down"{
	            return (gamepad_button_check_released(0, global.Gin[3])); 
	    }
	    // action
	    if argument0 == "action"{
	        return (gamepad_button_check_released(0, global.Gin[4]));
	    }
	    // sub-action
	    if argument0 == "sub-action"{
			/* for toggle
	        if gamepad_button_check_released(0, global.Gin[5]) == true{
	            global.canSA1 = 1;
	        }
			*/
	        return (gamepad_button_check_released(0, global.Gin[5]));
	    }
	    // sub-action2
	    if argument0 == "sub-action2"{
			/* for toggle
	        if gamepad_button_check_released(0, global.Gin[6]) == true{
	            global.canSA2 = 1;
	        }
			*/
	        return (gamepad_button_check_released(0, global.Gin[6]));
	    }
	    // pause
	    if argument0 == "pause"{
	        return (gamepad_button_check_released(0, global.Gin[7]));
	    }
	}
}

#endregion