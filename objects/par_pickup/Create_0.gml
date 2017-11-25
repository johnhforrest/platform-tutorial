/// @description Creates the pickup

if (!ds_map_exists(obj_game._pickups, id)) {
    obj_game._pickups[? id] = false;
}

if (!obj_game._pickups[? id]) {
    _pickedUp = false;
    _pickupLength = 40;

    // For abilities, this should be set in the instance creation code
    // For heart pickups, leave these as is
    _abilityIndex = 0;
} else {
    instance_destroy();
}