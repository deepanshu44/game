extends Area2D

var velocity = Vector2()
var a=50
var b
var c



# Note: the `$` operator is a shorthand for `get_node()`,
# so `$Sprite` is equivalent to `get_node("Sprite")`.

#enum State {STATE_IDLE, STATE_JUMP = 5, STATE_SHOOT}
# Is the same as:
#const State = {STATE_IDLE = 0, STATE_JUMP = 5, STATE_SHOOT = 6}
# Access values with State.STATE_IDLE, etc.
func _ready():
	
	var screen_size = get_viewport_rect().size
	#set_mode(1) is lagging
	pass
	
func _process(delta):
	velocity = Vector2()
	
	
	velocity.y -= a
	
	#if velocity.length() > 0:
		#velocity = velocity.normalized()   causing problem
		
	position += velocity * delta

func _on_Button_pressed():
	
	
	a=-50
	
	print("Called")
	pass # Replace with function body.






func _on_Still_in_air_area_entered(area):
	a=-1
	pass # Replace with function body.
	
	


func _on_Helipad_area_entered(area):
	a=0
	pass # Replace with function body.

