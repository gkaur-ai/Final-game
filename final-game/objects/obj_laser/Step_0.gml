var_hit = false;
for (var i = 0; i < laser_length; i += 4) {
    var check_x = x + i * laser_dx;
    var check_y = y + i * laser_dy;
    if (place_meeting(check_x, check_y, obj_enemy)) {
        var enemy = instance_place(check_x, check_y, obj_enemy);
        enemy.hp -= damage; // Apply damage to enemy
        laser_length = i; // Stop laser at the collision point
        hit = true;
        break;
    }
}





