extends CharacterBody2D


@export var velocidad=400;

func _physics_process(delta: float):
	var direccion=0
	if Input.is_action_just_pressed("Jugador1Arriba"):
		direccion=-1
	if Input.is_action_just_pressed("Jugador1Abajo"):
		direccion=1
	velocity.y = direccion*velocidad
	move_and_slide()		
		
