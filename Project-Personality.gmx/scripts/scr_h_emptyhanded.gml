//transform
if (keyboard_check(transform))
    {
    scr_transform_hs();
    }
    
//pick up the flower
if (mouse_check_button_pressed(mb_right) && instance_exists(obj_flower))
    {
    var flw = obj_flower;
    if (point_distance(x+13*sign(image_xscale),y-22,flw.x,flw.y) < 10 && point_distance(mouse_x,mouse_y,flw.x,flw.y-flw.sprite_height/2) < 10)
        {
        state = scr_h_pickup;
        sprite_index = spr_h_pickup
        image_speed = imgs_pickup;
        flw.alarm[0] = 12/image_speed;
        exit;
        }
    }

//walking
scr_h_movement();

//walk or stand sprite
if (abs(x_velocity) < accel)
    {
    sprite_index = spr_h_idle;
    }
else
    {
    if (sprite_index == spr_h_idle) image_index = 0;
    sprite_index = spr_h_walk;
    image_speed = imgs_walk;
    }
    
    




