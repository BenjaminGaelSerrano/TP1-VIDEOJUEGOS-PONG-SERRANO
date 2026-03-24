extends CharacterBody2D

@export var velocidad : int = 350
func _physics_process(delta: float) -> void:
	position.x = 982 
	var direccion = Input.get_axis("Jugador2Arriba", "Jugador2Abajo")
	velocity.y = direccion * velocidad
	velocity.x = 0
	move_and_slide()
	position.y = clamp(position.y, 50, 598)
