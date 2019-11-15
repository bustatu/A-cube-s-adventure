///load_custom_player() - loads custom player file
if(file_exists("custom_skin.png")){
    sprite_replace(spr_plr,"custom_skin.png",1,false,false,16,16)
}

asurface=surface_create(32,32)
draw_set_color(c_white)
surface_set_target(asurface)
shader_set(sh_solid_color)
shader_params_1=shader_get_uniform(sh_solid_color,"v_bColour")
shader_set_uniform_f(shader_params_1,1.0,1.0,1.0,1.0)
draw_sprite(spr_plr,0,16,16)
shader_reset()
draw_set_alpha(1)
surface_save(asurface,"custom_trail.png")
if(file_exists("custom_trail.png")){
    sprite_replace(spr_trail,"custom_trail.png",1,false,false,16,16)
}
surface_reset_target()

