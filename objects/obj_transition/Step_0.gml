/// @description Animating the transition

if (mode != TRANSITION_MODE.OFF)
{
	if (mode == TRANSITION_MODE.INTRO)
	{
		percent = max(0, percent - max((percent / 10), 0.005));
	}
	else
	{
		percent = min(targetPercent, percent + max(((targetPercent - percent) / 10), 0.005));
	}
	
	if (percent == targetPercent || percent == 0)
	{
		switch (mode)
		{
			case TRANSITION_MODE.NEXT:
                mode = TRANSITION_MODE.INTRO
                room_goto_next();
				break;
			
			case TRANSITION_MODE.GOTO:
                mode = TRANSITION_MODE.INTRO;
                room_goto(target);
				break;
			
			case TRANSITION_MODE.RESTART:
                game_restart();
				break;
			
			case TRANSITION_MODE.INTRO:
                mode = TRANSITION_MODE.OFF;
				break;
                
            case TRANSITION_MODE.FINISHING_UP:
                mode = TRANSITION_MODE.OFF;
                break;
		}
	}
}
