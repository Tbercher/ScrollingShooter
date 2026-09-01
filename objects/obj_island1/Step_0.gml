// Check if the island has moved completely past the bottom edge
if (y > room_height + sprite_yoffset) {
   
   // Reposition just above the top of the room
    y = 0 -sprite_yoffset;
    
    // Randomize horizontal position within screen bounds
    x = irandom_range(sprite_xoffset, room_width - sprite_xoffset);
}