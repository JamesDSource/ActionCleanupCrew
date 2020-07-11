if(keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down)) index++;
else if(keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)) index--;
index = clamp(index, 0, array_length(page)-1);

if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
	page[index][1]();	
}