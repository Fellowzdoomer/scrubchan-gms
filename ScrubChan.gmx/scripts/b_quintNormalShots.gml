// Quint shoots out normal, low-powered shots

if enemyTimer == 51
{
    image_speed = 0;
    image_index = 3;
    sprite_index = sprQuintWhipShot;
    instance_create(x,y,objQuintShot)
}
else if enemyTimer == 61
{
    image_speed = 0;
    image_index = 3;
    sprite_index = sprQuintWhipShot;
    instance_create(x,y,objQuintShot)
}
else if enemyTimer == 71
{
    image_speed = 0;
    image_index = 3;
    sprite_index = sprQuintWhipShot;
    instance_create(x,y,objQuintShot)
}
else if enemyTimer == (81)
{
    sprite_index = sprQuintIdle
    attack = 0;
    enemyTimer = 0;
}
