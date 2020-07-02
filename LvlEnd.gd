extends Area2D
export var nLevel = "Lvl.tscn"


func _on_LvlEnd_body_entered(body):
	get_tree().change_scene(nLevel)
