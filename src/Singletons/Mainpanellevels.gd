extends Panel

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
const CNIVELES = 4 #cantidad de niveles 
var niveles=[1,0,0,0]

func _ready():
	Check_completed_lvls()
	# Called every time the node is added to the scene.
	# Initialization here
	
#Reinicia los niveles, como si empezara todo denuevo
func Reset_lvls():
	var i=0
	for i in range(CNIVELES):
		niveles.append(0)

#ve que niveles ha pasado el usuario
func Check_completed_lvls():
	var i = 0
	for i in range(CNIVELES):
		if(niveles[i] == 0):
			var aux = "TextureButton"
			var nombre_nodo = aux + str(i+1)
			get_node(nombre_nodo).Disable()
func _on_TextureButton_pressed():
	pass


func _on_TextureButton1_pressed():
	pass