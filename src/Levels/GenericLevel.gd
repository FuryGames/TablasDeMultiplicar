extends Node

var num1 = 0
var num2 = 0
var result = 0
# Es el resultado anterior para que no se repitan los números continuamente
var past_result = 0
# Falsas alternativas
var falt = [0, 0]
# Opciones para elegir
var opts = []

# Cercanía respecto al resultado de las falsas alternativas
const NEARNESS = 5

func _ready():
	randomize()

func set_table(table):
	num1 = table

func new_problem():
	while past_result == num2*num1: # Multiplico num2*num1 para que entre e el while
		num2 = round(randf() * 10)
	result = num1 * num2
	past_result = result

func generate_answers():
	# Definir el rango de de las falsas alternativas (falt)
	falt[0] = int(rand_range(result - NEARNESS, result + NEARNESS + 1))
	falt[1] = int(rand_range(result - NEARNESS, result + NEARNESS + 1))
	
	while (falt[0] == result):
		falt[0] = int(rand_range(result - NEARNESS, result + NEARNESS + 1))
	while (falt[1] == result || falt[1] == falt[0]):
		falt[1] = int(rand_range(result - NEARNESS, result + NEARNESS + 1))
	
	opts = [null, null, null]
	var opt_correct = int(rand_range(0, 3))

	opts[opt_correct] = result
	
	var index_falt = 0
	var index_num = 0
	
	for i in opts:
		if (i == null):
			if falt[index_falt] < 0:
				print(falt[index_falt])
				falt[index_falt] = falt[index_falt]*-1 #Quitar los numeros negativos en las opciones
			opts[index_num] = falt[index_falt]
			index_falt += 1
		index_num += 1

func evaluate_result(opt):
	if opt == result:
		Global.current_correct += 1
	else:
		Global.current_incorrect += 1
	Global.current_stay -= 1
	Global.reset_opt()