///endless_hit() - hit in endless mode

if(!(obj_ultimatecontroller.uselected==2&&obj_ultimatecontroller.uactive)){
    if(room==r_endless){
        obj_endlesscontroller.live--
    }
    else {obj_othercontroller.time_passed=floor(obj_othercontroller.time_passed)-1}
    obj_plr.hurt=0.3
    play_sound_id(2,false)
    obj_statscontroller.stats_val[2]++
}

