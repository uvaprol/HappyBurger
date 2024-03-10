extends CharacterBody2D


const SPEED = 300.0




func _physics_process(delta):
	velocity.x = -1 * SPEED
	move_and_slide()


func _on_area_2d_body_entered(body):
	if body.name == 'Burger':
		get_tree().paused = true
		$"..".game_pause = false


func _on_area_2d_3_body_entered(body):
	$"..".calories += 1
