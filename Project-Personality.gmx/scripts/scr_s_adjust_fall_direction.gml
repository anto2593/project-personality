///scr_s_adjust_fall_direction();

var angle = point_direction(0, 0, x_velocity, y_velocity);
var temp = abs(angle-180)

//straight up/down or diagonal
if (45 < temp && temp < 135) sprite_index = spr_s_falling;
else sprite_index = spr_s_falling_side;


//face up/down
if (angle < 180) {
    image_index = 0;
} else if (angle > 180) {
    image_index = image_number-1;
}

