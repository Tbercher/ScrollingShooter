//Player Movement
if keyboard_check(vk_left) x-= 4
if keyboard_check(vk_right) x+= 4
if keyboard_check(vk_up) vspeed -= 1
if keyboard_check(vk_down) vspeed += 1

// Slowing down vspeed (vspeed allows for variable speed)

vspeed = clamp(vspeed, -7, layer_get_vspeed("Background"))

// if neither or Up or Down is pressed, slow down

if not keyboard_check(vk_down) and not keyboard_check(vk_up)
vspeed -= sign(vspeed)

// Room Boundaires

// x axis or horizontal
x = clamp(x, sprite_width / 2, room_width-sprite_width / 2)

// y axis or vertical
y = clamp(y, sprite_height / 2, room_height - sprite_height / 2)

// Fire bullet when holding Space and shooting is allowed
if (keyboard_check(vk_space) && canShoot) {
    instance_create_layer(x, y, "Instances", obj_playerBullet);
    canShoot = false;

    // Set cooldown alarm to shoot ~2 times per second
    alarm[0] = game_get_speed(gamespeed_fps) / 2;
}