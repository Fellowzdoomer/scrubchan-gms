/// Right side - items menu

if (currentSide == "right") && currentArea == "utility"
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
        audio_play_sound(sndMenuToggle,9,false);
        global.weapon = global.subMenuChoice - 1;
        global.inMenu = false;
    }
    
    if kGoBack
    {
        audio_play_sound(sndMenuToggle,9,false);
        {
            global.subMenuChoice = 1;
            drawArrow = false;
            currentSide = "left";
        }
    }
}

arrowX = 104;
switch global.subMenuChoice
{
    case 1:
        arrowY = 28+2;
    break;
    
    case 2:
        arrowY = 48+2;
    break;
    
    case 3:
        arrowY = 68+2;
    break;
    
    case 4:
        arrowY = 88+2;
    break;
    
    case 5:
        arrowY = 108+2;
    break;
    
    case 6:
        arrowY = 128+2;
    break;
    
    case 7:
        arrowY = 148+2;
    break;
    
    case 8:
        arrowY = 168+2;
    break;
    
    case 9:
        arrowY = 188+2;
    break;
}
