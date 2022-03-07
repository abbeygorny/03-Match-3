extends Control


func _ready():
	var _changed = Global.connect("changed",self,"_on_score_changed")
	
	
	var _score_changed = Global.connect("score_changed",self,"_on_score_changed")	
	var _time_changed = Global.connect("time_changed",self,"_on_time_changed")	
	var _goal_changed = Global.connect("goal_changed",self,"_on_goal_changed")	
	


func _on_score_changed():
	$Score.text = "Score: " + str(Global.score)
	
func _on_time_changed():
	$Time.text = "Time:" + str(Global.time)


	
func _on_goal_changed():
	$Goal.text = "Goal:" + str(Global.goal)

func _on_Timer_timeout():
	Global.change_time()
