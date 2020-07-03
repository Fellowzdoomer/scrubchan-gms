//show_debug_message(string(enemyTimer))
if enemyTimer == 51
{
    sprite_index = sprMetalJump;
    hsp = 2 * image_xscale;
    vsp = -7;
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
    if !place_meeting(x,y+vsp+2,objSolid)
    {   
        sprite_index = sprMetalThrow
        image_index = 1;
        instance_create(x,y-8,objMetalBlade);
    }
    else 
    {
        enemyTimer = 69;
    }
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
        sprite_index = sprMetalRun;
        image_speed = 10/60;
        if metalJump != 2
        {
            metalJump += 1;
            enemyTimer = 51;
            b_metalManChaseJump();
        }
        else 
        {
            enemyTimer = 0;
            hsp = 0;
            vsp = 0;
            attack = 0;
            metalJump = 0;
            enemyTimer = 0;
        }
    }
}
