/// @description Default state

if (obj_input._horizontalSum != 0 || obj_input._verticalSum != 0) {
    _directionFacing = round(point_direction(0, 0, obj_input._horizontalSum, -obj_input._verticalSum) / 90) % 4;
} else if (obj_input._verticalSum == 0 && _directionFacing == 1) {
    _directionFacing = _directionFacing - sign(image_xscale);
} else if (obj_input._verticalSum == 0 && _directionFacing == 3) {
    _directionFacing = (_directionFacing + sign(image_xscale)) % 4;
}

// Calculating horizontal movement
if (obj_input._horizontalSum != 0) {
    var targetSpeed_ = obj_input._horizontalSum * _walkSpeed;
    _horizontalSpeed = approach(_horizontalSpeed, targetSpeed_, _acceleration);
    _horizontalSpeed = clamp(_horizontalSpeed, -_maxHorizontalSpeed, _maxHorizontalSpeed);
} else {
    _horizontalSpeed = approach(_horizontalSpeed, 0, _friction);
}
   
// Calculating vertical movement
var key_jump = obj_input._jumpPressed;

if (obj_game._abilities[ABILITIES.DOUBLEJUMP] == 1 && key_jump) {
	jump();
	obj_game._abilities[ABILITIES.DOUBLEJUMP] = 0;
}

var is_on_ground = set_is_on_ground(true);
if (is_on_ground) {
    _wallSliding = false;
    reset_movement_abilities();
    
    if (key_jump) {
        jump();
    }
} else {
    if (_wallSliding) {
        _verticalSpeed = _wallSlideSpeed;
        _timer = false;
        reset_movement_abilities();
    }
    
    if (next_to_wall()) {
        if (key_jump) {
            wall_jump();
            _wallSliding = false;
        }
    } else {
        _wallSliding = false;
    }
}

// Stop increasing jump height if button is let go
// This allows for precise platforming
if (_verticalSpeed < 0 && !obj_input._jumpHeld) {
    _verticalSpeed = max(_verticalSpeed, 0);
}

// Move horizontally
x += _horizontalSpeed;
if (_horizontalSpeed > 0) {
    if (tilemap_get_at_pixel(_tileMap, bbox_right, bbox_top) != 0 || tilemap_get_at_pixel(_tileMap, bbox_right, bbox_bottom) != 0) {
        snap_to_hgrid(true);
    
        _horizontalSpeed = 0;
        
        if (!is_on_ground && _verticalSpeed >= 0) {
            _wallSliding = true;
        }
    }
} else if (_horizontalSpeed < 0) {
    if (tilemap_get_at_pixel(_tileMap, bbox_left, bbox_top) != 0 || tilemap_get_at_pixel(_tileMap, bbox_left, bbox_bottom) != 0) {
        snap_to_hgrid(false);
    
        _horizontalSpeed = 0;
        
        if (!is_on_ground && _verticalSpeed >= 0) {
            _wallSliding = true;
        }
    }
}

move_vertically(0, true);
set_sprite_scale();

// Transition to dash state
if (obj_game._abilities[ABILITIES.DASH] == 1 && obj_input._dashPressed) {
    _xScale = image_xscale;
    _horizontalSpeed = sign(image_xscale) * _walkSpeed * 3;
    _verticalSpeed = 0;
    obj_game._abilities[ABILITIES.DASH] = _dashLength;
    _state = PLAYER_STATES.DASHING;
}

// Creating dust effect when moving
/*
if ((abs(_horizontalSpeed) > 0 || abs(_verticalSpeed) > 0) && alarm[1] <= 0)
{
    alarm[1] = 3;
}
*/

// Calculate attack
if (_cooldown == 0) {
    if (obj_input._attackPressed) {
        global.debug_num_attacks++;
        //show_debug_message("num attacks: " + string(global.debug_num_attacks));

        audio_sound_pitch(sound_swipe, random_range(0.8, 1.2));
        audio_play_sound(sound_swipe, 1, false);
        image_speed = 0.8;
        _cooldown = _cooldownReset;
        _xScale = image_xscale;
        _yScale = image_yscale;
        _state = PLAYER_STATES.ATTACK;
    }
} else {
    _cooldown--;
}