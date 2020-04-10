show_debug_message(string(enemyTimer))
if enemyTimer == 51
{
    sprite_index = sprMetalJump;
    vsp = -16;
}
else if enemyTimer == 60
{
    vsp = 1;
}
else if enemyTimer == 65
{
    if !place_meeting(x,y+1,objSolid)
    {
        instance_create(x,y,objMetalBlade);
        enemyTimer = 60
    }   
    else
    {
    sprite_index = sprMetalRun;
    vsp = 0;
    attack = 0;
    enemyTimer = 0;
    }
}
