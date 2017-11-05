if (_verticalSpeed > obj_game._groundShakeTheshold)
{
    audio_play_sound(sound_boom, 1, false);
    shake_screen(6, 60);
    
    _xScale *= 2;
    _yScale *= .5;
    _tempY = y + 10;
    
    alarm[0] = game_get_speed(gamespeed_fps);
    _state = STATES.SLAM;
}