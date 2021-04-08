extends Camera3D


func _ready() -> void:
	# Only enable MSAA while the project is running to improve editor performance.
	get_viewport().msaa = Viewport.MSAA_4X


# AnimationPlayer didn't work correctly at the same the video was made,
# so `_process()` was used to move the camera instead.
func _process(delta: float) -> void:
	rotate_object_local(Vector3.UP, 0.02 * delta)
	translate_object_local(Vector3(0, 0, -1.6 * delta))
	# For SDFGI demo:
	#rotate_object_local(Vector3.UP, 0.03 * delta)
	#translate_object_local(Vector3(0, 0, -9 * delta))
