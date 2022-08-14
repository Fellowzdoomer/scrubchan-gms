if enemyTimer == 51
{
    //sprite_index = sprCutmanJump;
    //if image_xscale = 1 hsp = 2.5;
    //else if image_xscale = -1 hsp = -2.5;
    vsp = -3;
    facePlayer = false;
    ignoreGravity = true;
}

else if enemyTimer == 56 { vsp = 0; instance_create(x,y-8,objSurgeBolt); }

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
    attack = 0;
    if !didDesperation didDesperation = true;
    facePlayer = true;
    ignoreGravity = false;
    enemyTimer = 0;
}
