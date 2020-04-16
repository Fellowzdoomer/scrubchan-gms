// checks the camera position when stopped.

/*
- get the current xpos of cam
- set the position to that value rounded
- check if that value is divisible by 16.
-- if it is, don't do anything
-- if it isn't, keep adding/subtracting by 1 based off player direction
-- once it is, set the new position
- check to make sure that is divisible by 256. if not do the same thing
*/

camIsMoving = false; // this code would be called after, put here for notation

var activateCheckScript = true; // activates this script
var getXPos = view_xview[0]; // get xPos
var getXPosRounded = round(view_xview[0]); // round view_xview[0]
var setNewXPos = 0; // the end goal
var predictXPos = 0; // needed for calculations
var affectInt = 0; // how many iterations before we finally hit on a number

if activateCheckScript
{
    if getXPosRounded % 256 != 0 // if the number is not divisible by 256
    {
        if (getXPosRounded + (objPlayer.image_xscale * affectInt)) % 256 == 0
        {
            setNewXPos = getXPosRounded + (objPlayer.image_xscale * affectInt);
            view_xview[0] = setNewXPos;
        }
        else
        {
            affectInt += 1 * objPlayer.image_xscale;
            show_debug_message("affectInt:" + string(affectInt));
            show_debug_message("setNewXPos:" + string(setNewXPos));
        }
    }
}

// double checking now to ensure everything is peachy
activateCheckScript = false;
