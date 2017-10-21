/// @description Collision event with enemy

if (!_hitEnemy)
{
    _hitEnemy = true;
    other._hitPoints -= obj_player._attackPower;
}