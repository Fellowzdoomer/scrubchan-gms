if picFrame == 0
{
    strFrame = slideTimer;
    textX = room_width / 2;
    textY = room_height/ 2;
    if slideTimer < 25
    {
    if alphaVal < 1
    {
        alphaVal += 0.1;
    }
    }
    
    if slideTimer >= 240
    {
        strFrame = alphaVal;
        if alphaVal > 0
        {
        alphaVal -= 0.1;
        }
    }
    
    if slideTimer >= 255
    {
        picFrame = 1
        slideTimer = 0; 
    }
}
