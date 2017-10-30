/// @function is_player_nearby
/// @param {number} offset
/// @returns {boolean} Whether or the player is nearby

var offset = argument0;

if (!instance_exists(obj_player))
{
    return false;
}

return point_in_rectangle(obj_player.x, obj_player.y, x - offset, y - offset, x + offset, y + offset);