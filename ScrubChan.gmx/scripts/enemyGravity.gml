if (!place_meeting(x,y+4,objSolid))
{
    if (vsp < vsp_cap) 
    {
        vsp += grav;
    }
}

/*if (place_meeting(x,y+vsp,objSolid))
    {
        while (!place_meeting(x, y+sign(vsp), objSolid))
        {
            y += sign(vsp)
        }
        vsp = 0;
    }
    */
    
mySolid = instance_place(x, y+vsp, objSolid);
if mySolid >= 0 && vsp > 0 {
        y = mySolid.y - (sprite_get_height(mask_index) - sprite_get_yoffset(mask_index) + 12);
        //isGrounded = true;
    
        vsp = 0;
        //if isGrounded == true audio_play_sound(sndPlayerLand,1,false);
    }
    
/*if (vsp < 0)
{
    vsp = max(vsp,-jumpspeed/4)
}*/
