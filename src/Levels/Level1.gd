extends Panel

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	var timer = get_node("Timer")
	var timerlabel = get_node("Tiempo")
	
	timer.set_wait_time(10)
	timer.start()
	while(timer.is_active()):
		print(str(timer.get_time_left()))
		if(timer.get_time_left() == 0):
			timer.set_active(false)
		

	# Called every time the node is added to the scene.
	# Initialization here
