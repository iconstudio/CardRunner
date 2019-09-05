/// @description 물리 처리
if velocity_x != 0 {
	var check_x
	if velocity_x > 0 // 오른쪽
		check_x = x + velocity_x + 1
	else if velocity_x < 0 // 왼쪽
		check_x = x + velocity_x - 1

	// 좌우 이동을 하기에 충분한 공간이 있는지 확인합니다.
	//
	if place_free(check_x, y) {
		// 플레이어가 벽에 닿지 않기 때문에 좌우 이동을 합니다.

		x += velocity_x
	} else {
		// 플레이어가 벽에 닿기 직전이기 때문에 좌우 이동을 멈추고 벽에 붙습니다.

		if velocity_x > 0
			move_contact_solid(0, abs(velocity_x) + 1)
		else if velocity_x < 0
			move_contact_solid(180, abs(velocity_x) + 1)

		velocity_x = 0
	}
}

var check_y
if velocity_y < 0 // 위쪽
	check_y = y + velocity_y - 1
else // 아래쪽
	check_y = y + velocity_y + 1 // 만약 플레이어가 바닥에 서서 세로 속도가 0이라면 자신의 바로 아래만을 검사합니다.

if !place_free(x, check_y) {
	// 플레이어가 벽에 닿기 직전이기 때문에 상하 이동을 멈추고 바닥 혹은 천장에 붙습니다.

	if velocity_y > 0 {
		// 낙하

		move_contact_solid(270, abs(velocity_y) + 1)
		move_outside_solid(90, 1) // 플레이어가 바닥에 끼는 일을 방지해줍니다.
	} else if velocity_y < 0 {
		// 상승

		move_contact_solid(90, abs(velocity_y) + 1)
	}

	velocity_y = 0
} else { 
	// 플레이어의 아래가 텅 비었기 때문에 낙하합니다.

	y += velocity_y
	velocity_y += velocity_gravity
}

if abs(velocity_x) > velocity_x_limit
	velocity_x = velocity_x_limit * sign(velocity_x)

if velocity_y > velocity_y_max
	velocity_y = velocity_y_max
else if velocity_y < velocity_y_min
	velocity_y = velocity_y_min

if velocity_x != 0 and friction_x != 0 {
	// 플레이어가 좌우 이동 중이 아니고, 가로 속도가 0이 아니라면 가로 마찰력을 적용합니다.
	if !place_free(x, y + 1)
		velocity_x -= friction_x * velocity_x
	else
		velocity_x -= friction_x_air * velocity_x
}
if velocity_y != 0 and friction_y != 0
	velocity_y -= friction_y * velocity_y
