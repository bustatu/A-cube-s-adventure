///play_sound_id(id,loop) - plays sound with specified id
if(argument0!=-1){
    if(obj_soundmanager.musicdisabled&&(argument0>7)){}
    else  {
        with(obj_soundmanager){
            if(playing[argument0]==-1){playing[argument0]=audio_play_sound(sounds[argument0],1,argument1)}
            else {stop_sound_id(argument0);play_sound_id(argument0,argument1)}   
        }
    }
}

