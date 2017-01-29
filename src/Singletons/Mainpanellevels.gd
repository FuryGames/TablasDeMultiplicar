extends Panel

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
const CNIVELES = 3 #cantidad de niveles 
var niveles=[]

func _ready():
	Check_Completed_lvls()
	print(niveles)
	# Called every time the node is added to the scene.
	# Initialization here
	
func Check_Completed_lvls():
	var i=0
	for i in range(CNIVELES):
		niveles.append(0)

func _on_TextureButton_pressed():
	print("presionaste"+ get_node("TextureButton").get_name())
