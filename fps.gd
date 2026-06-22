extends Label

var _acc := 0.0
const UPDATE_INTERVAL := 0.2

func _process(delta: float) -> void:
	_acc += delta
	if _acc >= UPDATE_INTERVAL:
		_acc = 0.0
		text = "FPS: %.1f" % Engine.get_frames_per_second()
