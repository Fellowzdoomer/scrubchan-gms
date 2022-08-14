textAlign = fa_left;
alphaVal =1;

if picFrame == 2
{
    if slideTimer == 1 audio_stop_all();
    if slideTimer == 2 audio_play_sound(bgmSuddenSabotauge, 10, true);
    strFrame = "BUT THEN... DISASTER STRIKES!!";
    textX = room_width /2;
    textY = room_height/ 2;
    if slideTimer < 25
    {
        if alphaVal < 1
        {
            alphaVal += 0.1;
        }
    }
    
    if slideTimer >= 100 and slideTimer < 144
    {
        if alphaVal > 0
        {
        alphaVal -= 0.1;
        }
    }
    

}
