extends Node

#VARIABLES#

#BOARD VARIABLES#
onready var blackTile = preload("res://Scenes/BlackTile.tscn")
onready var whiteTile = preload("res://Scenes/WhiteTile.tscn")

var board = []

# Called when the node enters the scene tree for the first time.
func _ready():
	generateBoard()
	set_Pieces()
	
func set_Pieces():
	for n in board:
		if(n.getPlace().y == 6):
			n.setPiece("Pawn", "White")
		elif(n.getPlace().y == 1):
			n.setPiece("Pawn", "Black")
		elif(n.getPlace().y == 0):
			if(n.getPlace().x == 0 || n.getPlace().x == 7):
				n.setPiece("Rook", "Black")
			elif(n.getPlace().x == 1 || n.getPlace().x == 6):
				n.setPiece("Knight", "Black")
			elif(n.getPlace().x == 2 || n.getPlace().x == 5):
				n.setPiece("Bishop", "Black")
			elif(n.getPlace().x == 3):
				n.setPiece("Queen", "Black")
			else:
				n.setPiece("King", "Black")
		elif(n.getPlace().y == 7):
			if(n.getPlace().x == 0 || n.getPlace().x == 7):
				n.setPiece("Rook", "White")
			elif(n.getPlace().x == 1 || n.getPlace().x == 6):
				n.setPiece("Knight", "White")
			elif(n.getPlace().x == 2 || n.getPlace().x == 5):
				n.setPiece("Bishop", "White")
			elif(n.getPlace().x == 3):
				n.setPiece("Queen", "White")
			else:
				n.setPiece("King", "White")
		
		
#Adds all of the tiles to the board
func generateBoard():
	var tiles = 0
	var y = 0
	var reverse = 0
	var count = 1
	while(tiles < 64):
		if(reverse == 8):
			if(count == 2):
				count = 1
			else:
				count = 2
			reverse = 0
			y += 1
		if(count == 2):
			var blackTemp = blackTile.instance()
			board.append(Tile.new("Black", Vector2(reverse, y), blackTemp))
			$Board.add_child(blackTemp)
			count = 1
		else:
			var whiteTemp = whiteTile.instance()
			board.append(Tile.new("White", Vector2(reverse, y), whiteTemp))
			$Board.add_child(whiteTemp)
			count = 2
		tiles += 1
		reverse += 1
