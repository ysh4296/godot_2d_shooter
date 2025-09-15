extends Node2D

var speed:Vector2 = Vector2.ZERO
var rotation_speed:float = 0.0

func _ready() -> void:
	var rng = RandomNumberGenerator.new()
	
	$AnimatedSprite2D.play("glow")
	var total_frames = $AnimatedSprite2D.sprite_frames.get_frame_count("glow")
	$AnimatedSprite2D.frame = rng.randi_range(0, total_frames - 1)  # 랜덤 프레임 설정
 
	speed = Vector2(rng.randi_range(10,-10),rng.randi_range(10,-10))
	rotation_speed = rng.randf_range(-0.5,0.5)
	
	var random_scale = rng.randf_range(0.5, 1.5)  # 0.5 ~ 1.5 사이의 랜덤 스케일
	scale = Vector2(random_scale, random_scale)   # X, Y 축에 동일한 스케일 적용
	
	var size = get_viewport().get_visible_rect().size
	position = Vector2(rng.randi_range(0,size[0]),rng.randi_range(0,size[1]))
	pass 


func _process(delta: float) -> void:
	# if position out range of viewport then reset's position to anothor side
	position += speed * delta
	rotation_degrees += rotation_speed

	# 뷰포트 경계 가져오기
	var viewport_size = get_viewport().get_visible_rect().size

	# 위치가 뷰포트 범위를 벗어나면 반대편으로 이동
	if position.x < 0:
		position.x = viewport_size.x
	elif position.x > viewport_size.x:
		position.x = 0

	if position.y < 0:
		position.y = viewport_size.y
	elif position.y > viewport_size.y:
		position.y = 0
	pass
