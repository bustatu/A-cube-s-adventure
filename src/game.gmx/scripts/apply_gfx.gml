///apply_gfx(vsync,aa_level,display_mode)
display_set_gui_size(1920,1080)
switch(argument2){ 
    case 0:{
        ///Native
        surface_resize(application_surface,native_w*rendering_scale,native_h*rendering_scale)
        window_set_size(floor(window_get_width()/16)*16,floor(window_get_height()/9)*9)
        window_set_fullscreen(false)
        break;
    }
    case 1:{
        ///Stretch to fill
        surface_resize(application_surface,display_get_width()*rendering_scale,display_get_height()*rendering_scale)
        window_set_size(display_get_width(),display_get_height())
        window_set_fullscreen(true)
        break;
    }
}
display_reset(argument1,argument0)
window_set_color(background_color)
