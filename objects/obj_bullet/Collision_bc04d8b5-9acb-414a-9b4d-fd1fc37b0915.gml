/// @description Insert description here
// You can write your code in this editor

score += 10;

audio_play_sound(snd_die, 1, false);

instance_destroy();

with(other) {
	instance_destroy();
	
	if(sprite_index == spr_asteroid_lg) {
		repeat(2) {
			var new_asteroid = instance_create_layer(x,y, "Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_md;
		}
	} else if(sprite_index == spr_asteroid_md) {
		repeat(2) {
			var new_asteroid = instance_create_layer(x,y, "Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_sm;
		}
	}
	
	repeat(10){
		instance_create_layer(x,y, "Instances", obj_debris);
	}
}