extends Node

var current_points = 0
var current_correct = 0
var current_incorrect = 0
var current_stay = 0
var sound_menu = true

var opt1_pressed = false
var opt2_pressed = false
var opt3_pressed = false

func reset_opt():
	opt1_pressed = false
	opt2_pressed = false
	opt3_pressed = false