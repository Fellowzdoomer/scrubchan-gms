/// Right side - settingsMenu

var displayWidth = display_get_width();
var displayHeight = display_get_height();
var screenMode = global.screenMode;

if (currentSide == "right") && currentArea == "settings"
{
    drawArrow = true;
    
    if kUp
    {
        if global.subMenuChoice == 1 global.subMenuChoice = 9;
        else global.subMenuChoice -= 1;
    }
    
    if kDown
    {
        if global.subMenuChoice == 9 global.subMenuChoice = 1;
        else global.subMenuChoice += 1;
    }
    
    if kConfirm
    {
        switch global.subMenuChoice
        {
            case 1:
                if screenMode < 4 screenMode += 1;
                else screenMode = 1;
            break;
            
            case 2:
                if (global.controlSchemeDisplay == "xbox") global.controlSchemeDisplay = "playstation";
                else global.controlSchemeDisplay = "xbox";
            break;
            
            case 4:
                audio_stop_all();
                room_goto(rmStart);
        }
        audio_play_sound(sndMenuToggle,9,false);
    }
    
    if kGoBack
    {
        audio_play_sound(sndMenuToggle,9,false);
        {
            ini_open("settings.ini")
            ini_write_real("Display", "screenres", screenMode);
            ini_close();
            global.subMenuChoice = 1;
            drawArrow = false;
            currentSide = "left";
        }
    }
}

arrowX = 104;
if (view_wport[0] != surface_get_width(application_surface)) ||(view_hport[0] != surface_get_height(application_surface))
{
    surface_resize(application_surface,view_wport[0], view_hport[0]);
}
switch global.screenMode
{
    case 1: 
        if window_get_fullscreen() window_set_fullscreen(false); 
        view_wport[0] = 256;
        view_hport[0] = 224;
        window_set_size(view_wport[0], view_hport[0]);
        window_center();
        screenres = "1X";  
    break;
    case 2: 
        view_wport[0] = 512;
        view_hport[0] = 448;
        window_set_size(view_wport[0], view_hport[0]);
        window_center();
        screenres = "2X"; 
    break;
    case 3: 
        view_wport[0] = 768;
        view_hport[0] = 672;
        window_set_size(view_wport[0], view_hport[0]);
        window_center();
        screenres = "3X"; 
    break;
    case 4: 
        window_set_fullscreen(true); 
        screenres = "FULLSCREEN"; 
    break;
}

global.screenMode = screenMode; //hacky

switch global.subMenuChoice
{
    case 1:
        arrowY = 36;
    break;
    
    case 2:
        arrowY = 68;
    break;
    
    case 3:
        arrowY = 96;
    break;
    
    case 4:
        arrowY = 126;
    break;
    
    case 5:
        arrowY = 108;
    break;
    
    case 6:
        arrowY = 128;
    break;
    
    case 7:
        arrowY = 148;
    break;
    
    case 8:
        arrowY = 168;
    break;
    
    case 9:
        arrowY = 188;
    break;
}
