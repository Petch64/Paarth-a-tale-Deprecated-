_up    =  keyboard_check(vk_up)
_down  =  keyboard_check(vk_down)
_left  =  keyboard_check(vk_left)
_right =  keyboard_check(vk_right) 


if keyboard_check(vk_left)
{
    x = x - 1;
}
else if keyboard_check(vk_right)
{
    x = x + 1;
}
else if keyboard_check(vk_up)
{
    y = y - 1;
}
else if keyboard_check(vk_down)
{
    y = y + 1;
}

var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);
var _hspd = _right - _left;
var _vspd = _down - _up;

if (_hspd != 0 || _vspd != 0)
{
    var _spd = 1;
    var _dir = point_direction(0, 0, _hspd, _vspd);
    var _xadd = lengthdir_x(_spd, _dir);
    var _yadd = lengthdir_y(_spd, _dir);
    x = x + _xadd;
    y = y + _yadd;
}

yspd = y;
xspd = x;
