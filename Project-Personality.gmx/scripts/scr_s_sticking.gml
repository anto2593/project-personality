///sticking to a wall
//determine if pushing off or in or not
var pushing_off; var pushing_in;
if (arrow == "neither")
    {
    pushing_off = false;
    pushing_in = false;
    }
else
    {
    pushing_off = ((image_xscale==1 && arrow=="left") || (image_xscale==-1 && arrow=="right"));
    pushing_in = !pushing_off;
    }

//drop
if (keyboard_check_pressed(down) && !pushing_in)
    {
    if (pushing_off) x_velocity = -image_xscale*max_spd
    scr_set_s_falling();
    image_xscale = -image_xscale;
    exit;
    }

//jump
if (keyboard_check_pressed(jump) && !pushing_in)
    {
    if (pushing_off) x_velocity = -image_xscale*max_spd
    scr_s_jump();
    image_xscale = -image_xscale;
    exit;
    }

//gravitate towards idle image
if (floor(image_index) >= 2)
    {
    if (pushing_off) image_speed = imgs_sticking;
    else
        {
        if (floor(image_index) = 2) image_speed = 0;
        else image_speed = -imgs_sticking;
        }
    }
    
//stick firmly
x_velocity = 0;
y_velocity = 0;

