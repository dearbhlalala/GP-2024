extends Node2D

func _ready() -> void:
	pass


func _process(delta: float) -> void:
	queue_redraw()
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
	
	var num_h_lines = 10
	var gap = 50
	var border = 100
	
	for i in range(num_h_lines):
		draw_line(Vector2(100,border + gap * i), Vector2(v.size.x - border, border + gap * i), Color.ALICE_BLUE)
	
	for i in range(100):
		draw_line(Vector2(0, gap * i), Vector2(v.size.x, v.size.y - i * gap), Color.PALE_VIOLET_RED)
	
	for i in range(100):
		draw_line(Vector2(v.size.x, v.size.y - i * gap), Vector2(0, gap * i), Color.PALE_VIOLET_RED)
	
	var basket = ["apple","banana","carrot"]
	
	for f in basket:
		print(f)
	
	for i in range(basket.size()):
		print(basket[i])
	
	
	
	var m = get_global_mouse_position()
	print(m)
	
	var num_c_lines = m.x / 2
	
	gap = v.size.y / num_c_lines
	
	for i in range(num_c_lines):
		draw_line(Vector2(0, i * gap), Vector2(v.size.x, v.size.y - (i * gap)), Color.GREEN_YELLOW)
	
	var numCircles = 10
	var diameter = v.size.x / numCircles
	var radius = diameter / 2
	for i in range(numCircles):
		draw_circle(Vector2(i * w + (border / 2), 200 + (border / 2)), 60, Color.PINK)
	
	for i in range(numCircles):
		var c = Vector2(radius + (i* diameter), 200)
		var h = i / float(numCircles)
		draw_circle(c, radius, Color.from_hsv(h, 1, 1))
	
	pass
