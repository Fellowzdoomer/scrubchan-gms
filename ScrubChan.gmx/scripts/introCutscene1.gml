textAlign = fa_left

if picFrame == 1
{
    if slideTimer == 2 audio_play_sound(bgmCalmCity, 10, true);

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
    
    if slideTimer >= 505 strFrame = "TO CELEBRATE, A ##CEREMONY WAS PLANNED##FOR THIS SPECIAL MOMENT...";
    if slideTimer >= 705 strFrame = "BIJUU MIKE:##HELLO EVERYBODY! I AM##SO HAPPY YOU GUYS ARE HERE!";
    if slideTimer >= 905 strFrame = "BIJUU MIKE:##I NEVER WOULD HAVE THOUGHT##OUR HUMBLE LITTLE COMMUNITY";
    if slideTimer >= 1105 strFrame = "BIJUU MIKE:##WOULD GROW SO QUICKLY.##I AM SO PROUD OF ALL THE";
    if slideTimer >= 1305 strFrame = "BIJUU MIKE:##HARDSHIPS WE HAVE MANAGED##TO OVERCOME...";
    if slideTimer >= 1505 strFrame = "BIJUU MIKE:##AND I AM CONFIDENT WE##CAN ACHIEVE ANYTHING AND##EVERYTHING!";
    if slideTimer >= 1705 strFrame = "BIJUU MIKE:##THERE ARE SO MANY PEOPLE##I WOULD LIKE TO THANK, BUT...";

    if slideTimer >= 1905 strFrame = "BIJUU MIKE:##THERE WILL BE TIME FOR##ME TO THANK YOU ALL##THROUGHOUT THE DAY!";
    if slideTimer >= 2105 strFrame = "BIJUU MIKE:##LET US START THE##FESTIVITIES ALREADY!!!";
    if slideTimer >= 2305
    {
        if alphaVal > 0 alphaVal -= 0.1;
    }
    if slideTimer == 2325
    {
        alphaVal = 0;
        picFrame = 2;
        slideTimer = 0;
    }

}
