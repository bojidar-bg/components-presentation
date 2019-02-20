extends Panel

var action_buttons = {}
var listening_for = ""

func _ready():
	for child in $keys.get_children():
		if child.has_node("button"):
			var button = child.get_node("button")
			action_buttons[child.get_name()] = button
			button.connect("toggled", self, "rebind", [child.get_name()])

func _input(event):
	if event is InputEventKey:
		if listening_for != "":
			get_tree().set_input_as_handled()
			InputMap.action_erase_events(listening_for)
			InputMap.action_add_event(listening_for, event)
			action_buttons[listening_for].text = OS.get_scancode_string(event.scancode)
			action_buttons[listening_for].pressed = false
			listening_for = ""

func rebind(toggled, action):
	if toggled:
		for other_action in action_buttons:
			if other_action != action:
				action_buttons[other_action].pressed = false
		listening_for = action
	else:
		listening_for = ""
