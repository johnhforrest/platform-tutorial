/// @description Animating the transition

if (_mode != TRANSITION_MODE.OFF)
{
    /*
	if (_mode == TRANSITION_MODE.INTRO)
	{
		_percent = max(0, _percent - max((_percent / 10), 0.005));
	}
	else
	{
		_percent = min(_targetPercent, _percent + max(((_targetPercent - _percent) / 10), 0.005));
	}
    */
	
	//if (_percent == _targetPercent || _percent == 0)
	//{
		switch (_mode)
		{
			case TRANSITION_MODE.NEXT:
                _mode = TRANSITION_MODE.INTRO
                
                var nextRoom = room_next(room);
                nextRoom = room_exists(nextRoom) ? nextRoom : room_one;                
                
                obj_game._targetMarker = 0;
                room_goto(nextRoom);
				break;
			
			case TRANSITION_MODE.GOTO:
                _mode = TRANSITION_MODE.INTRO;
                
                if (obj_game._targetMarker < 0)
                {
                    obj_game._targetMarker = 0;
                }
                
                room_goto(_target);
				break;
			
			case TRANSITION_MODE.RESTART:
                game_restart();
				break;
			
			case TRANSITION_MODE.INTRO:
                _mode = TRANSITION_MODE.OFF;
				break;
                
            case TRANSITION_MODE.FINISHING_UP:
                _mode = TRANSITION_MODE.OFF;
                break;
		}
	//}
}
