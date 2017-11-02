/// @description Clean up dynamic memory

ds_map_destroy(_pickups);
part_system_destroy(_particleSystem);
part_type_destroy(_dustParticle);

show_debug_message("Cleaned up obj_game");