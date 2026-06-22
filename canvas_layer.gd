extends CanvasLayer

@onready var ui_element = $Control # Replace $Control with the actual name of your UI container

func _input(event: InputEvent) -> void:
	# Check if your Input Map key was pressed
	if event.is_action_pressed("toggle_hud"):
		# Toggle visibility
		visible = !visible
		
		# Prevent invisible buttons from blocking clicks by toggling their processing/mouse filters (Disabled)
		# get_tree().root.set_disable_input(visible)
