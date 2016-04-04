///scr_DrawHUD

scr_Weapons()

if instance_exists(Player)
{
    draw_sprite_ext(spr_ui_weapons,0,view_xview[0]+418,view_yview[0]+268,1,1,0,c_white,1)
    draw_sprite_ext(spr_ui_activeitem,0,view_xview[0]+372,view_yview[0]+268,1,1,0,c_white,1)
    
    if Player.wep != 0
    {
        draw_sprite_ext(weapon_icon[Player.wep],0,view_xview[0]+418,view_yview[0]+268,1.2,1.2,0,c_white,1)
    }
}
