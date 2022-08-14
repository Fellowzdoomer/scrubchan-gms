/// Left side
if (currentSide == "left")
{
    if kRight && currentArea != "main" currentSide = "right";
    if kDown 
    {
        if currentSide == "left"
        {
            if currentArea == "main"
            {
                if global.menuChoice == 4 global.menuChoice = 1
                else global.menuChoice += 1;
            }
            else
            {
                if global.menuChoice == 9 global.menuChoice = 1
                else global.menuChoice += 1;
            }
        }
        
        show_debug_message(string(global.menuChoice))
    }
    if kUp
    {
        if currentSide == "left"
        {
            if currentArea == "main"
            {
                if global.menuChoice == 1 global.menuChoice = 4
                else global.menuChoice -= 1;
            }
            else
            {
                if global.menuChoice == 1 global.menuChoice = 9
                else global.menuChoice -= 1;
            }
        }
        show_debug_message(string(global.menuChoice))
    }
    

    
    // kConfirm
    if kConfirm
    {
        audio_play_sound(sndMenuToggle,9,false);
        if currentSide == "left"
        {
            if currentArea == "main"
            {
                if global.menuChoice == 1
                {
                    currentArea = "weapons"
                }
                else if global.menuChoice == 2
                {
                    currentArea = "utility"
                }
                else if global.menuChoice == 3
                {
                    currentArea = "settings"
                }
                else if global.menuChoice == 4
                {
                    currentArea = "abilities"
                }
            }
            else
            {
                if global.menuChoice == 1 or global.menuChoice == 2 or global.menuChoice == 3 or global.menuChoice == 4
                {
                    currentArea = "main"
                }
            }
        }
    }
}
