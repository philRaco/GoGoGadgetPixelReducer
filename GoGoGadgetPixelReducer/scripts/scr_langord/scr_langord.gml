///scr_langord: contains functions which return key/button names

#region scr_langordkey

///@function scr_langordkey(argument0)
//returns string based on key input

function scr_langordkey(argument0){
	switch(global.Localization){
	    case 0:
	        /*START OF english*/
	        switch(argument0){
	            case 0:
	            return ("..?");
            
	            case 8: 
	            return ("Backspace");
            
	            case 9: 
	            return ("Tab");
            
	            case 13: 
	            return ("Enter"); 
            
	            case 19: 
	            return ("Pause/Break"); 
            
	            case 20: 
	            return ("Caps Lock"); 
            
	            case 27: 
	            return ("Escape");
            
	            case 32: 
	            return ("Space Bar"); 
            
	            case 33: 
	            return ("Page Up"); 
            
	            case 34: 
	            return ("Page Down");
            
	            case 35: 
	            return ("End");
            
	            case 36: 
	            return ("Home");
            
	            case 37: 
	            return ("Left"); 
            
	            case 38: 
	            return ("Up"); 
            
	            case 39: 
	            return ("Right"); 
            
	            case 40: 
	            return ("Down"); 
            
	            case 45: 
	            return ("Insert");
            
	            case 46: 
	            return ("Delete");
            
	            case 91:
	            return ("Windows Key"); 
            
	            case 96: 
	            return ("Numpad 0");  
            
	            case 97: 
	            return ("Numpad 1");  
            
	            case 98: 
	            return ("Numpad 2"); 
            
	            case 99: 
	            return ("Numpad 3");
            
	            case 100: 
	            return ("Numpad 4"); 
            
	            case 101: 
	            return ("Numpad 5"); 
            
	            case 102: 
	            return ("Numpad 6");
            
	            case 103: 
	            return ("Numpad 7"); 
            
	            case 104: 
	            return ("Numpad 8");
            
	            case 105: 
	            return ("Numpad 9"); 
            
	            case 106: 
	            return ("Numpad *");
            
	            case 107: 
	            return ("Numpad +"); 
            
	            case 109: 
	            return ("Numpad -");
            
	            case 110: 
	            return ("Numpad '.'"); 
            
	            case 111: 
	            return ("Numpad /");
            
	            case 144: 
	            return ("Num Lock"); 
            
	            case 145: 
	            return ("Scroll Lock"); 
            
	            case 160: 
	            return ("Left Shift"); 
            
	            case 161: 
	            return ("Right Shift"); 
            
	            case 162: 
	            return ("Left Control"); 
            
	            case 163: 
	            return ("Right Control");  
            
	            case 164: 
	            return ("Left Alt"); 
            
	            case 165: 
	            return ("Right Alt");  
            
	            case 186: 
	            return ("; or :");  
            
	            case 187: 
	            return ("+ or =");  
            
	            case 188: 
	            return (", or <"); 
            
	            case 189: 
	            return ("_ or -"); 
            
	            case 190: 
	            return ("'.' or >"); 
            
	            case 191: 
	            return ("? or /");  
            
	            case 192: 
	            return ("~ or ´");  
            
	            case 219: 
	            return ("[ or {"); 
            
	            case 220: 
	            return ("\ or |"); 
            
	            case 221: 
	            return ("] or }");  
                      
	            case 222: 
	            return ("'");
	        }
	    break;
	    case 1:
	        /*START OF español*/
	        switch(argument0){
	            case 0:
	            return ("..?");
            
	            case 8: 
	            return ("Tecla de Retroceso");
            
	            case 9: 
	            return ("Tabulador");
            
	            case 13: 
	            return ("Enter");
            
	            case 19: 
	            return ("Pausa/Descanso");
            
	            case 20: 
	            return ("Bloq Mayús");
            
	            case 27: 
	            return ("ESC");
            
	            case 32: 
	            return ("Espacio"); 
            
	            case 33: 
	            return ("Retroceso de Página"); 
            
	            case 34: 
	            return ("Advance de Página");
            
	            case 35: 
	            return ("Fín");
            
	            case 36: 
	            return ("Home");
            
	            case 37: 
	            return ("Izquierda"); 
            
	            case 38: 
	            return ("Arriba"); 
            
	            case 39: 
	            return ("Derecha"); 
            
	            case 40: 
	            return ("Abajo"); 
            
	            case 45: 
	            return ("Insertar");
            
	            case 46: 
	            return ("Borrar");
            
	            case 91: 
	            return ("Tecla de Windows"); 
            
	            case 96: 
	            return ("Numérico 0");  
            
	            case 97: 
	            return ("Numérico 1");  
            
	            case 98: 
	            return ("Numérico 2"); 
            
	            case 99: 
	            return ("Numérico 3");
            
	            case 100: 
	            return ("Numérico 4"); 
            
	            case 101: 
	            return ("Numérico 5"); 
            
	            case 102: 
	            return ("Numérico 6");
            
	            case 103: 
	            return ("Numérico 7"); 
            
	            case 104: 
	            return ("Numérico 8");
            
	            case 105: 
	            return ("Numérico 9"); 
            
	            case 106: 
	            return ("Numérico *");
            
	            case 107: 
	            return ("Numérico +"); 
            
	            case 109: 
	            return ("Numérico -");
            
	            case 110: 
	            return ("Numérico '.'"); 
            
	            case 111: 
	            return ("Numérico /");
            
	            case 144:
	            return ("Bloq Num"); 
            
	            case 145: 
	            return ("Bloq Depl"); 
            
	            case 160: 
	            return ("Mayús Izquierdo"); 
            
	            case 161: 
	            return ("Mayús Derecho"); 
            
	            case 162: 
	            return ("Control Izquierdo"); 
            
	            case 163: 
	            return ("Control Derecho");  
            
	            case 164: 
	            return ("Alt Izquierda"); 
            
	            case 165: 
	            return ("Alt Derecha");  
            
	            case 186: 
	            return ("; o :");  
            
	            case 187: 
	            return ("+ o =");  
            
	            case 188: 
	            return (", o <"); 
            
	            case 189: 
	            return ("_ o -"); 
            
	            case 190: 
	            return ("'.' o >"); 
            
	            case 191: 
	            return ("? o /");  
            
	            case 192: 
	            return ("~ o ´");  
            
	            case 219: 
	            return ("[ o {"); 
            
	            case 220: 
	            return ("\ o |"); 
            
	            case 221: 
	            return ("] o }");  
                      
	            case 222: 
	            return ("'");
	        }
	    break;
	    case 2:
	        /*START OF deutsch*/
	        switch(argument0){
	            case 0:
	            return ("..?");
            
	            case 8: 
	            return ("Rücktaste");
            
	            case 9: 
	            return ("Tab-Taste");
            
	            case 13: 
	            return ("Enter"); 
            
	            case 19: 
	            return ("Pause/Unterbrechen"); 
            
	            case 20: 
	            return ("Feststelltaste"); 
            
	            case 27: 
	            return ("Esc");
            
	            case 32: 
	            return ("Leertaste"); 
            
	            case 33: 
	            return ("Bild Hoch"); 
            
	            case 34: 
	            return ("Bild Unten");
            
	            case 35: 
	            return ("Ende");
            
	            case 36: 
	            return ("Pos1");
            
	            case 37: 
	            return ("Links"); 
            
	            case 38: 
	            return ("Oben"); 
            
	            case 39: 
	            return ("Rechts"); 
            
	            case 40: 
	            return ("Unten"); 
            
	            case 45: 
	            return ("Einfügen");
            
	            case 46: 
	            return ("Entfernen");
            
	            case 91: 
	            return ("Windows-Taste"); 
            
	            case 96: 
	            return ("NumPad 0");  
            
	            case 97: 
	            return ("NumPad 1");  
            
	            case 98: 
	            return ("NumPad 2"); 
            
	            case 99: 
	            return ("NumPad 3");
            
	            case 100: 
	            return ("NumPad 4"); 
            
	            case 101: 
	            return ("NumPad 5"); 
            
	            case 102: 
	            return ("NumPad 6");
            
	            case 103: 
	            return ("NumPad 7"); 
            
	            case 104: 
	            return ("NumPad 8");
            
	            case 105: 
	            return ("NumPad 9"); 
            
	            case 106: 
	            return ("NumPad *");
            
	            case 107: 
	            return ("NumPad +"); 
            
	            case 109: 
	            return ("NumPad -");
            
	            case 110: 
	            return ("NumPad '.'"); 
            
	            case 111: 
	            return ("NumPad /");
            
	            case 144: 
	            return ("Num Lock"); 
            
	            case 145: 
	            return ("Bildlaufsperre"); 
            
	            case 160: 
	            return ("linke Umschalttaste"); 
            
	            case 161: 
	            return ("rechte Umschalttaste"); 
            
	            case 162: 
	            return ("linken Strg"); 
            
	            case 163: 
	            return ("rechten Strg");  
            
	            case 164: 
	            return ("linken Alt-Taste"); 
            
	            case 165: 
	            return ("rechten Alt-Taste");  
            
	            case 186: 
	            return ("; oder :");  
            
	            case 187: 
	            return ("+ oder =");  
            
	            case 188: 
	            return (", oder <"); 
            
	            case 189: 
	            return ("_ oder -"); 
            
	            case 190: 
	            return ("'.' oder >"); 
            
	            case 191: 
	            return ("? oder /");  
            
	            case 192: 
	            return ("~ oder ´");  
            
	            case 219: 
	            return ("[ oder {"); 
            
	            case 220: 
	            return ("\ oder |"); 
            
	            case 221: 
	            return ("] oder }");  
                      
	            case 222: 
	            return ("'"); 
            
	            case 225: 
	            return ("ß");
	        }
	    break;
	}
	//reverse ord (..?)
	switch(argument0){
	    case 48: 
	    return ("0");
    
	    case 49: 
	    return ("1");
    
	    case 50: 
	    return ("2");
    
	    case 51: 
	    return ("3"); 
    
	    case 52: 
	    return ("4"); 
    
	    case 53: 
	    return ("5"); 
    
	    case 54: 
	    return ("6");  
    
	    case 55: 
	    return ("7");  
    
	    case 56: 
	    return ("8");  
    
	    case 57: 
	    return ("9");  
    
	    case 65: 
	    return ("A");  
    
	    case 66: 
	    return ("B");  
    
	    case 67: 
	    return ("C"); 
    
	    case 68: 
	    return ("D"); 
    
	    case 69: 
	    return ("E");  
    
	    case 70: 
	    return ("F");  
    
	    case 71: 
	    return ("G"); 
    
	    case 72: 
	    return ("H"); 
    
	    case 73: 
	    return ("I");  
    
	    case 74: 
	    return ("J");  
    
	    case 75: 
	    return ("K");  
    
	    case 76: 
	    return ("L"); 
    
	    case 77: 
	    return ("M"); 
    
	    case 78: 
	    return ("N");  
    
	    case 79: 
	    return ("O"); 
    
	    case 80: 
	    return ("P"); 
    
	    case 81: 
	    return ("Q"); 
    
	    case 82: 
	    return ("R"); 
    
	    case 83: 
	    return ("S"); 
    
	    case 84: 
	    return ("T"); 
    
	    case 85: 
	    return ("U"); 
    
	    case 86: 
	    return ("V");  
    
	    case 87: 
	    return ("W"); 
    
	    case 88: 
	    return ("X");  
    
	    case 89: 
	    return ("Y"); 
    
	    case 90: 
	    return ("Z");  
    
	    case 112: 
	    return ("F1"); 
    
	    case 113: 
	    return ("F2");  
    
	    case 114: 
	    return ("F3"); 
    
	    case 115: 
	    return ("F4"); 
    
	    case 116: 
	    return ("F5"); 
    
	    case 117: 
	    return ("F6");  
    
	    case 118: 
	    return ("F7"); 
    
	    case 119: 
	    return ("F8"); 
    
	    case 120: 
	    return ("F9"); 
    
	    case 121: 
	    return ("F10"); 
    
	    case 122: 
	    return ("F11"); 
    
	    case 123: 
	    return ("F12");
    
	    default:
	    return ("..?");
	}
}

#endregion

#region scr_langordpad

///@function scr_langordpad(argument0)
//returns string based on gamepad button.

function scr_langordpad(argument0){
	switch(global.Localization){
	    case 0:
	    /* START OF ENGLISH */
	        switch(argument0){
	            case 0: return ("No Button");
	            case gp_face1: return ("¥");
	            case gp_face2: return ("¤");
	            case gp_face3: return ("£");
	            case gp_face4: return ("¢");
	            case gp_shoulderl: return ("LB");
	            case gp_shoulderlb: return ("LT");
	            case gp_shoulderr: return ("RB");
	            case gp_shoulderrb: return ("RT");
	            case gp_select: return ("Select");
	            case gp_start: return ("Start");
	            case gp_stickl: return ("L3");
	            case gp_stickr: return ("R3");
	            case gp_padu: return ("Up");
	            case gp_padd: return ("Down");
	            case gp_padl: return ("Left");
	            case gp_padr: return ("Right");
            
	            default:
	            return ("Unknown");
	        }
	    break;
	    case 1:
	    /* START OF SPANISH */
	        switch(argument0){
	            case 0: return ("Sín Botón");
	            case gp_face1: return ("¥");
	            case gp_face2: return ("¤");
	            case gp_face3: return ("£");
	            case gp_face4: return ("¢");
	            case gp_shoulderl: return ("LB");
	            case gp_shoulderlb: return ("LT");
	            case gp_shoulderr: return ("LB");
	            case gp_shoulderrb: return ("LT");
	            case gp_select: return ("Select");
	            case gp_start: return ("Start");
	            case gp_stickl: return ("L3");
	            case gp_stickr: return ("R3");
	            case gp_padu: return ("Arriba");
	            case gp_padd: return ("Abajo");
	            case gp_padl: return ("Izquierda");
	            case gp_padr: return ("Derecha");
            
	            default:
	            return ("???");
	        }
	    break;
	    case 2:
	    /* START OF GERMAN*/
	        switch(argument0){
	            case 0: return ("Kein Knopf");
	            case gp_face1: return ("¥");
	            case gp_face2: return ("¤");
	            case gp_face3: return ("£");
	            case gp_face4: return ("¢");
	            case gp_shoulderl: return ("LB");
	            case gp_shoulderlb: return ("LT");
	            case gp_shoulderr: return ("LB");
	            case gp_shoulderrb: return ("RT");
	            case gp_select: return ("Select");
	            case gp_start: return ("Start");
	            case gp_stickl: return ("L3");
	            case gp_stickr: return ("R3");
	            case gp_padu: return ("Oben");
	            case gp_padd: return ("Unten");
	            case gp_padl: return ("Links");
	            case gp_padr: return ("Rechts");
            
	            default:
	            return ("Unbekannt");
	        }
	    break;
	}
}

#endregion

#region getInput (...why is this one camelCase?)

///@function getInput(input)
//streamlined way of showing what the current assigned key/button is as a string, useful for keybinding screen

function getInput(argument0){
	switch(global.GP){
	    case 0:
	        switch(argument0){
	        case ("left"):
	        return scr_langordkey(global.Kin[0]);
        
	        case ("right"):
	        return scr_langordkey(global.Kin[1]);
        
	        case ("up"):
	        return scr_langordkey(global.Kin[2]);
        
	        case ("down"):
	        return scr_langordkey(global.Kin[3]);
        
	        case ("action"):
	        return scr_langordkey(global.Kin[4]);
        
	        case ("sub-action"):
	        return scr_langordkey(global.Kin[5]);
        
	        case ("sub-action2"):
	        return scr_langordkey(global.Kin[6]);
        
	        case ("pause"):
	        return scr_langordkey(global.Kin[7]);
        
	        default:
	        show_message("typo'd or string missing!!!")
	        exit;
	        break;
	        }
	    break;
	    case 1:
	        switch(argument0){
	        case ("left"):
	        return scr_langordpad(global.Gin[0]);
        
	        case ("right"):
	        return scr_langordpad(global.Gin[1]);
        
	        case ("up"):
	        return scr_langordpad(global.Gin[2]);
        
	        case ("down"):
	        return scr_langordpad(global.Gin[3]);
        
	        case ("action"):
	        return scr_langordpad(global.Gin[4]);
        
	        case ("sub-action"):
	        return scr_langordpad(global.Gin[5]);
        
	        case ("sub-action2"):
	        return scr_langordpad(global.Gin[6]);
        
	        case ("pause"):
	        return scr_langordpad(global.Gin[7]);
        
	        default:
	        show_message("typo'd or string missing!!!")
	        exit;
	        break;
	        }
	    break;
	}
}

#endregion

#region scr_ordkey

///@function scr_ordkey(String key)
///originally ord_ext(String key)
//returns the corresponding GML ascii code fcase of the given key

function scr_ordkey(argument0){
	switch (string_lower(argument0)) {

	case ("backspace") : 
	return 8;

	case ("tab") :
	return 9;

	case ("enter") :        
	return 13; 

	case ("pause") :        
	return 19; 

	case ("caps lock") :    
	return 20; 

	case ("escape") :       
	return 27; 

	case ("space") :        
	return 32; 

	case ("page up") :      
	return 33; 

	case ("page down") :    
	return 34; 

	case ("end") :          
	return 35; 

	case ("home") :         
	return 36; 

	case ("left") :         
	return 37; 

	case ("up") :           
	return 38; 

	case ("right") :        
	return 39; 

	case ("down") :         
	return 40; 

	case ("insert") :       
	return 45; 

	case ("delete") :       
	return 46; 

	case ("0") : case (")") :            
	return 48; 

	case ("1") : case ("!") :            
	return 49; 

	case ("2") : case ("@") :            
	return 50; 

	case ("3") : case ("#") :            
	return 51; 

	case ("4") : case ("$") :            
	return 52; 

	case ("5") : case ("%") :            
	return 53; 

	case ("6") : case ("^") :            
	return 54; 

	case ("7") : case ("&") :            
	return 55; 

	case ("8") : case ("*") :            
	return 56; 

	case ("9") : case ("(") :            
	return 57; 

	case ("a") :            
	return 65; 

	case ("b") :            
	return 66; 

	case ("c") :            
	return 67; 

	case ("d") :            
	return 68; 

	case ("e") :            
	return 69; 

	case ("f") :            
	return 70; 

	case ("g") :            
	return 71; 

	case ("h") :            
	return 72; 

	case ("i") :            
	return 73; 

	case ("j") :            
	return 74; 

	case ("k") :            
	return 75; 

	case ("l") :            
	return 76; 

	case ("m") :            
	return 77; 

	case ("n") :            
	return 78; 

	case ("o") :            
	return 79; 

	case ("p") :            
	return 80; 

	case ("q") :            
	return 81; 

	case ("r") :            
	return 82; 

	case ("s") :            
	return 83; 

	case ("t") :            
	return 84; 

	case ("u") :            
	return 85; 

	case ("v") :            
	return 86; 

	case ("w") :            
	return 87; 

	case ("x") :            
	return 88; 

	case ("y") :            
	return 89; 

	case ("z") :            
	return 90; 

	case ("windows") :      
	return 91; 

	case ("numpad 0") :     
	return 96; 

	case ("numpad 1") :     
	return 97; 

	case ("numpad 2") :     
	return 98; 

	case ("numpad 3") :     
	return 99; 

	case ("numpad 4") :     
	return 100; 

	case ("numpad 5") :     
	return 101; 

	case ("numpad 6") :     
	return 102; 

	case ("numpad 7") :     
	return 103; 

	case ("numpad 8") :     
	return 104; 

	case ("numpad 9") :     
	return 105; 

	case ("numpad *") :     
	return 106; 

	case ("numpad +") :     
	return 107; 

	case ("numpad -") :     
	return 109; 

	case ("numpad .") :     
	return 110; 

	case ("numpad /") :     
	return 111; 

	case ("f1") :           
	return 112; 

	case ("f2") :           
	return 113; 

	case ("f3") :           
	return 114; 

	case ("f4") :           
	return 115; 

	case ("f5") :           
	return 116; 

	case ("f6") :           
	return 117; 

	case ("f7") :           
	return 118; 

	case ("f8") :           
	return 119; 

	case ("f9") :           
	return 120; 

	case ("f10") :          
	return 121; 

	case ("f11") :          
	return 122; 

	case ("f12") :          
	return 123; 

	case ("num lock") :     
	return 144; 

	case ("scroll lock") :  
	return 145; 

	case ("lshift") :       
	return 160; 

	case ("rshift") :       
	return 161; 

	case ("lcontrol") :     
	return 162; 

	case ("rcontrol") :     
	return 163; 

	case ("lalt") :         
	return 164; 

	case ("ralt") :         
	return 165; 

	case (";") : case (":") :           
	return 186; 

	case ("=") : case ("+") :           
	return 187; 

	case (",") : case ("<") :           
	return 188; 

	case ("_") : case ("-") :           
	return 189; 

	case (".") : case (">") :           
	return 190; 

	case ("?") : case ("/") :           
	return 191; 

	case ("~") : case ("`") :           
	return 192; 

	case ("[") : case ("{") :           
	return 219; 

	case ("|"):           
	return 220; 

	case ("]"): case ("}"):           
	return 221; 

	case ("'"): case ("\""): //WHY IS GAME MAKER LIKE THIS        
	return 222; 

	default:
	show_debug_message("you mseed uppeie!!!! scr_ordkey");
	break;

	}
}

#endregion

#region scr_ordput

///scr_ordput(input)
//returns keybind based on specific string

function scr_ordput(argument0){
	switch(global.GP){
	    case 0:
	        switch(argument0){
	        case ("left"):
	        return (global.Kin[0]);
        
	        case ("right"):
	        return (global.Kin[1]);
        
	        case ("up"):
	        return (global.Kin[2]);
        
	        case ("down"):
	        return (global.Kin[3]);
        
	        case ("action"):
	        return (global.Kin[4]);
        
	        case ("sub-action"):
	        return (global.Kin[5]);
        
	        case ("sub-action2"):
	        return (global.Kin[6]);
        
	        case ("pause"):
	        return (global.Kin[7]);
        
	        default:
	        show_message("typo'd or string missing!!!")
	        exit;
	        break;
	        }
	    break;
	    case 1:
	        switch(argument0){
	        case ("left"):
	        return (global.Gin[0]);
        
	        case ("right"):
	        return (global.Gin[1]);
        
	        case ("up"):
	        return (global.Gin[2]);
        
	        case ("down"):
	        return (global.Gin[3]);
        
	        case ("action"):
	        return (global.Gin[4]);
        
	        case ("sub-action"):
	        return (global.Gin[5]);
        
	        case ("sub-action2"):
	        return (global.Gin[6]);
        
	        case ("pause"):
	        return (global.Gin[7]);
        
	        default:
	        show_message("typo'd or string missing!!!")
	        exit;
	        break;
	        }
	    break;
	}
}

#endregion

#region scr_checkput

///@function scr_checkput(string)

/*
checks a string and returns the corresponding INPUT number (Kini/Gini)
if it can't find a match, it returns -1;
useful for finding duplicate keybinds
*/

function scr_checkput(argument0){
	var Kini;
	var Kinrray = array_length(global.Kin);

	var Gini;
	var Ginrray = array_length(global.Gin);

	switch(global.GP){
	    case 0: //key//
	        for (Kini = 0; Kini < Kinrray; Kini += 1){
	            if global.Kin[Kini] != argument0{
	                return -1;
	            }
	            if global.Kin[Kini] == argument0{
	                return Kini;
	                exit;
	            }
	        }
	        return -1;
	        exit;
	    break;
	    case 1: //gp//
	        for (Gini = 0; Gini < Ginrray; Gini += 1){
	            if global.Gin[Gini] != argument0{
	                return -1;
	            }
	            if global.Gin[Gini] == argument0{
	                return Gini;
	                exit;
	            }
	        }
	        return -1;
	        exit;
	    break;
	}
}

#endregion

#region incorrectSCR

///@function incorrectSCR(inputCheck)

/* checks whether the input given is the same as something else in the array, in a really unoptimized, but functional way */

//false = push has been succesful
//true = controls havent been set up fully/correctly

function incorrectSCR(argument0){
	if (argument0 != -1){
	    switch(global.GP){
	        case 0: //key//
	            if (global.Kin[0] == argument0) {return true;   } else
	            if (global.Kin[1] == argument0) {return true;   } else
	            if (global.Kin[2] == argument0) {return true;   } else
	            if (global.Kin[3] == argument0) {return true;   } else
	            if (global.Kin[4] == argument0) {return true;   } else
	            if (global.Kin[5] == argument0) {return true;   } else
	            if (global.Kin[6] == argument0) {return true;   } else
	            if (global.Kin[7] == argument0) {return true;   } else
	                                            {return false;  }
	        break;
	        case 1: //gp//
	            if (global.Gin[0] == argument0) {return true;   exit} else
	            if (global.Gin[1] == argument0) {return true;   exit} else
	            if (global.Gin[2] == argument0) {return true;   exit} else
	            if (global.Gin[3] == argument0) {return true;   exit} else
	            if (global.Gin[4] == argument0) {return true;   exit} else
	            if (global.Gin[5] == argument0) {return true;   exit} else
	            if (global.Gin[6] == argument0) {return true;   exit} else
	            if (global.Gin[7] == argument0) {return true;   exit} else
	                                            {return false;  exit}
	        break;
	    }
	} else {
	    return false;
	    exit;
	}
}

#endregion

#region scr

///scr_ordput(input)
//returns keybind based on specific string

#endregion