/// @description Grants the player the ability to double jump

if (!_pickedUp)
{
    _pickedUp = true;
    
    with (other)
    {
        _hasControl = false;
        _abilities[other._abilityIndex] = 1;
    }

    alarm[0] = _pickupLength;
}