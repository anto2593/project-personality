//walking
switch (arrow)
    {
    case "right":
        if (x_velocity < max_spd) x_velocity = clamp(x_velocity+accel, x_velocity, max_spd);
        image_xscale = 1;
        break;
        
    case "left":
        if (-max_spd < x_velocity) x_velocity = clamp(x_velocity-accel, -max_spd, x_velocity);
        image_xscale = -1;
        break;
        
    case "neither":
        x_velocity = x_velocity*ground_friction
        break;
    }
