extends AnimatedSprite

func _ready():
	play()

func _on_Heart_animation_finished():
	queue_free()
