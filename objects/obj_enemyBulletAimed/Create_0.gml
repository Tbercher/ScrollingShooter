// Aim towards player if player exists, otherwise shoot directly down (270)
if (instance_exists(obj_player)) {
    direction = point_direction(x, y, obj_player.x, obj_player.y);
} else {
    direction = 270;
}

// Clamp direction within 30 degrees of straight down (240 to 300)
direction = clamp(direction, 240, 300);

// Set speed (do not set hspeed/vspeed)
speed = 6;