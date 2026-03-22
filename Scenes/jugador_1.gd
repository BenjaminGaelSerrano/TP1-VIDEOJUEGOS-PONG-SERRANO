extends CharacterBody2D

@export var velocidad : int = 350

func _ready() -> void:
	motion_mode = CharacterBody2D.MOTION_MODE_FLOATING

func _physics_process(delta: float) -> void:
	var direccion = Input.get_axis("Jugador1Arriba", "Jugador1Abajo")
	velocity.y = direccion * velocidad
	velocity.x = 0
	move_and_slide()
