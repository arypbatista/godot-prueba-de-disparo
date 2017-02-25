extends RigidBody2D

export var velocidad = 1
export var fuerza = 1000

func volar(origen, angulo):
	var origen_relativo_de_impulso = Vector2(0,0)
	var impulso = fuerza * velocidad
	var impulso_direccionado = Vector2(0, -impulso).rotated(angulo)
	apply_impulse(origen_relativo_de_impulso, impulso_direccionado) 