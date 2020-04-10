textAlign = fa_left

if picFrame == 1
{
    if slideTimer == 2
    {
    audio_play_sound(bgmCalmCity, 10, true);
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
        strFrame = "IT WAS A FESTIVE DAY FOR THE##PEOPLE OF SCRUBVILLE.";
        textX = room_width / 2;
        textY = room_height/ 2 + 80;
        if alphaVal < 1
        {
        alphaVal += 0.1;
        }
        
    }
    
    if slideTimer >= 305
    {
    strFrame = "THE COMMUNITY REJOICED AS##THE TOWN HAD REACHED ONE##MILLION CITIZENS";
    textY = room_height/ 2 + 64;
    }
    
    if slideTimer >= 505
    {
    strFrame = "TO CELEBRATE, A SPECIAL##CEREMONY WAS PLANNED##FOR THIS SPECIAL MOMENT...";
    }
    
    if slideTimer >= 705
    {
    strFrame = "STRING CHEESE";
    }
}
