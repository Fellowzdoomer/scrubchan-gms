textAlign = fa_left

if picFrame == 1
{
    if slideTimer == 2
    {
    //audio_play_sound(bgmCalmCity, 10, true);
    }

    strFrame = "20XX";
    textX = room_width /2;
    textY = room_height/ 2;
    if slideTimer < 25
    {
        if alphaVal < 1
        {
            alphaVal += 0.1;
        }
    }
    
    if slideTimer >= 80 and slideTimer < 104
    {
        if alphaVal > 0
        {
        alphaVal -= 0.1;
        }
    }
    
    if slideTimer == 115 { alphaVal = 0; }
    if slideTimer >= 125
    {
        strFrame = "HELLO? CAN YOU HEAR ME?";
        textX = room_width / 2;
        textY = room_height/ 2;
        if alphaVal < 1
        {
        alphaVal += 0.1;
        }
        
    }
    if slideTimer >= 325
    {
        strFrame = "LOOKS LIKE YOU'RE ONLINE!";
    }
    if slideTimer >= 525
    {
        textY = (room_height/ 2) - 16;
        strFrame = "ALRIGHT, LET'S GET##INTRODUCTIONS OUT OF##THE WAY."
    }
    if slideTimer >= 725
    {
        strFrame = "MY NAME'S ATHEL.##I CREATED YOU!"
    }
    if slideTimer >= 925
    {
        strFrame = "YOU'RE SCRUBCHAN. I MADE##YOU BASED OFF OF BIJUU MIKE'S##DESIGNS!"
    }
    if slideTimer >= 1125
    {
        textY = (room_height/ 2) - 24;
        strFrame = "I GOTTA MAKE SURE YOU##CAN FUNCTION PROPERLY BEFORE##THE FESTIVAL. IT'S ONLY##TWO DAYS FROM NOW YOU KNOW!"
    }
    if slideTimer >= 1325
    {
        textY = (room_height/ 2) - 24;
        strFrame = "I'M GOING TO CONNECT YOU TO THE##SIMULATION NOW. HOLD ON TIGHTLY!"
    }
}
