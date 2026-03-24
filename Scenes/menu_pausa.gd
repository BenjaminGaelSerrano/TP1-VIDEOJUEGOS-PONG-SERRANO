extends Control 

signal reanudar
signal cambiar_velocidad(multiplicador)

func _ready():
	$Reanudar.pressed.connect(Reanudar)
	$Velocidad/x1.pressed.connect(velocidadNormal)
	$Velocidad/x1_25.pressed.connect(velocidadAumentada1)
	$Velocidad/x1_5.pressed.connect(velocidadAumentada2)
	process_mode = Node.PROCESS_MODE_ALWAYS

func Reanudar():
	reanudar.emit()

func velocidadNormal():
	cambiar_velocidad.emit(1.0)

func velocidadAumentada1():
	cambiar_velocidad.emit(1.25)

func velocidadAumentada2():
	cambiar_velocidad.emit(1.5)
