extends Node

var score := 0

func is_out(position:Vector2):	
	var viewport = get_viewport().get_visible_rect().size
	if position.x < 0 or position.x > viewport.x or position.y < 0 or position.y > viewport.y:
		return true
	return false
