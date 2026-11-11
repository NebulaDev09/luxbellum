extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_player_glass_change(glass_held: Variant) -> void:
	var platforms = get_tree().get_nodes_in_group("platforms")
	for i in platforms:
		var colorRect = i.get_node("ColorRect")
		var collisionshape = i.get_node("CollisionShape2D")
		if i.color == glass_held:
			collisionshape.disabled = true
			colorRect.color.a = 1.0
		elif i.color != glass_held:
			collisionshape.disabled = true
			colorRect.color.a = 0.2
