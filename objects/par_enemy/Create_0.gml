/// @description Setting up the enemy parent

init_movement_object();
snap_to_vgrid(true);

// Sprite state
_xScale = image_xscale;
_yScale = image_yscale;

// Enemy state
_attackPower = 0;
_hitPoints = 0;
_maxHitPoints = 0;
_knockbackAmount = 0;
_state = ENEMY_STATES.DEFAULT;

enum ENEMY_STATES
{
    DEFAULT,    // 0
    KNOCKBACK,  // 1
    DEAD,       // 2
	FROZEN      // 3
};