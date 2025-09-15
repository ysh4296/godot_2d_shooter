extends CharacterBody2D
class_name Player

@export var speed := 1000
@export var accelaration := 20
var can_shoot = true

signal laser(position:Vector2)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var size = get_viewport().get_visible_rect().size
	
	position = Vector2(size[0]/2,size[1])
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction := Input.get_vector("left", "right","up","down")
	velocity.x = move_toward(velocity.x,direction.x * speed , accelaration)
	velocity.y = move_toward(velocity.y,direction.y * speed , accelaration)
	
	if Input.is_action_pressed("ui_accept") && can_shoot:
		# add laser
		$CooldownTimer.start()
		can_shoot = false
		laser.emit($Marker2D.global_position)
		
	move_and_slide()
	#position += direction * speed* delta
	pass


func _on_cooldown_timer_timeout() -> void:
	can_shoot = true
	pass # Replace with function body.
