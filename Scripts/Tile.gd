extends Object

class_name Tile

var color : String
var place : Vector2
var piece : String
var pieceColor: String
var tile: Node

#Piece Textures#

#BLACK#
var bPawn = load("res://Textures/Pieces/chess-pawn-black.png")
var bRook = load("res://Textures/Pieces/chess-rook-black.png")
var bKnight = load("res://Textures/Pieces/chess-knight-black.png")
var bBishop = load("res://Textures/Pieces/chess-bishop-black.png")
var bQueen = load("res://Textures/Pieces/chess-queen-black.png")
var bKing = load("res://Textures/Pieces/chess-king-black.png")

#WHITE#
var wPawn = load("res://Textures/Pieces/chess-pawn-white.png")
var wRook = load("res://Textures/Pieces/chess-rook-white.png")
var wKnight = load("res://Textures/Pieces/chess-knight-white.png")
var wBishop = load("res://Textures/Pieces/chess-bishop-white.png")
var wQueen = load("res://Textures/Pieces/chess-queen-white.png")
var wKing = load("res://Textures/Pieces/chess-king-white.png")


func _init(tileColor:String, tilePlace:Vector2, currenttile:Node)->void:
	color = tileColor
	place = tilePlace
	piece = ""
	pieceColor = ""
	tile = currenttile
	
func getPlace()->Vector2:
	return place

func getColor()->String:
	return color
	
func getPiece()->String:
	if(piece == ""):
		return ""
	else:
		return pieceColor

func getTile()->Node:
	return tile
		
func setPiece(p:String, c:String)->void:
	piece = p
	pieceColor = c
	
	if(piece == "Pawn"):
		if(pieceColor == "White"):
			tile.get_node("TextureRect").texture = wPawn
		else:
			tile.get_node("TextureRect").texture = bPawn
	elif(piece == "Knight"):
		if(pieceColor == "White"):
			tile.get_node("TextureRect").texture = wKnight
		else:
			tile.get_node("TextureRect").texture = bKnight
	elif(piece == "Queen"):
		if(pieceColor == "White"):
			tile.get_node("TextureRect").texture = wQueen
		else:
			tile.get_node("TextureRect").texture = bQueen
	elif(piece == "King"):
		if(pieceColor == "White"):
			tile.get_node("TextureRect").texture = wKing
		else:
			tile.get_node("TextureRect").texture = bKing
	elif(piece == "Rook"):
		if(pieceColor == "White"):
			tile.get_node("TextureRect").texture = wRook
		else:
			tile.get_node("TextureRect").texture = bRook
	elif(piece == "Bishop"):
		if(pieceColor == "White"):
			tile.get_node("TextureRect").texture = wBishop
		else:
			tile.get_node("TextureRect").texture = bBishop
	
func pieceClear()->void:
	piece = ""
	pieceColor = ""
	
	
