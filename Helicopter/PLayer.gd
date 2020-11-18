extends KinematicBody2D

var motion=Vector2()
var z
# Called every frame. 'delta' is the elapsed time since the previous frame.
func  _physics_process(delta):
	motion.y+=6
	if Input.is_action_pressed("ui_right"):
		motion.x=100

	elif Input.is_action_just_pressed("ui_left"):
		motion.x=-100

	if is_on_floor():
		
		if Input.is_action_just_pressed("ui_up"):
		 motion.y=-300
	z=motion
	#print("Out put",z)
	#else: motion.x=0
	move_and_slide(motion,Vector2(0,-1)) #-1 on floor
	#move_and_collide(motion*delta)
	pass
	
