// Enemy Projectile checks

if !global.inMenu || !isDashing
{

// == GENERIC CHECKS == \\
// Normal enemy shot
if (place_meeting(x,y,objEnemyShot))
{
   with objEnemyShot.id
   {
        instance_destroy();
   }
   if invulnerable == false
   {
        audio_play_sound(sndPlayerHit,9,false);
        global.playerHP -= 1;
        isKnockedBack = true;
   }
   invulnerable = true;
}

// Melee
else if (place_meeting(x,y,objHitByMelee))
{
    if invulnerable == false
    {
        audio_play_sound(sndPlayerHit,9,false);
        global.playerHP -= 6;
        isKnockedBack = true;
    }
    invulnerable = true;
}

// Contact with any LIVE enemy itself
checkAlive = instance_nearest(x,y,prtEnemy)
if (place_meeting(x,y,checkAlive)) && checkAlive.isAlive
{
    if !invulnerable
    {
        audio_play_sound(sndPlayerHit,9,false);
        global.playerHP -= 2;
        knockbackSpeed = 0.5;
        hsp = knockbackSpeed * image_xscale;
        isKnockedBack = true;
    }
    invulnerable = true;
}

// Contact with any boss that doesnt have a predefined attack thing
// Knockback code is really bugged. No wonder I commented it out

if (place_meeting(x,y,prtBossParent))
{
    if prtBossParent.isAlive
    {
        if invulnerable == false
        {
            audio_play_sound(sndPlayerHit,9,false);
            global.playerHP -= 4;
        }
        invulnerable = true;
    }
}


// == METAL MAN SPECIFIC == \\
// Metal Blade
if (place_meeting(x,y,objMetalBlade))
{
   with objMetalBlade.id
   {
        instance_destroy();
   }
    if invulnerable == false
    {
        audio_play_sound(sndPlayerHit,9,false);
        global.playerHP -= 3;
    }
    invulnerable = true;
}

// Metal Man himself
else if (place_meeting(x,y,objMetalMan))
{
    if objMetalMan.isAlive
    {
        if invulnerable == false
        {
            audio_play_sound(sndPlayerHit,9,false);
            global.playerHP -= 4;
        }
        invulnerable = true;
    }
}

// == SURGE WOMAN SPECIFIC == \\
// Surge Woman's hurty particles
if (place_meeting(x,y,objSurgeDashHurtyParticleBoss))
{
    if !invulnerable
    {
        audio_play_sound(sndPlayerHit,9,false);
        global.playerHP -= 3;
        knockbackSpeed = 0.5;
        hsp = knockbackSpeed * image_xscale;
        isKnockedBack = true;
    }
    
    with objSurgeDashHurtyParticleBoss.id instance_destroy();
    invulnerable = true;
}

// Surge Woman's bolt ball
if (place_meeting(x,y,objSurgeBolt))
{
    if !invulnerable
    {
        audio_play_sound(sndPlayerHit,9,false);
        global.playerHP -= 3;
        knockbackSpeed = 0.5;
        hsp = knockbackSpeed * image_xscale;
        isKnockedBack = true;
    }
    
    with objSurgeBolt.id instance_destroy();
    invulnerable = true;
}

// Surge Woman's Lightning DM attack
if (place_meeting(x,y,objSurgeLightning))
{
    if objSurgeLightning.id.image_index == 0
    {
        if !invulnerable
        {
            audio_play_sound(sndPlayerHit,9,false);
            
            if global.playerHP == 1 global.playerHP -= 1;
            else if global.playerHP >= 13 global.playerHP -= 12;
            else global.playerHP = 1;
            knockbackSpeed = 0.5;
            hsp = knockbackSpeed * image_xscale;
            isKnockedBack = true;
        }
    
        invulnerable = true;
    }
}

// == CUTMAN SPECIFIC == \\
// Cutman's Scissors
if (place_meeting(x,y,objCutmanScissors))
{
    if invulnerable == false
    {
        audio_play_sound(sndPlayerHit,9,false);
        global.playerHP -= 3;
    }
    invulnerable = true;
}
// == QUINT SPECIFIC == \\
// Quint's WhipShot
if (place_meeting(x,y,objQuintChargeShot))
{
   with objQuintChargeShot.id
   {
        instance_destroy();
   }
    if invulnerable == false
    {
        audio_play_sound(sndPlayerHit,9,false);
        global.playerHP -= 5;
    }
    invulnerable = true;
}

// Quint's normal pellets
else if (place_meeting(x,y,objQuintShot))
{
   with objQuintShot.id
   {
        instance_destroy();
   }
    if invulnerable == false
    {
        audio_play_sound(sndPlayerHit,9,false);
        global.playerHP -= 3;
    }
    invulnerable = true;
}

// Quint himself
else if (place_meeting(x,y,objQuint))
{
    if objQuint.isAlive
    {
        if invulnerable == false
        {
            audio_play_sound(sndPlayerHit,9,false);
            global.playerHP -= 4;
        }
        invulnerable = true;
    }
}

// invulnerability counter
if invulnerable == true
{
    invulnTimer += 1;
    
    if invulnTimer % 2 == 0 {visible = false; } else {visible = true; }
    if invulnTimer == 128
    {
        visible = true;
        invulnerable = false;
        invulnTimer = 0;
    }
}

// knockback counter
if isKnockedBack
{
    sprite_index = sprPlayerHurt;
    knockbackTimer += 1;
    if knockbackTimer == knockbackTimerMax
    {
        //knockbackSpeed = 0;
        knockbackTimer = 0;
        isKnockedBack = false;
    }
}

}

// Game over code

if global.playerHP <= 0
{
    // Limbo Woman's weapon gets special handling first because of its unique nature
    if (global.weapon == 3)
    {
        playerLimboDeathScript();
    }
    else
    {
    
    if global.playerHP < 0 global.playerHP = 0;
    visible = false;
    
    deathTimer += 1;
    if deathTimer == 1 { 
        audio_stop_all(); 
        instance_create(x,y,objExplosionSpawner); 
        global.playerLives -= 1; 
        if instance_exists(prtBossParent)
        {
            with prtBossParent facePlayer = false;
        }
        x = view_xview[0]+256;
        y = view_yview[0];
    }
    
    else if deathTimer == 210
    {
        if global.playerLives > 0 room_restart();
        // else room_goto(rmStageSelect);
        else room_goto(rmSimulationSelect);
        global.playerHP = 28;
        deathTimer = 0;
        invulnerable = false;
        invulnTimer = 0;
        didTeleport = false;
        visible = true;
    }
    
    }
}


