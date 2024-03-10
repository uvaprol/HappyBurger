extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	visible = get_tree().paused
	if get_tree().paused and $"..".game_pause:
			text = "Press:
				e  - new diner
				q - for exit
				s - for start"
	if get_tree().paused and !($"..".game_pause):
			text = "Press:
				e  - new diner
				q - for exit"
