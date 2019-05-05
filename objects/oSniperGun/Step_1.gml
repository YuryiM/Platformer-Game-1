x = oPlayer.x;
y = oPlayer.y + 10;

image_angle = point_direction(x, y, mouse_x, mouse_y);

firingdelay--;
recoil = max(0, recoil - 1);

if(mouse_check_button(mb_left)) && (firingdelay < 0){
	recoil = realRecoil;
	firingdelay = rateOfFire;
	audio_play_sound(snCannonFire, 5, false);
	with(instance_create_layer(x, y, "Bullets", oSniperBullet)){
		speed = 40;
		direction = other.image_angle + random_range(-other.spread, other.spread);
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);
if(image_angle > 90) && (image_angle < 270){
	image_yscale = -1;
}
else{
	image_yscale = 1;
}
