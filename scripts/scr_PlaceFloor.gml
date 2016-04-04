///scr_PlaceFloor(Generating rooms)
instance_create(x,y,Floor)

if random(9) < 1
{
instance_create(x+32,y,Floor)
instance_create(x+32,y+32,Floor)
instance_create(x,y+32,Floor)
}
if random(8) < 1
{
instance_create(x+32,y,Floor)
instance_create(x+32,y+32,Floor)
instance_create(x,y+32,Floor)
instance_create(x,y-32,Floor)
instance_create(x-32,y,Floor)
instance_create(x+32,y-32,Floor)
instance_create(x-32,y-32,Floor)
instance_create(x-32,y+32,Floor)
}


trn = choose(0,0,0,0,0,0,0,0,0,0,0,90,-90,90,-90,180)
direction += trn

x += lengthdir_x(32,direction)
y += lengthdir_y(32,direction)
instance_create(x,y,Floor)

if random(20) < 1
instance_create(x,y,FloorMaker)
