if enemyTimer == 51
{
    sprite_index = sprFillerSurgeBox;
    if image_xscale = 1 hsp = 3;
    else if image_xscale = -1 hsp = -3;
    facePlayer = false;
}

else if enemyTimer == 101
{
    sprite_index = sprFillerSurgeBox;
    hsp = 0;
    attack = 0;
    enemyTimer = 0;
    facePlayer = true;
}
