show_debug_message(string(enemyTimer))
if enemyTimer == 51
{
    sprite_index = sprMetalJump;
    vsp = -16;
}
else if enemyTimer == 60
{
    sprite_index = sprMetalThrow
    image_speed = 0;
    image_index = 0;
    vsp = 0;
}
else if enemyTimer == 65
{
    metalBlades += 1;
    if metalBlades != 3
    {
        if !place_meeting(x,y+vsp+2,objSolid)
        {
            sprite_index = sprMetalThrow
            image_index = 1;
            instance_create(x,y-8,objMetalBlade);
        }
    }
    else if metalBlades == 3
    {
        sprite_index = sprMetalJump;
    }
        enemyTimer = 69;
}
else if enemyTimer == 70
{
    if !place_meeting(x,y+vsp,objSolid)
    {
        image_index = 0;
        enemyTimer = 60;
    }   
    else
    {
        metalBlades = 0;
        sprite_index = sprMetalRun;
        image_speed = 10/60;
        vsp = 0;
        attack = 0;
        enemyTimer = 0;
    }
}
