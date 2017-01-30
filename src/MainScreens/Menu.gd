extends Node2D

func _on_Start_pressed():
	get_tree().change_scene("res://src/MainScreens/Levels.tscn")

func _on_Exit_pressed():
	get_tree().quit()

func _on_Team_pressed():
	get_tree().change_scene("res://src/MainScreens/Credits.tscn")
