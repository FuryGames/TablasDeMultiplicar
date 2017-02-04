extends Node2D

func _ready():
	pass

func _on_ExitLevel_pressed():
	get_tree().change_scene("res://src/MainScreens/Levels.tscn")

func _on_Opt1_pressed():
	Global.reset_opt()
	Global.opt1_pressed = true

func _on_Opt2_pressed():
	Global.reset_opt()
	Global.opt2_pressed = true

func _on_Opt3_pressed():
	Global.reset_opt()
	Global.opt3_pressed = true
