if (_verticalSpeed > obj_game._groundShakeTheshold)
{
    audio_play_sound(sound_boom, 1, false);
    shake_screen(6, 60);
    
    _xScale *= 2;
    _yScale *= .5;
    _tempY = y + 10;
    
    effect_create_below(ef_smoke, bbox_left - 8, bbox_bottom, 1, c_ltgray);
    effect_create_below(ef_smoke, x, bbox_bottom, 1, c_ltgray);
    effect_create_below(ef_smoke, bbox_right + 8, bbox_bottom, 1, c_ltgray);
    
    alarm[0] = game_get_speed(gamespeed_fps);
    _state = PLAYER_STATES.SLAM;
}
else if (_verticalSpeed > 2)
{
    _xScale *= 1.5;
    _yScale *= .8;
}