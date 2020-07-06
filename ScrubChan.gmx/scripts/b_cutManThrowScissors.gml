if enemyTimer == 51
{
    sprite_index = sprCutmanToss;
    image_speed = 0;
    image_index = 0;
}

else if enemyTimer == 60
{
    image_index = 1;
    instance_create(x,y-8,objCutmanScissors);
}

else if enemyTimer == 80
{
    if instance_exists(objCutmanScissors)
    {   
        enemyTimer = 75;
    }
    else 
    {
        enemyTimer = 100;
    }
}

else if enemyTimer == 101
{
    sprite_index = sprCutmanPose;
    hsp = 0;
    attack = 0;
    image_speed = 10/60;
    enemyTimer = 0;
    facePlayer = true;
}
