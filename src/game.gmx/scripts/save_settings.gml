///save_settings() - saves all settings
ini_open("settings.ini")
ini_write_real("settings","skin_r",obj_gamemanager.skin_r)
ini_write_real("settings","skin_g",obj_gamemanager.skin_g)
ini_write_real("settings","skin_b",obj_gamemanager.skin_b)
ini_write_real("settings","debug",obj_gamemanager.debug)
ini_write_real("settings","vsync",obj_gamemanager.vsync)
ini_write_real("settings","aa_level",obj_gamemanager.aa_level)
ini_write_real("settings","display_mode",obj_gamemanager.display_mode)
ini_write_real("settings","ultimate_selected",obj_gamemanager.ultimate_selected)
ini_write_real("settings","rendering_scale",obj_gamemanager.rendering_scale)
ini_write_real("settings","audio_disabled",obj_gamemanager.audio_disabled)
ini_write_real("settings","music_disabled",obj_soundmanager.musicdisabled)
ini_close()


