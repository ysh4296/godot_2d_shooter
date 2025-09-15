extends Control

@export var level_scene:PackedScene = load("res://Level/level.tscn" )

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CenterContainer/VBoxContainer/Label2.text = "score: "+str(Global.score)
	pass # Replace with function body.

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_packed(level_scene)
	pass
