extends Node2D

func _ready():
	pass

func _on_ExitLevel_pressed():
	get_tree().change_scene("res://src/MainScreens/Levels.tscn")
