extends Node2D

export (String) var color
var is_matched
var is_counted
var selected = false
var target_position = Vector2(0,0)
var default_modulate = Color(1,1,1,1)
var highlight = Color(1,0.8,0,1)

var dying = false

func _ready():
	$Select.texture = $Sprite.texture
	$Select.scale = $Sprite.scale

func _physics_process(_delta):
	if dying:
		queue_free()
	if selected:
		if modulate != highlight:
			modulate = highlight
	else:
		if modulate != default_modulate:
			modulate = default_modulate
	if selected:
		$Select.show()
		$Selected.emitting = true
	else:
		$Select.hide()
		$Selected.emitting = false
		

func move_piece(change):
	target_position = position + change
	position = target_position

func die():
	dying = true;
