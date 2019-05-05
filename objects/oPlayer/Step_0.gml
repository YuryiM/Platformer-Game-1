

if(has_control){
	//Get player input
	key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	key_jump = keyboard_check_pressed(ord("W")) || keyboard_check(vk_space);
}
else {
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}
//Calculate movement
var move = key_right - key_left;

hsp = move * walksp;
vsp += grv;

canjump -= 1;
if(canjump > 0) && (key_jump){
	vsp = -7;
	canjump = 0;
}

//Horizontal collison
if(place_meeting(x+hsp, y, oWall)){
	while(!place_meeting(x+sign(hsp), y, oWall)){
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

//Vertical collision
if(place_meeting(x, y+vsp, oWall)){
	while(!place_meeting(x, y+sign(vsp), oWall)){
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

//Animation
if (!place_meeting(x, y+1, oWall)){
	sprite_index = sPlayerA;
	image_speed = 0;
	if(sign(vsp) > 0) image_index = 1; 
	else image_index = 0;
}
else {
	canjump = 10;
	if (sprite_index == sPlayerA){
		audio_sound_pitch(snLanding, choose(0.9, 1, 1.1, 1.25));
		audio_play_sound(snLanding, 4, false);
	} 
	image_speed = 1;
	if(hsp == 0){
		sprite_index = sPlayer;
	}
	else{
		sprite_index = sPlayerR;
	}
}

if(hsp != 0) image_xscale = sign(hsp);
