if enemyTimer == 51
{
    sprite_index = sprCutmanRun;
    if image_xscale = 1 hsp = 2.5;
    else if image_xscale = -1 hsp = -2.5;
    facePlayer = false;
}

else if enemyTimer == 101
{
    sprite_index = sprCutmanPose;
    hsp = 0;
    attack = 0;
    enemyTimer = 0;
    facePlayer = true;
}
