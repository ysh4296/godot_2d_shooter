extends CanvasLayer

static var image = load("res://graphic/spaceSheep.png")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func set_health(health):
	# remove all children
	for child in $HBoxContainer.get_children():
		child.queue_free()
	
	# create all new childrens
	for i in health:
		var text_rect = TextureRect.new()
		text_rect.texture = image
		text_rect.stretch_mode = TextureRect.STRETCH_SCALE
		$HBoxContainer.add_child(text_rect)
		
	if health <= 0:
		change_scene("res://ui/game_over.tscn")
		
		
func change_scene(path):
	get_tree().change_scene_to_file(path)


func _on_score_timer_timeout() -> void:
	Global.score += 1
	set_score()
	pass # Replace with function body.

func set_score():
	$MarginContainer/Label.text = str(Global.score)
	
