//Collision

//create the "extended" coordinates (next frames coordinates, rounded in the direction of movement)
var ext_x = round(x+x_velocity+sign(x_velocity)/2)
var ext_y = round(y+y_velocity+sign(y_velocity)/2)


if (place_meeting(ext_x, ext_y, obj_wall)) {
    //x-axis
    if (place_meeting(ext_x, y, obj_wall)) {
        //slide against wall
        if (state = scr_s_falling) {
            scr_set_s_sticking();
        }
        x_velocity = round(x_velocity);
        x = round(x);
        for (var i = -sign(x_velocity); place_meeting(x+x_velocity, y, obj_wall); x_velocity += i){}
        x += x_velocity;
        ext_x = x;
        x_velocity = 0;
    }
    //y-axis
    if (place_meeting(x, ext_y, obj_wall)) {
        //land if falling
        if ((state = scr_s_falling) && (y_velocity > 0)) {
            scr_set_s_landing();
        }
        y_velocity = round(y_velocity);
        y = round(y);
        for (var i = -sign(y_velocity); place_meeting(x, y+y_velocity, obj_wall); y_velocity += i){}
        y += y_velocity;
        ext_y = y;
        y_velocity = 0;
    }
    
    //Both at once (if everything else fails... 0.0)
    if (place_meeting(ext_x, ext_y, obj_wall)) {
        var ang = -degtorad(point_direction(0, 0, x_velocity, y_velocity));
        var dy = sin(ang);
        var dx = cos(ang);
        while (place_meeting(round(x+x_velocity), round(y+y_velocity), obj_wall)) {
            x_velocity -= dx;
            y_velocity -= dy;
        }
        x = round(x+x_velocity);
        y = round(y+y_velocity);
        x_velocity = 0;
        y_velocity = 0;
    }
}
