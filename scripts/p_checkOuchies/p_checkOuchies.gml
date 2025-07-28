// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function p_checkOuchies(){

	if (instance_exists(objSpike))
	{
		if (place_meeting(x,y,objSpike))
		{
			global.pHP = 0;	
		}
	}
}