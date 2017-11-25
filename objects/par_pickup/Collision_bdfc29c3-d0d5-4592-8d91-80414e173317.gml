/// @description Grants the player the ability to double jump

if (!_pickedUp) {
    with (other) {
        if (other._abilityIndex > 0) {
            obj_game._abilities[other._abilityIndex] = 1;
        } else {
            _maxHitPoints++;
            _hitPoints = _maxHitPoints;
        }
        
        alarm[2] = other._pickupLength;
        _state = PLAYER_STATES.FROZEN;
        obj_game._pickups[? other.id] = true;
    }

    _pickedUp = true;
    alarm[0] = _pickupLength;
}