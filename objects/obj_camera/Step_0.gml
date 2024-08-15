

if object_exists(follow)
{
	target_x = follow.x
	target_y = follow.y
}

x+= (target_x - x) /spd
y+= (target_y - y) /spd

x = clamp(x,w_half,room_width-w_half)
y = clamp(y,h_half,room_height-h_half)

camera_set_view_pos(cam,x-w_half,y-h_half)



if keyboard_check(vk_space)
{
    if window_get_fullscreen()
    {
        window_set_fullscreen(false);
    }
    else
    {
surface_resize(application_surface, 720,480);
window_set_size(720,480);
window_set_fullscreen(true);
    }
}