
hp -= other.dmg;
flash = 3;
hitfrom = other.direction;

with(other){
	instance_destroy();
}
