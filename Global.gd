extends Node

var score = 0
signal changed
var camera = null
var scores = {
	0:0,
	1:0,
	2:0,
	3:10,
	4:20,
	5:50,
	6:100,
	7:200,
	8:300,
	9:1000
}

func change_score(s):
	score += s
	emit_signal("changed")
	if camera == null:
		camera = get_node_or_null("/root/Game/Camera")
	if camera != null:
			camera.add_trauma(s/20.0)
