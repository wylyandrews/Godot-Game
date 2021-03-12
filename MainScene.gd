extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const TILESET_WIDTH : int = 10
const TILESET_HEIGHT : int = 2

var tileset : Array

# Called when the node enters the scene tree for the first time.
func _ready():
	var scene = load("res://Player.tscn")
	var player = scene.instance()
	add_child(player)

	var tile = load("res://Tile.tscn")
	
	var tileset = []
	for i in range(TILESET_HEIGHT):
		tileset.append([])
	
	for i in range(TILESET_HEIGHT):
		for j in range(TILESET_WIDTH):
			var t_instance = tile.instance()
			
			# Set x
			t_instance.position.x = 100 + j * 32
			
			# Set y with offset
			t_instance.position.y = 100 + i * 32 + (16 if j % 2 else 0)

			# generate and save
			tileset[i].append(t_instance) 
			add_child(t_instance)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
