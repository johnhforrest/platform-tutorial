if (_directionFacing == DIRECTION.LEFT
    && (tilemap_get_at_pixel(_tileMap, bbox_left - 1, bbox_top) != 0 || tilemap_get_at_pixel(_tileMap, bbox_left - 1, bbox_bottom) != 0)) {
    return true;
} else if (_directionFacing == DIRECTION.RIGHT
    && (tilemap_get_at_pixel(_tileMap, bbox_right + 1, bbox_top) != 0 || tilemap_get_at_pixel(_tileMap, bbox_right + 1, bbox_bottom) != 0)) {
    return true;
} else {
    return false;
}