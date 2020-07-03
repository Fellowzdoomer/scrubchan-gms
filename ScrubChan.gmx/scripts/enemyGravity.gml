if (!place_meeting(x,y+4,objSolid))
{
    if (vsp < vsp_cap) 
    {
        vsp += grav;
    }
}

if (place_meeting(x,y+vsp,objSolid))
    {
        while (!place_meeting(x, y+sign(vsp), objSolid))
        {
            y += sign(vsp)
        }
        vsp = 0;
    }
