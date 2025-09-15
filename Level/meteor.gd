extends Area2D
class_name Meteor

var speed_x = 0
var speed_y = 0
var rotation_speed = 0;

signal collision
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var rng = RandomNumberGenerator.new() 
	var meteor_num = str(rng.randi_range(1,2))
	var meteor_texture_path = "res://graphic/meteor/" + meteor_num + ".png"
	
	var width = get_viewport().get_visible_rect().size[0]
	var random_x = rng.randi_range(0,width)
	var random_y = rng.randi_range(-150,-50)
	position.x = random_x 
	position.y = random_y
	speed_x = rng.randi_range(-400,400)
	speed_y = rng.randi_range(500,1000)
	rotation_speed = rng.randi_range(-60,60)
	$Sprite2D.texture = load(meteor_texture_path)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += speed_y * delta
	position.x += speed_x * delta
	rotation_degrees += rotation_speed * delta
	
	if position.y > 0 and Global.is_out(position):
		queue_free()
	pass


func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		collision.emit()
	if body is Laser:
		Global.score+=10
		body.queue_free()
		queue_free()
		get_tree().call_group("ui",'set_score')
	pass # Replace with function body.
