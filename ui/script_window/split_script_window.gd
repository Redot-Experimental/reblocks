@tool
extends HBoxContainer

var script_content: String = ""

@onready var script_label: CodeEdit = $"PanelContainer/CodeContainer/Code"

@onready var code_container: VBoxContainer = $"PanelContainer/CodeContainer"


## Attempts to match the syntax highlighting for some open script in the
## editor, which is more likely to be appropriate for the editor theme
## than our hardcoded default
func _apply_editor_syntax_highlighter():
	var script_editor: ScriptEditor = EditorInterface.get_script_editor()
	for x in script_editor.get_open_script_editors():
		var control: Control = x.get_base_editor()
		if control is TextEdit:
			script_label.syntax_highlighter = control.syntax_highlighter
			break


## Undoes the effect of the CodeEdit being read-only
func _remove_font_color_alpha_clamp():
	var font_readonly_color = script_label.get_theme_color("font_readonly_color")
	font_readonly_color.a = 1
	script_label.add_theme_color_override("font_readonly_color", font_readonly_color)


func _ready():
	ReBlocks.script_updated.connect(update_script)


func update_script(script: String):
	_apply_editor_syntax_highlighter()
	_remove_font_color_alpha_clamp()
	script_content = script
	script_label.text = script_content.replace("\t", "    ")


func _on_copy_code_pressed():
	DisplayServer.clipboard_set(script_content)


func set_collapsed(collapsed: bool):
	visible = not collapsed
	code_container.visible = not collapsed
