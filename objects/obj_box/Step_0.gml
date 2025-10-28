if (isCarried) {
   //pegar caixa
    x = carrier.x;
    y = carrier.y - 32;
    velv = 0;
} 
else {
	//gravidade
    velv += grav;
    if (place_meeting(x, y + velv, oWall)) {
        while (!place_meeting(x, y + sign(velv), oWall)) {
            y += sign(velv);
        }
        velv = 0; 
    } 
    else {
        y += velv;
    }
} 
