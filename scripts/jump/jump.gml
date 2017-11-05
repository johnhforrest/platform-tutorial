/// @function jump Set the players vertical speed to _jumpHeight and squish them

_verticalSpeed = _jumpHeight;
        
// Squish the player while jumping
_xScale *= .4;
_yScale *= 1.5;