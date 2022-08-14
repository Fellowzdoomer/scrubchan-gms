if enemyTimer == 51
{
    surgeDMCounter += 1;
    show_debug_message("surgeDMCounter:" + string(surgeDMCounter));
    //if image_xscale = 1 hsp = 2.5;
    //else if image_xscale = -1 hsp = -2.5;
    vsp = -3;
    facePlayer = false;
    ignoreGravity = true;
}

else if enemyTimer == 56 { vsp = 0; instance_create(x,y,objSurgeWomanBoltWarning); }

else if enemyTimer == 65
{
   sprite_index = sprSurgeDash;
   if image_xscale = 1 hsp = 4;
   else if image_xscale = -1 hsp = -4;
   instance_create(x,y,objSurgeDashParticleSpawnerBoss);
}

else if enemyTimer == 135
{
    sprite_index = sprFillerSurgeBox;
    hsp = 0;
    vsp = 0;
    facePlayer = true;
    if surgeDMCounter <= 3 { attack = 11; enemyTimer = 45;}
    else
    {
        attack = 0;
        surgeDMCounter = 0;
        if !didDesperation didDesperation = true;
        ignoreGravity = false;
        enemyTimer = 0;
    }
}
