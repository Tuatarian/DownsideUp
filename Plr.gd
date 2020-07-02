extends KinematicBody2D
export var cScene = "Lvl.tscn"

var up = Vector2(0,-1)
var grav = 78000
var velo = Vector2()
export var xmove = 20000

func _physics_process(delta):
	velo.x = xmove * delta
	velo.y = delta * grav
	if is_on_floor():
		if Input.is_action_just_pressed("ui_select"):
			grav = -grav
			up.y = -up.y
			velo.y = 0
	move_and_slide(velo, up)
	if !($VisibilityNotifier2D.is_on_screen()):
		get_tree().change_scene(cScene)
