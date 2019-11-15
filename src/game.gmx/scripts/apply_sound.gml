///apply_sound(is_disabled)
if(instance_exists(obj_soundmanager)&&argument0){
    with(obj_soundmanager){instance_destroy()}
}
else if(!instance_exists(obj_soundmanager)&&!argument0){
    instance_create(0,0,obj_soundmanager)
}
