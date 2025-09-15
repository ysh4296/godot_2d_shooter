extends CharacterBody2D

class_name Laser

@export var laser_speed = 3000
@export var accelaration = 30

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Sprite2D.scale = Vector2.ZERO
	var tween = create_tween()
	tween.tween_property($Sprite2D,"scale",Vector2(1,1),0.2)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity.y = move_toward(velocity.y,-laser_speed,accelaration)
	move_and_slide()
	if position.y < 0 and Global.is_out(position):
		queue_free()
	pass
