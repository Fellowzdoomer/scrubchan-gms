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
if (place_meeting(x,y,smoothStop)) camIsMoving = false;

if camIsMoving view_xview[0] = x - 128.5;

if (place_meeting(x-1,y,smoothStop) and camIsMoving) view_xview[0] -= 1;
else if (place_meeting(x+1,y,smoothStop) and camIsMoving) view_xview[0] += 1;
