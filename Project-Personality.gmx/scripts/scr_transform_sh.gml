//turn into a transformation object, then human
var new_me = instance_create(x, y, obj_transforming);
new_me.image_xscale = image_xscale;

if instance_exists(grappling) instance_destroy(grappling);
instance_destroy();
