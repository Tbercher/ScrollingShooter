// Health bar
if (instance_exists(obj_player)) {
    draw_healthbar(16, 16, 144, 32, obj_player.hp, c_black, c_red, c_lime, 0, true, true);
}

// Score display
draw_text(16, 64, "Score: " + string(points));