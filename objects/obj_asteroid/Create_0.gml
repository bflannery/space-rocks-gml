/// @description Insert description here
// You can write your code in this editor

sprite_index = choose(
	spr_asteroid_sm, spr_asteroid_md, spr_asteroid_lg
);

direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);

speed = 1;