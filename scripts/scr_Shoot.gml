///scr_Shoot()

canShoot = 0

Player.my_ammo -= 1

//HANDGUN
if wep = 1
{
    //sound_play(snd_Pistol)
    alarm[0] = 7
    with instance_create(x,y,obj_shell)
    {
        motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(50)-25,2+random(4))
    }
    with instance_create(x,y,obj_bullet)
    {
        motion_add(point_direction(x,y,mouse_x,mouse_y)+random_range(-3,3),18)
    }
    
    BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)+180)
    BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)+180)
    BackCont.shake += 4
}

//PIPE SHOTGUN
if wep = 2
{
    //sound_play(snd_PipeShotgun)
    alarm[0] = 25
    with instance_create(x,y,obj_buckshot)
    {
         motion_add(point_direction(x,y,mouse_x,mouse_y)+random_range(-2,2),16+random(4))
         image_angle = direction
    }
    with instance_create(x,y,obj_buckshot)
    {
         motion_add(point_direction(x,y,mouse_x,mouse_y)+random_range(-9,-4),16+random(4))
         image_angle = direction
    }
    with instance_create(x,y,obj_buckshot)
    {
         motion_add(point_direction(x,y,mouse_x,mouse_y)+random_range(-14,-9),16+random(4))
         image_angle = direction
    }
    with instance_create(x,y,obj_buckshot)
    {
         motion_add(point_direction(x,y,mouse_x,mouse_y)+random_range(4,10),16+random(4))
         image_angle = direction
    }
    with instance_create(x,y,obj_buckshot)
    {
         motion_add(point_direction(x,y,mouse_x,mouse_y)+random_range(5,11),16+random(4))
         image_angle = direction
    }
    
    BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)+180)
    BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)+180)
    BackCont.shake += 30
}

//NAIL GUN
if wep = 3
{
    Player.shooting = true

    alarm[0] = 4
    with instance_create(x,y,obj_shell)
    {
        motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(50)-25,2+random(4))
    }
    with instance_create(x,y,obj_bolt)
    {
        motion_add(point_direction(x,y,mouse_x,mouse_y)+random_range(-4,4),16)
        image_angle = direction
    }
    
    BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)+180)
    BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)+180)
    BackCont.shake += 6
}

//MACHINE GUN 
if wep = 4
{
    Player.shooting = true

    alarm[0] = 5
    with instance_create(x,y,obj_shell)
    {
        motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(50)-25,2+random(4))
    }
    with instance_create(x,y,obj_bullet)
    {
        motion_add(point_direction(x,y,mouse_x,mouse_y)+random_range(-2,2),16)
        image_angle = direction
    }
    
    BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)+180)
    BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)+180)
    BackCont.shake += 4
}
