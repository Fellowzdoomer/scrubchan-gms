// Quint charges up his shot and whipshots the player.

if enemyTimer == 51
{
    image_speed = 10/60;
    sprite_index = sprQuintCharge
    audio_play_sound(sndCharge,9,false);
    image_index = 0; 
}
else if enemyTimer == (120) image_speed = 15/60;
else if enemyTimer == (180)
{
    sprite_index = sprQuintWhipShot;
    image_speed = 0;
    image_index = 0;
}
else if enemyTimer == (185) image_index = 1;
else if enemyTimer == (190) image_index = 2;
else if enemyTimer == (195)
{
    image_index = 3;
    instance_create(x,y-8,objQuintChargeShot);
}
else if enemyTimer == (200) sprite_index = sprQuintIdle;
else if enemyTimer == (225)
{
    attack = 0;
    enemyTimer = 0;
}
