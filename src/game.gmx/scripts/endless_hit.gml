///endless_hit(sound_id) - hit in endless mode

if(!(obj_ultimatecontroller.uselected==2&&obj_ultimatecontroller.uactive)){
    if(room==r_endless){
        obj_endlesscontroller.live--
    }
    else {obj_othercontroller.time_passed=floor(obj_othercontroller.time_passed)-1}
    obj_plr.hurt=0.3
    
    ///Play sound
    if(argument0>0){
        play_sound_id(argument0,false)
    }
    
    obj_statscontroller.stats_val[2]++
}

