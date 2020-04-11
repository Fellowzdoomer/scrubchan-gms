// Keyboard
kLeft = -keyboard_check(global.mLeftBind);
kRight = keyboard_check(global.mRightBind) || gamepad_button_check(0, gp_padr);
kJump = keyboard_check_pressed(global.mJump);
kJumpHold = keyboard_check(global.mJump);
kUp = keyboard_check(global.mUp);
kUpPressed = keyboard_check_pressed(global.mUp);
kDown = keyboard_check(global.mDown);

kWepLeft = keyboard_check_pressed(global.wLeft);
kWepRight = keyboard_check_pressed(global.wRight);

kShoot = keyboard_check_pressed(global.wShoot);
kSlide = keyboard_check_pressed(global.mSlide);

// Controller (tested on Dualshock 3 - Aug 09, 2019)
kJumpGP = gamepad_button_check_pressed(0,gp_face2);
kJumpHoldGP = gamepad_button_check(0,gp_face2);

kShootGP = gamepad_button_check_pressed(0,gp_face1);
kSlideGP = gamepad_button_check_pressed(0,gp_face3);

kWepLeftGP = gamepad_button_check_pressed(0,gp_shoulderl);
kWepRightGP = gamepad_button_check_pressed(0,gp_shoulderr);

// cheap workaround for jump
if gamepad_is_connected(0)
{
    if kJumpGP kJump = 1;
    if kJumpHoldGP kJumpHold = 1;
}

if keyboard_check_released(ord("G")) show_debug_message(string(global.playerLives));

// Shooting code
if (kShoot) && !isSliding or (kShootGP) && !isSliding
{
    isShooting = true;
    shootTimer = 0;
    if global.weapon == 1 fireClockworkBeta();
    else if global.weapon == 2 fireTestWeapon2();
    else 
    {
        instance_create(x,y-4,objBusterShot);
    }
}

// Weapon Toggling
if kWepLeft or kWepLeftGP
{
    if global.weapon > 0 global.weapon -= 1; 
}
if kWepRight  or kWepRightGP
{
    if global.weapon < 8 global.weapon += 1;
}
if kWepLeft || kWepRight show_debug_message(string(global.weapon))
if kWepLeft && kWepRight global.weapon = 0;

if kWepLeftGP || kWepRightGP show_debug_message(string(global.weapon))
if kWepLeftGP && kWepRightGP global.weapon = 0;

// Toxin code

if (place_meeting(x,y-1,objPoison))
{
    // Increment the timer
    toxinTimer += 1;
    show_debug_message(string(global.toxinAmt))
    show_debug_message("========")
    show_debug_message(string(toxinTimer))
    
    if toxinTimer == 20
    {
        if global.toxinAmt < 28 {
            global.toxinAmt += 1;
            // Make sure the toxin amount can't get higher than 28
            if global.toxinAmt > 28 { global.toxinAmt = 28; }
            toxinTimer = 0; 
            }
        else if global.toxinAmt == 28
        {
            if toxinTimer == 20
            {
                global.playerHP -= 4; toxinTimer = 0;
            }
        }
        else toxinTimer = 0;
    }
}

if global.toxinAmt > 0
{
    if !(place_meeting(x,y-1,objPoison))
    {
        toxinTimer += 1;
        if toxinTimer == 25
        {
            global.toxinAmt -= 1;
            toxinTimer = 0;
        }
    }
}

if playLandSoundTimer < 2
{
    playLandSoundTimer += 1;
}
else
{
    playLandSound = true;
}

// Sliding code
if (kSlide) || (kSlideGP)
{
    if (place_meeting(x,y+1,objSolid))
    {
        if (!place_meeting(x+16,y,objSolid)) or (!place_meeting(x-16,y,objSolid))
        {
        isSliding = true
        }
    }    
}

if keyboard_check_released(vk_numpad5)
{
    if !freeformMode
    {
        freeformMode = true;
        show_debug_message("Freeform Mode Active");
    }
    else
    {
        freeformMode = false;
        push = 0;
        show_debug_message("Freeform Mode Deactive");
    }
}

// debug FreeForm/NoClip mode
if freeformMode
{
    if keyboard_check_released(vk_numpad8)
    {
        view_yview[0] -= 224;
        y -= 224;
    }
    if keyboard_check_released(vk_numpad2)
    {
        view_yview[0] += 224;
        y += 224;
    }
    if keyboard_check_released(vk_numpad4)
    {
        view_xview[0] -= 256;
        x -= 256;
    }
    if keyboard_check_released(vk_numpad6)
    {
        view_xview[0] += 256;
        x += 256;
    }
    if keyboard_check_released(vk_numpad9)
    {
        screenCount += 1;
        show_debug_message(string(screenCount) + "screen");
    }
    if keyboard_check_released(vk_numpad3)
    {
        screenCount -= 1;
        show_debug_message(string(screenCount)+ "screen");
    }
    if keyboard_check_released(ord("W")) y -= 16;
    else if keyboard_check_released(ord("S")) y += 16;
    else if keyboard_check_released(ord("A")) x -= 16;
    else if keyboard_check_released(ord("D")) x += 16;
}
