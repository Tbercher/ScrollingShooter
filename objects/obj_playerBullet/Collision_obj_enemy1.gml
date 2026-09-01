// Award score points
obj_scoreboard.points += other.scoreValue;

// Destroy the enemy hit by this bullet
instance_destroy(other);

// Destroy the bullet itself
instance_destroy();