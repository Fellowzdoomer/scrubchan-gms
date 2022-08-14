if enemyTimer == 51
{
    if image_xscale = 1 hsp = 2.5;
    else if image_xscale = -1 hsp = -2.5;
    vsp = -9;
    facePlayer = false;
}

else if enemyTimer == 60 vsp = 0;

else if enemyTimer == 65
{
    if !place_meeting(x,y+vsp+2,objSolid)
    {   
        enemyTimer = 63
    }
    else 
    {
        enemyTimer = 100;
    }
}

else if enemyTimer == 101
{
    sprite_index = sprFillerSurgeBox;
    hsp = 0;
    vsp = 0;
    attack = 0;
    enemyTimer = 0;
    facePlayer = true;
}
