// Quint's desperation move

if enemyTimer == 51
{
    didDesperation = true;
    image_speed = 0;
    image_index = 3;
    sprite_index = sprQuintWhipShot;
    instance_create(x,y,objQuintChargeShot)
}
else if enemyTimer == 61
{
    image_speed = 0;
    image_index = 3;
    sprite_index = sprQuintWhipShot;
    instance_create(x,y,objQuintChargeShot)
}
else if enemyTimer == 71
{
    image_speed = 0;
    image_index = 3;
    sprite_index = sprQuintWhipShot;
    instance_create(x,y,objQuintChargeShot)
}
else if enemyTimer == (81)
{
    attack = 2;
    enemyTimer = 50;
}
