extends Node

var score = 0
var time = 60
var goal = 0
var level = 1
signal changed
var camera = null
var level_times = {
		1:60,
		2:60,
		3:null
}
var level_scores = {
	1:500,
	2:null
	
}
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

signal score_changed
signal time_changed
signal goal_changed

func change_score(s):
	score += s
	emit_signal("score_changed")
	if camera == null:
		camera = get_node_or_null("/root/Game/Camera")
	if camera != null:
			camera.add_trauma(s/20.0)
	if Global.score >= 500:
			get_tree().change_scene("res://End.tscn")
			
			
func update_lev():
	score = 0
	time = level_times[level]
	
func change_time():
	time -= 1
	if time < 0:
		queue_free()
	emit_signal("time_changed")



