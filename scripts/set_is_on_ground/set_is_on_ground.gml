/// @description Resets gravity timer and vertical speed if the object is on the ground
/// @returns {boolean} Whether or not the object is on the ground

if (tile_vcollision(_tileMap, 1))
{
    _verticalSpeed = 0;
    _timer = false;
    
    return true;
}

return false;