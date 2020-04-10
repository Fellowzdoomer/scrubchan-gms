if place_meeting(x,y,objTeleportSource)
{
    with instance_nearest(x,y,objTeleportSource)
    {
        objPlayer.x = tDestX;
        objPlayer.y = tDestY;
        view_xview[0] = cDestX;
        view_yview[0] = cDestY;
    }
    
    audio_play_sound(sndTeleport,9,false);
}  
