var boundingBoxOffset;
if (direction == 0 || direction == 180)
{
	boundingBoxOffset = (direction == 0 ? bbox_right + speed : bbox_left - speed);
	if ((tilemap_get_at_pixel(tileMap, boundingBoxOffset, bbox_top) != 0) || (tilemap_get_at_pixel(tileMap, boundingBoxOffset, bbox_bottom) != 0))
	{
		instance_destroy();
	}
}
else
{
	boundingBoxOffset = (direction == 270 ? bbox_bottom + speed : bbox_top - speed);
	if ((tilemap_get_at_pixel(tileMap, bbox_left, boundingBoxOffset) != 0) || (tilemap_get_at_pixel(tileMap, bbox_right, boundingBoxOffset) != 0))
	{
		instance_destroy();
	}
}