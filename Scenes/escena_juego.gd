extends Node2D
@onready var pausa = $"MenuPausa"
@onready var pelota = $Pelota
const puntuacionGanar : int = 20
func _ready() -> void:
	pausa.visible=false
	pausa.reanudar.connect(salirDeLaPausa)
	pausa.cambiar_velocidad.connect(cambiarVelocidadEnElJuego)
func _process(delta):
	if Input.is_action_just_pressed("Pausa"):
		pausa.visible = true
		get_tree().paused = true
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
func salirDeLaPausa():
	pausa.visible = false
	get_tree().paused = false
func cambiarVelocidadEnElJuego(multiplicador):
	pelota.velocidad=400
	pelota.velocidad *= multiplicador
	pelota.velocity = pelota.velocity.normalized() * pelota.velocidad
	pausa.visible = false
	get_tree().paused = false
func finalizarPartida():
	get_tree().paused = true
	print("La partida ha finalizado. Puntuación alcanzada: 20")
	pausa.visible = true 
func revisarFinalDelJuego():
	if pelota.golesJ1 >= puntuacionGanar or pelota.golesJ2 >= puntuacionGanar : 
		finalizarPartida()
