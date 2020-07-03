show_debug_message(string(enemyTimer))
if enemyTimer == 51
{
    audio_play_sound(sndMenuSelect,9,false);
    sprite_index = sprMetalJump;
    ignoreGravity = true;
    desperationInvuln = true;
    global.hpBar_rgb1 = make_color_rgb(128,128,128);
    x = view_xview[0] + 128;
    y = view_yview[0] + 112;
}

// 1
else if enemyTimer == 60
{
    sprite_index = sprMetalThrow
    image_speed = 0;
    image_index = 0;
}
else if enemyTimer == 65
{
    if !place_meeting(x,y+vsp+2,objSolid)
    {   
        sprite_index = sprMetalThrow
        image_index = 1;
        instance_create(x,y-8,objMetalBlade);
    }
}
// 2
else if enemyTimer == 80
{
    sprite_index = sprMetalThrow
    image_speed = 0;
    image_index = 0;
}
else if enemyTimer == 85
{
    if !place_meeting(x,y+vsp+2,objSolid)
    {   
        sprite_index = sprMetalThrow
        image_index = 1;
        instance_create(x,y-8,objMetalBlade);
    }
}
// 3
else if enemyTimer == 100
{
    sprite_index = sprMetalThrow
    image_speed = 0;
    image_index = 0;
}
else if enemyTimer == 105
{
    if !place_meeting(x,y+vsp+2,objSolid)
    {   
        sprite_index = sprMetalThrow
        image_index = 1;
        instance_create(x,y-8,objMetalBlade);
    }
}
// 4
else if enemyTimer == 120
{
    sprite_index = sprMetalThrow
    image_speed = 0;
    image_index = 0;
}
else if enemyTimer == 125
{
    if !place_meeting(x,y+vsp+2,objSolid)
    {   
        sprite_index = sprMetalThrow
        image_index = 1;
        instance_create(x,y-8,objMetalBlade);
    }
}
// 5
else if enemyTimer == 140
{
    sprite_index = sprMetalThrow
    image_speed = 0;
    image_index = 0;
}
else if enemyTimer == 145
{
    if !place_meeting(x,y+vsp+2,objSolid)
    {   
        sprite_index = sprMetalThrow
        image_index = 1;
        instance_create(x,y-8,objMetalBlade);
    }
}

// continuing on
else if enemyTimer == 160
{
    sprite_index = sprMetalRain;
    image_speed = 15/60;
    audio_play_sound(sndBuzz,9,false);
}
else if enemyTimer == 162
{
    if image_index != 9 enemyTimer = 161
    else
    {
        image_speed = 0;
        image_index = 9;
        enemyTimer = 165;
    }
}

else if enemyTimer == 170
{
    global.activeMBSpawner = true;
}

else if enemyTimer == 350
{
    global.activeMBSpawner = false;
}

// metal jump
else if enemyTimer == 360
{
    if !place_meeting(x,y+vsp,objSolid)
    {
        sprite_index = sprMetalJump
        image_index = 0;
        enemyTimer = 355;
        ignoreGravity = false;
    }   
    else
    {
        //sprite_index = sprMetalJump
        //ignoreGravity = false;
        enemyTimer = 0;
        desperationInvuln = false;
        didDesperation = true;
        attack = 0;
        hsp = 0;
        vsp = 0;
        global.hpBar_rgb1 = make_color_rgb(225,0,88);
        sprite_index = sprMetalRun
        image_speed = 10/60;
    }
}
