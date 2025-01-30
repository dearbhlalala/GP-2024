extends Node2D

func _ready() -> void:
	pass


func _process(delta: float) -> void:
	pass

func _draw() -> void:
	var r = Rect2(50,50,100,30)
	draw_rect(r, Color.PINK)
	
	draw_line(Vector2(50,50), Vector2(200, 200), Color.REBECCA_PURPLE)
	
	var v = get_viewport_rect()
	
	var num_lines = 10
	var s = get_viewport_rect().size
	var w = s.x / num_lines
	
	for i in range(num_lines):
		draw_line(Vector2(i * w, 0), Vector2(i * w, s.y), Color.PINK)
	
	
	var basket = ["apple","banana","carrot"]
	
	for f in basket:
		print(f)
	
	for i in range(basket.size()):
		print(basket[i])
	
	
	pass
