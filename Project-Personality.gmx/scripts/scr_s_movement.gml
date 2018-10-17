///scr_s_movement(on the ground?)

if argument0 var cap = max_spd;
else var cap = max_spd_air;

switch (arrow)
    {
    case "right":
        if (x_velocity < cap) x_velocity = clamp(x_velocity+accel, x_velocity, cap);
        image_xscale = 1;
        break;
        
    case "left":
        if (-cap < x_velocity) x_velocity = clamp(x_velocity-accel, -cap, x_velocity);
        image_xscale = -1;
        break;
        
    case "neither":
        if argument0 x_velocity = x_velocity*ground_friction
        else x_velocity = x_velocity*air_friction
        break;
    }


