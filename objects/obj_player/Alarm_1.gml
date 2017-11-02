/// @description Triggering dust effect

var xVal = image_xscale > 0 ? bbox_left : bbox_right;
//effect_create_below(ef_smoke, xVal, bbox_bottom, 0, c_ltgray);

part_particles_create(obj_game._particleSystem, xVal, bbox_bottom, obj_game._dustParticle, 1);