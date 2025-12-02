extends Node3D

@export var head: Node3D
@export var cam: Camera3D

var sense = 0.001


func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED


func _process(delta: float) -> void:
	pass

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		head.rotate_y(-event.relative.x * sense)
		cam.rotate_x(-event.relative.y * sense)
		cam.rotation.x = clamp(cam.rotation.x, deg_to_rad(-75), deg_to_rad(75))
