with(other){
	hp -= other.dmg;
	flash = 3;
	hitfrom = other.direction;
}

instance_destroy();