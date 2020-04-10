image_speed = 0;

if got_tDest == false
{
    //view_yview[0] = global.camY;
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
    //instance_create(view_xview[0],view_yview[0],objShiftCamera);
    /*view_object[0] = objPlayer;
    view_hspeed[0] = objPlayer.hsp;
    view_vspeed[0] = objPlayer.vsp;*/
    didTeleport = true;
    }
}

global.weapon = 0;
