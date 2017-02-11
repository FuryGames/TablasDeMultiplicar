extends Node2D

var sonido_on = load("res://assets/images/buttons/sound-on.png")
var sonido_off = load("res://assets/images/buttons/sound-off.png")

func _ready():
	if Global.sound_menu == false:
		get_node("Sound").set_normal_texture(sonido_off)
		get_node("Sound").set_pressed_texture(sonido_on)
		get_node("SoundMenu").stop()
	

func _on_Start_pressed():
	get_tree().change_scene("res://src/MainScreens/Levels.tscn")

func _on_Exit_pressed():
	get_tree().quit()

func _on_Team_pressed():
	
	get_tree().change_scene("res://src/MainScreens/Credits.tscn")

func _on_Tables_pressed():
	get_tree().change_scene("res://src/MainScreens/Tables.tscn")


func _on_Sound_pressed():
	
	if Global.sound_menu:
		get_node("Sound").set_normal_texture(sonido_off)
		get_node("Sound").set_pressed_texture(sonido_on)
		get_node("SoundMenu").stop()
		Global.sound_menu = false
	else:
		get_node("SoundMenu").play()
		get_node("Sound").set_normal_texture(sonido_on)
		get_node("Sound").set_pressed_texture(sonido_off)
		Global.sound_menu = true