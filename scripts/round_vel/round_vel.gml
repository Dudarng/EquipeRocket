///@func round_vel()
///@desc Round the xvel/yvel while keeping track of fractions
function round_vel() {

	xvel_fract += xvel;
	xvel_int    = floor(xvel_fract);
	xvel_fract -= xvel_int;

	yvel_fract += yvel;
	yvel_int    = floor(yvel_fract);
	yvel_fract -= yvel_int;



}
