extends TextureRect

func get_drag_data(_position):
	var data = {}
	data["origin_node"] = self
	data["origin_texture"] = texture
	
	var drag_texture = TextureRect.new()
	drag_texture.expand = true
	drag_texture.texture = texture
	drag_texture.rect_size = Vector2(64,64)
	
	var control = Control.new()
	control.add_child(drag_texture)
	drag_texture.rect_position = -0.5 * drag_texture.rect_size
	set_drag_preview(control)
	
	return data

func can_drop_data(_position, data):
	return true

func drop_data(_position, data):
	texture = data["origin_texture"]
	data["origin_node"].texture = null
