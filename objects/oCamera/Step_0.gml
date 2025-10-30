if (!instance_exists(oPlayer)) exit;

var target_ = oPlayer;


var width_  = camera_get_view_width(view_camera[0]);
var height_ = camera_get_view_height(view_camera[0]);


if (x == 0 && y == 0) {
    x = target_.x;
    y = target_.y;
}


x = lerp(x, target_.x, 0.1);
y = lerp(y, target_.y, 0.1);


var _cam_x = clamp(x - width_ / 2, 0, room_width - width_);
var _cam_y = clamp(y - height_ / 2, 0, room_height - height_);

camera_set_view_pos(view_camera[0], _cam_x, _cam_y);
