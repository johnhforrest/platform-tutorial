/// @arg sprite
/// @arg x
/// @arg y
/// @arg angle
/// @arg frames
/// @arg targets
/// @arg attackPower
/// @arg knockback

var sprite_ = argument0;
var x_ = argument1;
var y_ = argument2;
var angle_ = argument3;
var frames_ = argument4;
var targets_ = argument5;
var attackPower_ = argument6;
var knockback_ = argument7;

var hitbox_ = instance_create_layer(x_, y_, "Player", obj_hitbox);
hitbox_.sprite_index = sprite_;
hitbox_.image_angle = angle_;
hitbox_.alarm[0] = frames_;
hitbox_._targets = targets_;
hitbox_._attackPower = attackPower_;
hitbox_._knockbackAmount = knockback_;

return hitbox_;