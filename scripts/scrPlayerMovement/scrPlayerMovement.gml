// En el mismo objeto objPlayer, fuera de cualquier evento
function scrPlayerShoot(){
    rateFire -= 1;
    
	var hor = keyboard_check(vk_right) - keyboard_check(vk_left);

	if (hor != 0){
		if (place_free(x + hor * 2, y)){
	x += hor * 3;
	}
	image_xscale = hor;
	sprite_index = sprPlayerRun;
	}else{
		sprite_index = sprPlayerIdle;
	}
	
	
	//Shoot
    if (keyboard_check(ord("F")) && rateFire <= 0){
        if (!shooting) {
            shooting = true;
       }
        
        var bullet = instance_create_layer(x + 46 * image_xscale, y - 37, "Instances", objBullet);
        bullet.image_xscale = image_xscale;
        bullet.hspeed *= image_xscale;
        
        rateFire = 10;
    }
    
    if (!keyboard_check(ord("F"))) {
        shooting = false;
    }
	if (shooting) {
    sprite_index = sprPlayerShoot; // Cambia al sprite de disparo
}
	//Shoot and run
	if((hor !=0) && (shooting)){
		sprite_index = sprPlayerRunningShooting;
}
}


