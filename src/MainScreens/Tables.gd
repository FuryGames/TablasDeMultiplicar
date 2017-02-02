extends Node2D


func _ready():
	pass


func _on_volver_pressed():
	get_tree().change_scene("res://src/MainScreens/Menu.tscn")
