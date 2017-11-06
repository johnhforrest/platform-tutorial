/// @description Triggering dust effect when moving

var xVal = image_xscale > 0 ? bbox_left : bbox_right;

part_particles_create(obj_game._particleSystem, xVal, bbox_bottom, obj_game._dustParticle, 1);