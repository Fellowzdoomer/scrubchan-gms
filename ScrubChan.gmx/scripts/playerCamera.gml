// Normal transition
if (place_meeting(x,y,goRight))
{
    objCamera.x += 256;
    global.shiftDir = "right";
    global.isShifting = true;
    instance_create(x,y,objSectionSwitch);
}

if (place_meeting(x,y,goLeft))
{
    objCamera.x -= 256;
    global.shiftDir = "left";
    global.isShifting = true;
    instance_create(x,y,objSectionSwitch);
}

if (place_meeting(x,y,goUp))
{
    objCamera.y -= 224;
    global.shiftDir = "up";
    global.isShifting = true;
    instance_create(x,y,objSectionSwitch);
}

if (place_meeting(x,y,goDown))
{
    objCamera.y += 224;
    global.shiftDir = "down";
    global.isShifting = true;
    instance_create(x,y,objSectionSwitch);
}

// Boss Door transition (right)
if (place_meeting(x,y,objBossDoor))
{
    if instance_nearest(x,y,objBossDoor).activated = false
    {
        objCamera.x += 256;
        global.shiftDir = "right-door";
        global.isShifting = true;
        instance_create(x,y,objSectionSwitch);
    }
}

if (place_meeting(x,y,smoothStart)) camIsMoving = true;
if (place_meeting(x,y,smoothStop))
{
    camIsMoving = false;
    view_xview[0] = round(view_xview[0]);
    if view_xview[0] < 0 view_xview[0] = 0;
    checkCameraPos();
}

if keyboard_check_released(ord("Q"))
{
    show_debug_message(string(view_xview[0]) + " raw cam");
    show_debug_message(string(round(view_xview[0])) + " rounded cam");
}

if camIsMoving view_xview[0] = x - 128;

if (place_meeting(x-1,y,smoothStop) and camIsMoving) view_xview[0] -= 1;
else if (place_meeting(x+1,y,smoothStop) and camIsMoving) view_xview[0] += 1;
