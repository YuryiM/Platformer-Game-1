if(hasWeapon){
	mygun = instance_create_layer(x, y, "Gun", oEnemyBigGun);
	with(mygun){
		owner=other.id;
	}
}
else mygun = noone;