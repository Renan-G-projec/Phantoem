# Ad Maiorem Dei Gloriam!
class_name Utils
extends Node

# Prints only on the editor build
static func print(args: String) -> void:
	if OS.has_feature("editor"):
		print("DEBUG: ", args)
