show_debug_message(string(enemyTimer))
if enemyTimer == 51
{
    sprite_index = sprMetalJump;
    vsp = -8;
}
else if enemyTimer == 55
{
    if curX < jumpDistance
    {
        curX += 8;
        x += 8*left;
        enemyTimer = 54;
    }
    else if curX >= jumpDistance
    {
        curX = 0;
        left = left * -1;
        enemyTimer = 0;
    }
}

