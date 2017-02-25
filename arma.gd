extends Node2D

const Bala = preload('bala.tscn')

export var velocidad_de_disparo = 1
export var fuerza_de_disparo = 1000

func disparar():
	var bala = Bala.instance()
	bala.velocidad = velocidad_de_disparo
	bala.fuerza = fuerza_de_disparo
	get_node('Balas').add_child(bala)
	bala.volar(origen(), angulo())

func origen():
	return get_node('origen').get_global_pos()

func salida():
	return get_node('salida').get_global_pos()

func angulo():
	return origen().angle_to_point(salida())