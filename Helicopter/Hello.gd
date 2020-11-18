extends Panel

func _ready():
	get_node("Button").connect("pressed", self, "_on_Button_pressed")
	print('hello')
	
func _on_Button_pressed():
	get_node("Label").text = "HELLO!"
	
func _process(delta):
	# frequency with which _process() will be called depends on
	# how many frames per second (FPS) your application is running at.
	# This rate can vary over time and devices
	#delta- time elasped in seconds since previous _process call
	print('idle processing',delta)
	pass
func _physics_process(delta):
	# This is called every physics frame.
	print('helloagain',delta)
	pass
