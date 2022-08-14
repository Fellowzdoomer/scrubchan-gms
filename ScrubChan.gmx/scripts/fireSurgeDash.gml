if global.wpe_weapon2 > 3
{
    global.wpe_weapon2 -= 3;
    if !isDashing isDashing = true;
    if !instance_exists(objSurgeDashParticleSpawner) instance_create(x,y,objSurgeDashParticleSpawner);
}
