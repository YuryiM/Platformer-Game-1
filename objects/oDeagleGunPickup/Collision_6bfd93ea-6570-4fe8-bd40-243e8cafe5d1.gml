/// @description Equip gun
if(canPickUp){
	with(other){
		//Checks if player has a gun, "NULL" means they have no gun
		if(gunInstanceId != "NULL"){
			instance_destroy(gunInstanceId);
			var objName = asset_get_index(pickupName)
			instance_create_layer(oPlayer.x, oPlayer.y, "Gun", objName);
		}
	}

	instance_create_layer(oPlayer.x, oPlayer.y, "Gun", oDeagleGun);
	instance_destroy();
}