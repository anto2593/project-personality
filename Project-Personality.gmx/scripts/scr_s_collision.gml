//Collision
if (place_meeting(x+x_velocity, y+y_velocity, obj_wall)) {
    
    //x-axis
    if (place_meeting(x+x_velocity, y, obj_wall)) {
        //slide against wall
        if (state = scr_s_falling) {
            scr_set_s_sticking();
        }
        for (var i = -sign(x_velocity); place_meeting(x+x_velocity, y, obj_wall); x_velocity += i){}
        x += x_velocity;
        x_velocity = 0;
    }
    //y-axis
    if (place_meeting(x, y+y_velocity, obj_wall)) {
        if ((state = scr_s_falling) && (y_velocity > 0)) {
            //land if falling
            scr_set_s_landing();
        }
        for (var i = -sign(y_velocity); place_meeting(x, y+y_velocity, obj_wall); y_velocity += i){}
        y += y_velocity;
        y_velocity = 0;
    }
    
    //Both at once (if everything else fails... 0.0)
    if (place_meeting(x+x_velocity, y+y_velocity, obj_wall)) {
        var ang = -degtorad(point_direction(0, 0, x_velocity, y_velocity));
        var dy = sin(ang);
        var dx = cos(ang);
        while (place_meeting(x+x_velocity, y+y_velocity, obj_wall)) {
            x_velocity -= dx;
            y_velocity -= dy;
        }
        x = round(x+x_velocity);
        y = round(y+y_velocity);
        x_velocity = 0;
        y_velocity = 0;
    }
}
