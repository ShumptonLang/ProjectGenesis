/// @description Shot timer

for (var i = 0; i < bullets_per_shot; i++) {
	var bullet = instance_create_depth(create_pos_x, create_pos_y, depth - 1, bullet_create)
	switch (shot_type) {
		case target.radial :
			bullet.dir = (360 / bullets_per_shot) * i + create_rot_offset
		break
		
		case target.directional :
			var cur_pos = i - bullets_per_shot / 2 + 0.5
			bullet.dir = shot_dir - (cur_pos * (shot_spread * 2 / bullets_per_shot))		
		break
		
		case target.player :
			var cur_pos = i - bullets_per_shot / 2 + 0.5
			if instance_exists(obj_player)
				bullet.dir = point_direction(x, y, obj_player.x, obj_player.y) - (cur_pos * (shot_spread * 2 / bullets_per_shot))
		break 
		
		case target.rand :
			bullet.dir = random_range(0, 359)
		break
	}
	bullet.spd = bullet_speed
	bullet.dir += random_range(-shot_spread_rand, shot_spread_rand) 
	if bullet_face_dir
		bullet.image_angle = bullet.dir
		
}

if shot_count > 0 {
	
	shot_count--
	alarm[0] = shot_delay
	
} else {
	alarm[1] = burst_delay	
}