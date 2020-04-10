// Quint will do a melee slash

if enemyTimer == 51
{
    facePlayer = false;
    sprite_index = sprQuintSlash;
    image_speed = 0;
    image_index = 0;
}
else if enemyTimer == 60
{
    show_debug_message("x"+string(x)+" playerx"+string(objPlayer.x))
    if x > objPlayer.x { instance_create(x-16,y,objHitByMelee) }
    else { instance_create(x+16,y,objHitByMelee); }
    image_index = 1;
}
else if enemyTimer == 65
{
    image_index = 2;
    sprite_set_offset(sprite_index,sprite_get_xoffset(sprite_index),16)
}
else if enemyTimer == 70 
{
    image_index = 3;
    sprite_set_offset(sprite_index,sprite_get_xoffset(sprite_index),19)
}
else if enemyTimer == 80 
{
    sprite_index = sprQuintIdle;
    with objHitByMelee instance_destroy();
}
else if enemyTimer == 100
{
    facePlayer = true;
    attack = 0;
    enemyTimer = 0;
}
