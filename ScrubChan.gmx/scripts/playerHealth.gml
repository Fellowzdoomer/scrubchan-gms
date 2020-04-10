// Enemy Projectile checks

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

// Contact with any enemy itself
/*if (place_meeting(x,y,prtEnemy))
{
    if invulnerable == false
    {
        audio_play_sound(sndPlayerHit,9,false);
        global.playerHP -= 2;
    }
    invulnerable = true;
    if !isKnockedBack
    {
        knockbackSpeed = 0.5;
        hsp = knockbackSpeed;
        isKnockedBack = true;
    }
}*/

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


// dead code

if global.playerHP <= 0
{
    if global.playerHP < 0 global.playerHP = 0;
    visible = false;
    
    deathTimer += 1;
    if deathTimer == 1 { audio_stop_all(); instance_create(x,y,objExplosionSpawner); global.playerLives -= 1; }
    else if deathTimer == 210
    {
        if global.playerLives > 0 room_goto(rmCheckpointRedirect);
        else room_goto(rmStageSelect);
    global.playerHP = 28;
    deathTimer = 0;
    invulnerable = false;
    invulnTimer = 0;
    didTeleport = false;
    visible = true;
    }
}


