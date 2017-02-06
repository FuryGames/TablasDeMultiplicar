extends Node2D

onready var correct = get_node("Correct")
onready var incorrect = get_node("Incorrect")

func _ready():
	correct.set_text(str("Correctas: ", Global.current_correct))
	incorrect.set_text(str("Incorrectas: ", Global.current_incorrect))
