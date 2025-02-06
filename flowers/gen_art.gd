extends Node2D

var radius:float
var count:int

func _draw() -> void:
	var l:float = float(count)
	#for i in range(l):
		#draw_line(Vector2(i * 100, 0), Vector2(i * 100, 500), Color.PINK, 10)
	
	var theta_inc = 1
	var px = 0
	var py = 0
	var r = 0
	var a = 1
	for i in range(l):
		var theta = theta_inc * i
		var x = sin(theta) * r
		var y = cos(theta) * r
		var c:Color = Color.from_hsv(.5, 1, 1, a)
		draw_line(Vector2(px, py), Vector2(x, y), c, 10)
		#draw_circle(Vector2(x, y), 10, Color.AQUA, false)
		px = x
		py = y
		r = r + 10
		a = a - 0.02
		
	pass
	
func _process(delta: float) -> void:
	queue_redraw()
	
	
func _on_h_slider_value_changed(value: float) -> void:
	radius = value
	pass # Replace with function body.


func _on_num_lines_value_changed(value: float) -> void:
	count = value
	pass # Replace with function body.
