// Quint will essentially make a dash for the player.

if enemyTimer == 51
{
    facePlayer = false;
    sprite_index = sprQuintHyperSlide;
    image_speed = 0;
    image_index = 0;
    if x > objPlayer.x { hsp = -4; }
    else { hsp = 4; }
    show_debug_message("quint hsp: " + string(hsp))
}

else if enemyTimer == 75
{
    image_index = 1;
    hsp = 2 * image_xscale;
    show_debug_message("quint hsp: " + string(hsp))
}

else if enemyTimer == 85
{
    image_index = 2;
    hsp = 1 * image_xscale;
    show_debug_message("quint hsp: " + string(hsp))
}

else if enemyTimer == 90
{
    sprite_index = sprQuintIdle;
    facePlayer = true;
    hsp = 0;
    show_debug_message("quint hsp: " + string(hsp))
}

else if enemyTimer == 120
{
    attack = 0;
    enemyTimer = 0;
}
