extends Node2D


func _ready():
	pass


func _on_volver_pressed():
	get_tree().change_scene("res://src/MainScreens/Menu.tscn")


func _on_Tabla1_pressed():
	Global.num_table = 1
	get_tree().change_scene("res://src/Tables/tabla.tscn")


func _on_Tabla2_pressed():
	Global.num_table = 2
	get_tree().change_scene("res://src/Tables/tabla.tscn")
