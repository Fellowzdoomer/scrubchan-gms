if (!ignoreGravity)
{
    //if !place_meeting(x,y+vsp+2,objSolid) sprite_index = sprSurgeJump;
    
    //if place_meeting(x,y,objSolid) y -=1;
}

if (place_meeting(x+hsp,y,objSolid))
    {
        while (!place_meeting(x+sign(hsp), y, objSolid))
        {
            x += sign(hsp)
        }
        hsp = 0;
    }
    
if (place_meeting(x+hsp,y,objBossDoor))
    {
        while (!place_meeting(x+sign(hsp), y, objBossDoor))
        {
            x += sign(hsp)
        }
        hsp = 0;
    }
