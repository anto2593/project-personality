///Walk state

//Transition to other states 
if (arrow = "neither") {
    scr_set_s_idle();
}
if (keyboard_check_pressed(jump)) {
    scr_s_jump();
}
if (abs(y_velocity) > grav) {
    scr_set_s_falling();
}

scr_s_movement(true);
