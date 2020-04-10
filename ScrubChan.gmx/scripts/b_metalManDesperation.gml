
if enemyTimer == 51
{
    image_speed = 0;
    image_index = 0;
    sprite_index = sprMetalJump;
    x = view_xview[0] + 128;
    y = view_yview[0] + 112;
}
else if enemyTimer == 53
{
    sprite_index = sprMetalThrow
    audio_play_sound(sndMenuSelect,9,false)
}
else if enemyTimer == 70 || enemyTimer == 90 || enemyTimer == 110 || enemyTimer == 130 || enemyTimer == 150
{
    image_index = 1;
    instance_create(x,y,objMetalBlade)
}
else if enemyTimer == 170 { image_speed = 10/60; enemyTimer=50; x = tDestX; attack=2; didDesperation = true; }
else
{
    image_index = 0;
}

