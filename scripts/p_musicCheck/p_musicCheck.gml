// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function p_musicCheck(){

if live_call() return live_result;
	if (inBossFight)
	{
		musToPlay="musBoss";
	}
	if (!inBossFight)
	{
		switch (room)
		{
			case fStage1: musToPlay="mus26new"; break;
			case fStage6: musToPlay="fillerFortress3"; break;
			
			// challenges
			case chFinalBoss: musToPlay="musChallenge1"; break;
			case chSurge: musToPlay="musChallenge1"; break;
			case chPoison: musToPlay="musChallenge1"; break;
			case chLimbo: musToPlay="musChallenge1"; break;
			case chContrivance: musToPlay="musChallenge1"; break;
			case chCode: musToPlay="musChallenge1"; break;
			case chGasoline: musToPlay="musChallenge1"; break;
			case chShred: musToPlay="musChallenge1"; break;
			case chPrismarine: musToPlay="musChallenge1"; break;
			
			default: musToPlay="rj112";break;
		}
	}
	
		
	if !(audio_is_playing(asset_get_index(musToPlay)))
	{
		audio_stop_all();
		audio_play_sound(asset_get_index(musToPlay),8,true);	
	}
}