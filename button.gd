extends Button

const WORLD_SCENE_PATH := "res://scenes/world.tscn"

func _ready() -> void:
	connect("pressed", Callable(self, "_on_button_pressed"))


func _on_button_pressed() -> void:
	var err = get_tree().change_scene(WORLD_SCENE_PATH)
	if err != OK:
		push_error("Failed to change scene to %s (error %d)" % [WORLD_SCENE_PATH, err])
