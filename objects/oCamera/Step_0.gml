/// @description Update camera
//Update destination
if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
	
	if((follow).object_index == oPlayerDead){
		x = xTo;
		y = yTo;
	}
}

//Update object position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x, view_w_half, room_width - view_w_half)
y = clamp(y, view_h_half, room_height - view_h_half)
//Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

if (layer_exists("Backgrounds_1")){
	layer_x("Backgrounds_1", x/3);
}
if (layer_exists("Backgrounds_2")){
	layer_x("Backgrounds_2", x/3);
}
if (layer_exists("Backgrounds_3")){
	layer_x("Backgrounds_3", x/4);
}
if (layer_exists("Backgrounds_4")){
	layer_x("Backgrounds_4", x/5);
}
if (layer_exists("Backgrounds_5")){
	layer_x("Backgrounds_5", x/6);
}
if (layer_exists("Backgrounds_6")){
	layer_x("Backgrounds_6", x/7);
}
