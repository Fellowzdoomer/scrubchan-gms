/// Initialize the player (teleportals)

image_speed = 0;

if got_tDest == false
{
    tdestY = y;
    y -= 256;
    got_tDest = true;
}

show_debug_message(string(tdestY));


if y < tdestY
{
    sprite_index = sprPlayerTeleport;
    y += 8;
    show_debug_message(string(y));
}
else if y >= tdestY
{
    if y > tdestY { show_debug_message("over " + string(y)); y = tdestY; }
    image_speed = 1/2;
    if image_index == 2 audio_play_sound(sndTeleport,8,false);
    if image_index == 3
    {
    didTeleport = true;
    }
}


global.wpe_weapon1 = -1;
global.wpe_weapon2 = -1;
global.wpe_weapon3 = -1;
global.wpe_weapon4 = -1;
global.wpe_weapon5 = -1;
global.wpe_weapon6 = -1;
global.wpe_weapon7 = -1;
global.wpe_weapon8 = -1;

global.weapon = 0;
