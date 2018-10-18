///Walk state

scr_s_movement(true);

//Transition to other states 
if (arrow = "neither")
   {
   scr_set_s_idle();
   }
if (keyboard_check_pressed(jump))
   {
   scr_s_jump();
   }
if (abs(y_velocity) > global.grav)
   {
   scr_set_s_falling();
   }
if keyboard_check(transform)
   {
   scr_transform_sh();
   }

