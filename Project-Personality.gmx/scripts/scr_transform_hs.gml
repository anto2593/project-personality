//turn into a transformation object, then slime
var new_me = instance_create(x, y, obj_transforming);
new_me.image_xscale = image_xscale;

new_me.image_speed = -new_me.image_speed;
new_me.image_index = new_me.image_number-1;

instance_destroy();
