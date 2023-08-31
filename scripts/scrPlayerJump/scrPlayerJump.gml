function scrPlayerJump() {
    if (keyboard_check_pressed(vk_space) && collision_rectangle(x-8, y, x+8, y+1, objBlock, false, false)) {
        vspeed = -7;
    }
	
	//JumpAndShoot
	
}
