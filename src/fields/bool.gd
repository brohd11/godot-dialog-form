
const UResource = preload("uid://xwy6i4dlbtvs") #! resolve UtilR.Resources.UResource

static func get_check(name="", icon=null):
	#var hbox = HBoxContainer.new()
	var check_box = CheckBox.new()
	#hbox.add_child(check_box)
	return _get_button(check_box, name, icon)

static func get_button(name="", icon=null):
	var b = Button.new()
	b.toggle_mode = true
	return _get_button(b, name, icon)

static func _get_button(control:Button, name:String, icon=null):
	control.text = name
	#control.icon_alignment = HORIZONTAL_ALIGNMENT_RIGHT
	if icon is String:
		icon = UResource.load_or_get_icon(icon)
	control.icon = icon
	control.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	return control
