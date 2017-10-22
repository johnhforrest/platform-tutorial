/// @description Collision with enemy

_hitPoints -= other._attackPower;
_horizontalSpeed = other.image_xscale * 8;
image_index = 1;
_state = STATES.HIT;

with (other)
{
    _horizontalSpeed = image_xscale * -8;
    _state = ENEMY_STATES.HIT;
}