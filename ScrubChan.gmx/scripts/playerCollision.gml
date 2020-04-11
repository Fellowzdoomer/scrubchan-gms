// Movement + Gravity check
if !freeformMode
{
    if (!isClimbing)
    {
        // Controller hack around
        if h_move > 0.2
        {
            kRight = 1;
            kLeft = 0;
        }
        else if h_move < -0.2
        {
            kLeft = -1;
            kRight = 0;
        }
        move = kLeft + kRight;
        
        if !isKnockedBack hsp = (move * movespeed) + push;
        else hsp = knockbackSpeed * -image_xscale;
    }
    
    // v_move for left axis up/down control
    if v_move > 0.2
    {
        kUp = 0;
        kDown = 1;
    }
    else if v_move < -0.2
    {
        kDown = 0;
        kUp = 1;
    }
    
    if kJump || kJumpHold isGrounded = false;
    if (!isClimbing)
    {
        if (vsp < vsp_cap) 
        {
            vsp += grav;
        }
    
        if (!place_meeting(x,y-4,objSolid))
        {
            if (vsp < 0) && (!kJumpHold)
            {
                vsp = max(vsp,-jumpspeed/4)
            }
    
        }
    }
    
    // Climbing code
    if isClimbing
    {
        if kJump isClimbing = false;
    }
    
    if (kUp)
    {
        if (place_meeting(x,y,objLadder))
        {
            isSliding = false;
            isClimbing = true;
            isGrounded = false;
            hsp = 0;
            vsp = 0;
            if sprite_index != sprMegamanClimbShoot y -= 1.375;
        }
        else if (!place_meeting(x,y,objLadder))
        {
            if (isClimbing)
            {
                if objPlayer.y < objLadder.y + 16
                {
                    //y -= 1.375;
                    y -= 2;
                    isClimbing = false;
                    isGrounded = true;
                }
            }
        }
    }
    
    // getup sprite - from megaengine
    if (isClimbing)
    {
        with (instance_place(x,y,objLadder))
        {
            other.x = x + 8;
        }
        if !position_meeting(x, bbox_top+13, objLadder) && position_meeting(x, bbox_bottom+1, objLadder)
        {
            sprite_index = sprMegamanClimbGetup;
        }
        if (kUp) || (kDown) image_speed=5/60; else image_speed=0;  
    }
    
    if (place_meeting(x,y+1,objSolid))
    {
        vsp = kJump * -jumpspeed;
    }
    
    if (kDown)
    {
        if (place_meeting(x,y+1,objLadder))
        {
            if !place_meeting(x,y+2,objSolid)
            {
                sprite_index = sprPlayerClimb
                isSliding = false;
                isClimbing = true;
                isGrounded = false;
                hsp = 0;
                vsp = 0;
                if sprite_index != sprMegamanClimbShoot y += 1.375;
            }
        }
        else
        {
            isClimbing = false;
            isGrounded = true;
        }
    }
    
    mySolid = instance_place(x, y+vsp, objSolid);
    if mySolid >= 0 && vsp > 0 {
        y = mySolid.y - (sprite_get_height(mask_index) - sprite_get_yoffset(mask_index));
        isGrounded = true;
    
        vsp = 0;
        if isGrounded == true audio_play_sound(sndPlayerLand,1,false);
    }
    
    // Top of Ladder
    if place_meeting(x,y+1,objLadder)
    {
        isGrounded = true;
    }
    
    // Horizontal collision
    if (place_meeting(x+hsp,y,objSolid))
    {
        while (!place_meeting(x+sign(hsp), y, objSolid))
        {
            x += sign(hsp)
        }
        hsp = 0;
    }
    
    // Special door collision
    if instance_exists(objBossDoor)
    {
        if objBossDoor.image_index = 8
        {
            if (place_meeting(x+hsp,y,objBossDoor))
            {
                while (!place_meeting(x+sign(hsp), y, objBossDoor))
                {
                    x += sign(hsp)
                }
                hsp = 0;
            }
        }
    }
    
    // Diagonal Collision
    if (place_meeting(x+hsp,y+vsp,objSolid))
    {
        while (!place_meeting(x+sign(hsp), y+sign(vsp), objSolid))
        {
            x += sign(hsp)
            y += sign(vsp)
        }
        hsp = 0;
        vsp = 0;
    }
    
    // Sliding code
    if isSliding == true
    {
        slideTimer += 1;
        sprite_index = sprPlayerSlide;
        mask_index = sprPlayerSlideMask;
        
        hsp = (image_xscale * slidespeed);
        if (place_meeting(x+hsp+(1*image_xscale),y,objSolid))
        {
            while (!place_meeting(x+sign(hsp),y,objSolid))
            {
                x += sign(hsp)
            }
        hsp = 0;
        }
        
        if (!place_meeting(x,y+1,objSolid))
        {
            if (place_meeting(x,y-4,objSolid))
            {
                y += 8;
            }
            sprite_index = sprPlayer;
            mask_index = sprPlayerMask;
            isSliding = false;
            slideTimer = 0;
        }
        
        if slideTimer > 25
        {
            if (place_meeting(x,y-4, objSolid))
            {
                slideTimer = 23;
            }
            else
            {
                sprite_index = sprPlayer;
                mask_index = sprPlayerMask;
                hsp = move * movespeed;
                isSliding = false;
                slideTimer = 0;
            }
        }    
    }

    x += hsp;
    y += vsp;
}
