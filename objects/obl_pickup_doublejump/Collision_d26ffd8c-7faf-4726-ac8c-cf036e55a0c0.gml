/// @description Grants the player the ability to double jump

if (!_pickedUp)
{
    _pickedUp = true;
    
    with (other)
    {
        _hasControl = false;
        _abilityLevel = PLAYER_ABILITIES.DOUBLEJUMP;
    }

    alarm[0] = _pickupLength;
}