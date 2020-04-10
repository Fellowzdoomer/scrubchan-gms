

if txt == "play intro"
{
    consoleTxt = "Playing intro."
    room_goto(rmIntroCutscene);
}

if txt == "goto rmStart"
{
    consoleTxt = "Moving to rmStart..."
    room_goto(rmStart);
}

if txt == "goto rmMainMenu"
{
    consoleTxt = "Moving to rmMainMenu..."
    room_goto(rmMainMenu);
}

if txt == "wallhump"
{
    consoleTxt = "Moving to rmMainMenu..."
    room_goto(rmWallHump);
}

if txt == "goto rmDebugMenu"
{
    consoleTxt = "Moving to rmDebugMenu.."
    room_goto(rmDebugMenu);
}

if txt == "goto rmTitleScreen"
{
    consoleTxt = "Moving to rmTitleScreen..."
    room_goto(rmTitleScreen);
}

if txt == "dnf"
{
    consoleTxt = "Room does not exist! Filler"
    room_goto(rmDoesNotExist);
}

if txt == "heal"
{
    global.playerHP = 28;
}

if txt == "god"
{
    if objPlayer.invulnerable == false
    { objPlayer.invulnerable = true; consoleTxt = "You're now invincible."}
    else { objPlayer.invulnerable = false; consoleTxt = "You're now hittable."}
}  

if txt == "impulse 101"
{
    consoleTxt = "Full health + weps, +1 life"
    global.playerHP = 28;
    global.playerWepEnergy = 28;
    global.playerLives += 1;
    
    global.wpe_weapon1 = 28;
    global.wpe_weapon2 = 28;
    global.wpe_weapon3 = 28;
    global.wpe_weapon4 = 28;
    global.wpe_weapon5 = 28;
    global.wpe_weapon6 = 28;
    global.wpe_weapon7 = 28;
    global.wpe_weapon8 = 28;
}

if txt == "debugmus"
{
    consoleTxt = "Playing that jumping music"
    audio_stop_all();
    audio_play_sound(bgmDebug, 9, true)
}

if txt == "summon testEnemy"
{
    consoleTxt = "Summoned TestEnemy"
    instance_create(176,objPlayer.y,objTestEnemy)

}

if txt == "summon testBoss"
{
    consoleTxt = "Summoned TestBoss"
    instance_create(176,objPlayer.y,objTestBoss)
}

if txt == "summon testBoss2"
{
    consoleTxt = "Summoned TestBoss2"
    instance_create(176,objPlayer.y-32,objTestBoss2)
}

if txt == "summon testBoss3"
{
    consoleTxt = "Summoned TestBoss3"
    instance_create(144,objPlayer.y-32,objTestBoss3)
}

txt = "";


