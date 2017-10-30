/// @function is_player_on_ground
/// @returns {boolean} Whether or not the player is on the ground

if (!instance_exists(obj_player))
{
    return false;
}

return obj_player._verticalSpeed == 0;