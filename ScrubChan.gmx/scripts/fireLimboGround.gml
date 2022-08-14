if (!instance_exists(objLimboMelee))
{
    
    currentCombo = instance_create(objPlayer.x + (16 * objPlayer.image_xscale),objPlayer.y,objLimboMelee);
    switch global.limboCount
    {
        case 1:
            currentCombo.sprite_index = sprSaberHit1;
        break;
        
        case 2:
            currentCombo.sprite_index = sprSaberHit2;
        break;
        
        case 3:
            currentCombo.sprite_index = sprSaberHit3;
        break;
        
        case 4:
            currentCombo2 = instance_create(objPlayer.x,objPlayer.y,objLimboMelee);
            currentCombo2.sprite_index = sprSaberCircle;
        break;
    }

    alarm[1] = 30;
}
