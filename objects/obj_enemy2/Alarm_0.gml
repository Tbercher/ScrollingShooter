// Spawn the bullet configured in Variable Definitions
instance_create_layer(x, y, "Instances", shotType);

// Loop the shooting timer
alarm[0] = shotInterval;