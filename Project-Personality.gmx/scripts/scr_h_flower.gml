

show_debug_message("helo?")
//put down the flower
if (mouse_check_button_pressed(mb_right) && instance_exists(obj_flower_spot))
    {
    var spot = instance_position(mouse_x, mouse_y, obj_flower_spot);
    show_debug_message("lol?");
    if instance_exists(spot)
        {
        show_debug_message("lol")
        if (point_distance(x,y,spot.x,spot.y) < 10)
            {
            sprite_index = spr_h_putdown
            image_speed = imgs_pickup
            spot.alarm[0] = 3/image_speed;
            exit;
            }
        }
    }

//walking
scr_h_movement();

//walk or stand sprite
if (abs(x_velocity) < accel)
    {
    sprite_index = spr_h_fidle;
    }
else
    {
    if (sprite_index == spr_h_idle) image_index = 0;
    sprite_index = spr_h_fwalk;
    image_speed = imgs_walk;
    }
    
    



