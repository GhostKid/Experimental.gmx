
if instance_exists(obj_Player)
{
do wep = round(random(maxwep-1)+1)
until weapon_area[wep] != -1
}
else
wep = round(random(maxwep-1)+1)
