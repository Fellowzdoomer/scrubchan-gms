/// betterConsoleScript (for the ingame Console)

// Strings should be two parts - the command and the argument
// unless we have special cases (like a "help" command).

parseTxt = string_letters(txt);
parseNum = string_digits(txt)
var cArgument;
var boss;
var bossPhase;

// play [ cutsceneID ]
if string_pos("play", parseTxt)
{
   show_debug_message("It's in!");
   cArgument = string_replace(parseTxt, 'play', '');
   show_debug_message(string(cArgument));
   
   switch cArgument
   {
        case "intro":
            room_goto(rmIntroCutscene)
        case "demointro":
            room_goto(rmDemoIntroCutscene);
   }
}

// goto [ roomID ]
if string_pos("goto", parseTxt)
{
   cArgument = string_replace(parseTxt, 'goto', '');
   show_debug_message(string(cArgument));
   
   if !room_exists(asset_get_index(cArgument)) room_goto(rmDoesNotExist)
   else room_goto(asset_get_index(cArgument))
}

// wep [ wepID ]
if string_pos("wep", txt)
{
    global.weapon = real(parseNum);
}

// toggle debug mode
if string_pos("debug", txt)
{
    if global.debugMode == false
    {
        global.debugMode = true;
    }
    else
    {
        global.debugMode = false;
    }
}


if string_pos("view", txt)
{
    if view_visible[0] == true
    {
        view_visible[0] = false
        view_visible[1] = true
    }
    else
    {
        view_visible[0] = true;
    }
}

// playerHP [num]
if string_pos("playerHP", txt)
{
    global.playerHP = real(parseNum);
}


if string_pos("angle", txt)
{
    view_angle[0] = real(parseNum);
}


// spawn [instance] [+\- xpos]

if string_pos("spawn",txt)
{
    cArgument = string_replace(parseTxt, 'spawn', '');
    show_debug_message(string(cArgument));
    show_debug_message(string(parseNum))
    
    instance_create((objPlayer.x + real(parseNum)), objPlayer.y, asset_get_index(cArgument))
}

// warp [move]


if string_pos("warp",txt)
{
    cArgument = string_replace(parseTxt, 'warp', '');
    show_debug_message(string(cArgument));
    show_debug_message(string(parseNum))
    
    objPlayer.x += real(parseNum)
}

// sound [sound index]

if string_pos("sound", parseTxt)
{
   cArgument = string_replace(parseTxt, 'sound', '');
   show_debug_message(string(cArgument));
   
   audio_stop_all()
   audio_play_sound(asset_get_index(cArgument),9,false);
}


// boss
if string_pos("spawn",txt)
{
    cArgument = string_replace(parseTxt, 'boss', '');
    show_debug_message(string(cArgument));
    
    if cArgument == "MetalMan" instance_create(objBossSpawner.x,objBossSpawner.y,objMetalMan); boss = objMetalMan;
}

if string_pos("enemyAI", txt)
{
    if instance_exists(prtEnemy)
    {
        with prtEnemy
        {
        enemyTimer = 50;
        attack = real(objConsole.parseNum);
        }
    }
}

if string_pos("reset", txt)
{
    game_restart()
}

if string_pos("wy",txt)
{
    cArgument = string_replace(parseTxt, 'wy', '');
    show_debug_message(string(cArgument));
    show_debug_message(string(parseNum))
    
    objPlayer.y -= real(parseNum)
}

// Noclip
if string_pos("noclip", txt)
{
    if !freeformMode
    {
        objPlayer.freeformMode = true;
        show_debug_message("Freeform Mode Active");
    }
    else
    {
        objPlayer.freeformMode = false;
        objPlayer.push = 0;
        show_debug_message("Freeform Mode Deactive");
    }
}

