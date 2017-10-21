/// @description Destroys the instances and gives the player control back

with (obj_player)
{
    _hasControl = true;
}

instance_destroy();