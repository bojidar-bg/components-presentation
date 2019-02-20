extends HBoxContainer

export var action = "" setget set_action

func _ready():
	set_action(action)

func set_action(new_action):
	action = new_action
	if is_inside_tree():
		$label.text = action.capitalize()
		for event in InputMap.get_action_list(action):
			if event is InputEventKey:
				$button.text = OS.get_scancode_string(event.scancode)

func _input(event):
	if event is InputEventKey:
		if $button.pressed:
			InputMap.action_erase_events(action)
			InputMap.action_add_event(action, event)
			set_action(action) # Update
			$button.pressed = false
			get_tree().set_input_as_handled()

