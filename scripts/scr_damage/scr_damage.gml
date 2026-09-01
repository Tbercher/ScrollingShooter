function inflict_damage(damage) {
    if (instance_exists(obj_player)) {
        obj_player.hp -= damage;

        if (obj_player.hp <= 0) {
            instance_destroy(obj_player);
        }
    }
}