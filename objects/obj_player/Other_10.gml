/// @description Default state

if (obj_input._horizontalSum != 0 || obj_input._verticalSum != 0)
{
    _directionFacing = round(point_direction(0, 0, obj_input._horizontalSum, -obj_input._verticalSum) / 90) % 4;
}

// Calculating horizontal movement
if (obj_input._horizontalSum != 0)
{
    _horizontalSpeed = obj_input._horizontalSum * _walkSpeed * _acceleration;
    _horizontalSpeed = clamp(_horizontalSpeed, -_maxHorizontalSpeed, _maxHorizontalSpeed);
}
else
{
    _horizontalSpeed = lerp(_horizontalSpeed, 0, _friction);
}
   
// Calculating vertical movement
var key_jump = obj_input._jumpPressed;

if (obj_game._abilities[ABILITIES.DOUBLEJUMP] == 1 && key_jump)
{
	jump();
	obj_game._abilities[ABILITIES.DOUBLEJUMP] = 0;
}

if (set_is_on_ground())
{
    // We are on the ground, reset jump state
    if (obj_game._abilities[ABILITIES.DOUBLEJUMP] != -1)
    {
    	obj_game._abilities[ABILITIES.DOUBLEJUMP] = 1;
    }
    
    // We are on the ground, reset dash state
    if (obj_game._abilities[ABILITIES.DASH] != -1)
    {
        obj_game._abilities[ABILITIES.DASH] = 1;
    }
    
    if (key_jump)
    {
        jump();
    }
}

// Stop increasing jump height if button is let go
// This allows for precise platforming
if (_verticalSpeed < 0 && !obj_input._jumpHeld)
{
    _verticalSpeed = max(_verticalSpeed, _jumpHeight / 4);
}

move_horizontally();
move_vertically();
set_sprite_scale();

// Transition to dash state
if (obj_game._abilities[ABILITIES.DASH] == 1 && obj_input._dashPressed)
{
    _xScale = image_xscale;
    _horizontalSpeed = sign(image_xscale) * _walkSpeed * 3;
    _verticalSpeed = 0;
    obj_game._abilities[ABILITIES.DASH] = _dashLength;
    _state = STATES.DASHING;
}

// Creating dust effect when moving
if ((abs(_horizontalSpeed) > 0 || abs(_verticalSpeed) > 0) && alarm[1] <= 0)
{
    alarm[1] = 3;
}

// Calculate attack
if (_cooldown == 0)
{
    if (obj_input._attackPressed)
    {
        global.debug_num_attacks++;
        //show_debug_message("num attacks: " + string(global.debug_num_attacks));
        
        with (instance_create_layer(x, y, "Player", obj_attack))
        {
            var offset = TILE_SIZE * 1.5;
            if (obj_input._verticalSum > 0)
            {
                y -= offset;
                image_angle = 90;
                _direction = 90;
            }
            else if (obj_input._verticalSum < 0)
            {
                y += offset;
                image_angle = 270;
                _direction = 270;
            }
            else
            {
                 x += (offset * other.image_xscale)
                _direction = point_direction(other.x, other.y, x, y);
            }
        }
        
        audio_sound_pitch(sound_swipe, random_range(0.8, 1.2));
        audio_play_sound(sound_swipe, 1, false);
        image_speed = 0.8;
        _cooldown = _cooldownReset;
        _state = STATES.ATTACK;
    }
}
else
{
    _cooldown--;
}