with(other){
	if(oPlayer.gunInstanceId != "NULL"){
		gunInstanceId.rateOfFire = gunInstanceId.rateOfFire/2;
		alarm[0] = 60 * other.secDuration;
	}
	instance_destroy();
}

