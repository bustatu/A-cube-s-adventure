///draw_app_surface() - redraws application surface depending on settings
w_w=surface_get_width(application_surface)/rendering_scale
w_h=surface_get_height(application_surface)/rendering_scale
switch(display_mode){ 
    case 0:{
        ///Native
        if(os_type==os_windows){
            draw_surface_stretched(application_surface,0,0,window_get_width(),window_get_height())
        }
        else {
            draw_surface_stretched(application_surface,(display_get_width()-w_w)/2,0,w_w,w_h)
        } 
        break;
    }
    case 1:{
        ///Stretch to fill
        draw_surface_stretched(application_surface,0,0,w_w,w_h)
        break;
    }
}
