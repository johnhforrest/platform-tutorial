/// @description Grants the player the ability to double jump

if (!_pickedUp)
{
    _pickedUp = true;
    
    with (other)
    {
        _state = STATES.FROZEN;
        
        if (other._abilityIndex > 0)
        {
            _abilities[other._abilityIndex] = 1;
        }
        else
        {
            _maxHitPoints++;
            _hitPoints = _maxHitPoints;
        }
    }

    alarm[0] = _pickupLength;
}