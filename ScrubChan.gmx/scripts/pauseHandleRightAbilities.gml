/// Right side - abilities menu

if (currentSide == "right") && currentArea == "abilities"
{
    drawBox = true;
    if kDown 
    {
        {
            if boxRow == 4 boxRow = 1;
            else boxRow += 1;
        }
        
        show_debug_message(string(boxRow))

    }
    if kUp
    { 
        {
            if boxRow == 1 boxRow = 4;
            else boxRow -= 1;
        }
        
        show_debug_message(string(boxRow))

    }
    if kLeft && currentSide == "right"
    { 
        {
            if boxColumn == 1 boxColumn = 4;
            else boxColumn -= 1;
        }
        
        show_debug_message(string(boxColumn))

    }
    if kRight && currentSide == "right"
    { 
        {
            if boxColumn == 4 boxColumn = 1;
            else boxColumn += 1;
        }
        
        show_debug_message(string(boxColumn))

    }
    // kConfirm
    if kConfirm
    {
        audio_play_sound(sndMenuToggle,9,false);
    }
    
    if kGoBack
    {
        audio_play_sound(sndMenuToggle,9,false);
        {
            drawBox = false;
            currentSide = "left";
        }
    }
}

// ability names and descriptions

if (boxRow == 1)
{
    switch boxColumn
    {
        case 1:
            abilityName = "JUMP";
            abilityDesc = "ALLOWS YOU TO JUMP"
            
            if kConfirm player.canJump = !player.canJump;
        break;
        
        case 2:
            abilityName = "SLIDE";
            abilityDesc = "ALLOWS YOU TO SLIDE"
            if kConfirm player.canSlide = !player.canSlide;
        break;
        
        case 3:
            abilityName = "SHOOT";
            abilityDesc = "ALLOWS YOU TO SHOOT"
            if kConfirm player.canShoot = !player.canShoot;
        break;
        
        case 4:
            abilityName = "WALK";
            abilityDesc = "ALLOWS YOU TO WALK"
            if kConfirm player.canWalk = !player.canWalk;
        break;
    }
}

else if (boxRow == 2)
{
    switch boxColumn
    {
        case 1:
            abilityName = "REBIRTH";
            abilityDesc = "PRESS SPACE FOR MORE INFO"
            if kConfirm player.canRebirth = !player.canRebirth;
        break;
        
        case 2:
            abilityName = "AIRSLIDE";
            abilityDesc = "ALLOWS YOU TO SLIDE MIDAIR"
            if kConfirm player.ab_airslide = !player.ab_airslide;
        break;
        
        case 3:
            abilityName = "HP TO WEP";
            abilityDesc = "CONVERTS HP TO WEP##PRESS SPACE FOR MORE INFO"
            if kConfirm player.ab_hptowep = !player.ab_hptowep;
        break;
        
        case 4:
            abilityName = "WEP TO HP";
            abilityDesc = "CONVERTS WEP TO HP##PRESS SPACE FOR MORE INFO"
            if kConfirm player.ab_weptohp = !player.ab_weptohp;
        break;
    }
}

else if (boxRow == 3)
{
    switch boxColumn
    {
        case 1:
            abilityName = "ENERGY CONVERTER";
            abilityDesc = "REFILLS LOWEST WEAPON##PRESS SPACE FOR MORE INFO"
            if kConfirm player.ab_energyconverter = !player.ab_energyconverter;
        break;
        
        case 2:
            abilityName = "SPIKE GUARD";
            abilityDesc = "ONE TIME PROTECTION##AGAINST SPIKES"
            if kConfirm player.ab_spikeguard = !player.ab_spikeguard;
        break;
        
        case 3:
            abilityName = "PIT GUARD";
            abilityDesc = "ONE TIME PROTECTION##AGAINST PITS"
            if kConfirm player.ab_pitguard = !player.ab_pitguard;
        break;
        
        case 4:
            abilityName = "HALF DAMAGE";
            abilityDesc = "HALVES ALL DAMAGE TAKEN"
            if kConfirm player.ab_halfdamage = !player.ab_halfdamage;
        break;
    }
}

else if (boxRow == 4)
{
    switch boxColumn
    {
        case 1:
            abilityName = "REACTION COMMAND INPUT";
            abilityDesc = "PRESS SPACE FOR MORE INFO"
            if kConfirm player.ab_rci = !player.ab_rci;
        break;
        
        case 2:
            abilityName = "EXTEND SLIDE";
            abilityDesc = "STACKABLE##PRESS SPACE##FOR MORE INFO"
            if kConfirm player.stk_extendslide = !player.stk_extendslide;
        break;
        
        case 3:
            abilityName = "BOOST SLIDE";
            abilityDesc = "STACKABLE##PRESS SPACE##FOR MORE INFO"
            if kConfirm player.stk_boostslide = !player.stk_boostslide;
        break;
        
        case 4:
            abilityName = "HALF DAMAGE";
            abilityDesc = "HALVES ALL DAMAGE TAKEN"
        break;
    }
}
