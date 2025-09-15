extends Node2D

var meteor_scene := preload("res://Level/meteor.tscn")
var laser_scene := preload("res://Player/laser.tscn")
var star_scene := preload("res://Level/star.tscn")
var health :int = 3 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	get_tree().call_group("ui",'set_health',health)
	for i in range(20):
		var star = star_scene.instantiate()
		$Stars.add_child(star)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_player_laser(position) -> void:
	var laser = laser_scene.instantiate()
	laser.position = position
	$Lasers.add_child(laser)
	pass # Replace with function body.


func _on_meteor_timer_timeout() -> void:
	var meteor = meteor_scene.instantiate()
	# get random x position
	$Meteors.add_child(meteor)
	meteor.connect("collision", _on_meteor_collision)
	pass # Replace with function body.

func _on_meteor_collision():
	# health decrease
	health -= 1
	get_tree().call_group("ui",'set_health',health)
	if health == 0:
		print("gameover")
	print("meteor collision")
