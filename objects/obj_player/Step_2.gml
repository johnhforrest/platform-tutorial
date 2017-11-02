/// @description Dust effect when walking

if ((abs(_horizontalSpeed) > 0 || abs(_verticalSpeed) > 0) && alarm[1] <= 0)
{
    alarm[1] = 3;
}
