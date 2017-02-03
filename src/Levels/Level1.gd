extends "GenericLevel.gd"

onready var display = get_node("LevelTemplate/Display")
onready var opt1_text = get_node("LevelTemplate/Opt1/Num")
onready var opt2_text = get_node("LevelTemplate/Opt2/Num")
onready var opt3_text = get_node("LevelTemplate/Opt3/Num")

func _ready():
	set_table(1) # setiar la tabla del 1
	new_problem()
	display_problem()
	generate_answers()
	show_opts()

func display_problem():
	display.set_text(str(num1, " * ", num2))

func show_opts():
	opt1_text.set_text(str(opts[0]))
	opt2_text.set_text(str(opts[1]))
	opt3_text.set_text(str(opts[2]))