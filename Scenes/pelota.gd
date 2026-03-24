extends CharacterBody2D

var velocidad = 400

func _ready() -> void:
	motion_mode = CharacterBody2D.MOTION_MODE_FLOATING
	velocity = Vector2(velocidad, velocidad * 0.5)
func _physics_process(delta):
	move_and_slide()
	if position.y <= 8:
		position.y = 8
		velocity.y = abs(velocity.y)
	if position.y >= 640:
		position.y = 640
		velocity.y = -abs(velocity.y)
	if position.x < 0:
		print("gol jugador 2")
		position = Vector2(576, 50)
		velocity = Vector2(velocidad, velocidad * 0.5)
	if position.x > 1152:
		print("gol jugador 1")
		position = Vector2(576, 50)
		velocity = Vector2(-velocidad, velocidad * 0.5)
	for i in get_slide_collision_count():
		var colision = get_slide_collision(i)
		if colision.get_collider() is CharacterBody2D:
			if velocity.x > 0 :
				velocity.x = -abs(velocity.x)  
			else: abs(velocity.x)
