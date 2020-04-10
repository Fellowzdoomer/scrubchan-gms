if (-kLeft) image_xscale = -1;
if (kRight) image_xscale = 1;

if gamepad_is_connected(0)
{
    if h_move > 0.2 image_xscale = 1;
    else if h_move < -0.2 image_xscale = -1;
}


if (!place_meeting(x,y+1,objSolid))
{
    if !isClimbing
    {
    sprite_index = sprPlayerJump;
    }
    else { sprite_index = sprPlayerClimb; }
}

else
{
    if (-kLeft) or (kRight)
    {
        sprite_index = sprPlayerWalk;
        image_speed = 6/60;
    }
    else if h_move > 0.2 or h_move < -0.2
    {
        sprite_index = sprPlayerWalk;
        image_speed = 6/60;
    }
    else
    {
        if !isClimbing
        {
            sprite_index = sprPlayer;
            image_index = 0;
        }
    }
}

