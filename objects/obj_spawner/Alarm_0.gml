// Spawn the designated object at a default location (the script inside the spawned object repositions it)
instance_create_layer(0, 0, "Instances", objectType);

// Reset the spawn loop
alarm[0] = spawnInterval;