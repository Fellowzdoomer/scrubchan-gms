if isShooting == true
    {
        shootTimer += 1;
        if sprite_index == sprPlayer { sprite_index = sprPlayerShoot; }
        if sprite_index == sprPlayerWalk { sprite_index = sprPlayerWalkShoot; }
        if sprite_index == sprPlayerJump { sprite_index = sprPlayerJumpShoot; }
        if sprite_index == sprPlayerClimb { sprite_index = sprMegamanClimbShoot; }
        if sprite_index == sprMegamanClimbGetup { sprite_index = sprMegamanClimbGetupShoot; }
    
        if shootTimer > 20
        {
            if sprite_index == sprPlayerShoot { sprite_index = sprPlayer; }
            if sprite_index == sprPlayerWalkShoot { sprite_index = sprPlayerWalk; }
            if sprite_index == sprPlayerJumpShoot { sprite_index = sprPlayerJump; }
            if sprite_index == sprMegamanClimbShoot { sprite_index = sprPlayerClimb; }
            
            if sprite_index == sprMegamanClimbGetup { sprite_index = sprMegamanClimbGetup; }
            isShooting = false;
        }
    }
