extends Node2D

const CNIVELES = 5 #cantidad de niveles
var niveles=[1,1,0,0,0]#1 para nivel desbloqueado, 0 para nivel bloqueado

func _ready():
	Check_completed_lvls()

#Reinicia los niveles, como si empezara todo denuevo
func Reset_lvls():
	var i=0
	for i in range(1,CNIVELES):
		niveles[i] = 0
	Check_completed_lvls()

#ve que niveles ha pasado el usuario,ademas sirve como refresco de pantalla para actualizazr niveles avanzados
func Check_completed_lvls():
	var i = 0
	for i in range(CNIVELES):
		var aux = "TextureButton"
		var nombre_nodo = aux + str(i+1)
		if(niveles[i] == 0):
			get_node(nombre_nodo).set_disabled(true)
		get_node(nombre_nodo).get_node("Label").set_text(str(i))


func _on_TextureButton1_pressed():
	pass
		#get_tree().change_scene("res://src/Levels/Level1.tscn")
func _on_boton_reiniciar_pressed():
	Reset_lvls()

func _on_TextureButton_pressed():
	get_tree().change_scene("res://src/MainScreens/Menu.tscn")
	

