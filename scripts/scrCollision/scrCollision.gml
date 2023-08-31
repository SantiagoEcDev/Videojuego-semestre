function scrCollision() {
    var canPassUnder = !collision_rectangle(x-8, y+1, x+8, y+1+vspeed, objBlock, false, false);

    if (!collision_rectangle(x-8, y, x+8, y+1, objBlock, false, false) || vspeed != 0) {
        gravity = 0.3;
        sprite_index = sprPlayerJump;
    }

    if (vspeed > 0) {
        var ground = collision_rectangle(x-8, y, x+8, y+vspeed, objBlock, false, false);
        if (ground) {
            y = ground.y;
            vspeed = 0;
            gravity = 0;
        }
    } else if (vspeed < 0 && !canPassUnder) {
        var ceiling = collision_rectangle(x-8, y-57, x+8, y-57+vspeed, objBlock, false, false);
        if (ceiling) {
            y = ceiling.y + ceiling.sprite_height + 57;
            vspeed = 0;
        }
    }
}
