///get_active_ult() - gets current active ultimate
if(obj_ultimatecontroller.uselected==-1||obj_ultimatecontroller.uactive==false){
    return -1
}
else return obj_ultimatecontroller.uselected
