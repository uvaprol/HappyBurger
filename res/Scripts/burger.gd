extends CharacterBody2D

const JUMP_VELOCITY = -400.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	velocity.y += gravity * delta
	if Input.is_action_just_pressed("ui_accept"):
		$Sprite2D.visible = false
		$AnimatedSprite2D.visible = true
		$AnimatedSprite2D.play()
		velocity.y = JUMP_VELOCITY

	move_and_slide()

func _on_animated_sprite_2d_animation_looped():
	$AnimatedSprite2D.visible = false
	$AnimatedSprite2D.stop()
	$Sprite2D.visible = true
