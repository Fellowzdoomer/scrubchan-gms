// rebirth player gimmick

if (!global.playerDidLimboDm)
{
    instance_create(view_xview[0],view_yview[0],objPlayerLimboDesperationAttack);
    global.playerDidLimboDm = true;
}
