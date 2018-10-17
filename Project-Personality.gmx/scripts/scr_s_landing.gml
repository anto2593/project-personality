///Landing state

scr_s_movement(true);

//Jump
if (keyboard_check_pressed(jump)) {
    scr_s_jump();
}
//Fall
if (abs(y_velocity) > grav) {
    scr_set_s_falling();
}

