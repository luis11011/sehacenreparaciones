extends Interactuable
class_name Pickable
  
onready var sprite = get_node("sprite")

var dirty := false setget set_dirty
var broken := false setget set_broken
var painted := 0 setget set_painted
var patched := false setget set_patched
var hole := false setget set_hole

var done := false

	
func interact():
	var new_parent := $"/root/World/Slots" as Node2D
	if get_parent():
		get_parent().remove_child(self)
	new_parent.add_child(self)
	
func put():
	var new_parent := $"/root/World/TablePosition" as Node2D
	if get_parent():
		get_parent().remove_child(self)
	new_parent.add_child(self)
	
func _ready():
	change_sprite()
	
	
func set_dirty(value : bool): 
	dirty = value
	
	
func get_dirty():
	return self.dirty


func set_broken(value : bool):
	broken = value
	change_sprite()


func get_broken():
	return self.broken
	
	
func set_painted(value : int):
	painted = value
	change_sprite()
	
	
func get_painted():
	return self.painted


func set_patched(value : bool):
	patched = value
	change_sprite()


func get_patched():
	return self.patched

	
func set_hole(value: bool):
	hole = value
	change_sprite()
	

func get_hole():
	return self.hole
	
	
func change_sprite():
	pass

