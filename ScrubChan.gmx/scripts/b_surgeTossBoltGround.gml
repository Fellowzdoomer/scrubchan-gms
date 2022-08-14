if enemyTimer == 51
{
    sprite_index = sprFillerSurgeBox;
    image_speed = 0;
    image_index = 0;
}

else if enemyTimer == 60
{
    //image_index = 1;
    instance_create(x,y-8,objSurgeBolt);
}

else if enemyTimer == 80
{
    sprite_index = sprFillerSurgeBox;
    hsp = 0;
    attack = 0;
    image_speed = 10/60;
    enemyTimer = 0;
    facePlayer = true;
}
