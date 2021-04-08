extends Control

@onready var label := $Label as Label


func _ready() -> void:
	print("<> -> => != <= >= ## := ..")
	const MAX_SIZE = 40
	var size := 50
	if size >= MAX_SIZE:
		print("Size is too large..")



func _on_size_value_changed(value: float) -> void:
	label.add_theme_font_size_override("font_size", int(value))


func _on_weight_value_changed(value: float) -> void:
	label.get_theme_font("font").get_data(0).set_variation("weight", value)


func _on_slant_value_changed(value: float) -> void:
	# Font slant range is -10..0.
	label.get_theme_font("font").get_data(0).set_variation("slant", -value)
