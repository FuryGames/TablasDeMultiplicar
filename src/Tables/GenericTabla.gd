extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	#print(Global.num_table)
	#print("Global.num_table")
	# Called every time the node is added to the scene.
	# Initialization here
	pass
func set_table(num_table):
	#num_table = num_table
	Global.num_table = num_table
	