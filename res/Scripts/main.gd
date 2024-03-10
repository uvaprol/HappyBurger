extends Node2D

var game_pause = true
var calories = 0

func _ready():
	get_tree().paused = false

#4, 590

func _process(delta):
	$Label.text = ('Сalories: {0}'.format([calories], "{_}"))
	if Input.is_action_just_pressed("reload") and get_tree().paused:
		get_tree().reload_current_scene()
	if Input.is_action_just_pressed("exit") and get_tree().paused:
		get_tree().quit()
	if Input.is_action_just_pressed("exit") and !(get_tree().paused):
		get_tree().paused = true
	if Input.is_action_just_pressed("start") and get_tree().paused and game_pause:
		get_tree().paused = false


func _on_timer_timeout():
	var lips = preload("res://Scenes/mouth.tscn").instantiate()
	lips.position = Vector2(2024, randi_range(4, 590))
	add_child(lips)
	$Timer.wait_time = randi_range(2, 3)
