///Landing state

scr_s_movement(true);

//Jump
if (keyboard_check_pressed(jump)) {
    scr_s_jump();
}
//Fall
if (abs(y_velocity) > grav) {
    show_debug_message(y_velocity)
    scr_set_s_falling();
}

