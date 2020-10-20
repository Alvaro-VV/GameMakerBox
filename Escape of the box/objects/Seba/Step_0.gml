/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
#region valores
k_a= keyboard_check( ord("A"));
k_left= keyboard_check(vk_left);


k_d= keyboard_check( ord("D"));
k_right= keyboard_check(vk_right);

k_w= keyboard_check( ord("W"));
k_up= keyboard_check(vk_up);

k_s= keyboard_check( ord("S"));
k_down= keyboard_check(vk_down);

mov=5;
#endregion

#region control de movimiento
if(k_a or k_left)
{
	image_xscale=-1;
	sprite_index= right;
	image_speed=1;
	x=x-mov;

}
else if(k_d or k_right)
{
	image_xscale=1;
	sprite_index=right;
	x=x+mov;
	image_speed=1;
}
else if(k_w or k_up)
{
	sprite_index=up;
	y=y-mov;
	image_speed=1;
}
else if(k_down or k_s)
{
	image_yscale=1;
	sprite_index=down;
	y=y+mov;
	image_speed=1;
}
else if(keyboard_check_released(ord("A")) or keyboard_check_released(vk_left))
{
	image_xscale=-1;
	sprite_index=stop_r;
	image_speed=1;
	
}
else if(keyboard_check_released(ord("D")) or keyboard_check_released(vk_right))
{
	image_xscale=1;
	sprite_index=stop_r;
	image_speed=1;
}
else if(keyboard_check_released(ord("S")) or keyboard_check_released(vk_down) )
{
	sprite_index= idle;	
	image_speed=1;
}
else if((keyboard_check_released(ord("W")) or keyboard_check_released(vk_up)))
{
	image_speed=0;	
}
#endregion

