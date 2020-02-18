extends Node

export var score = 0
export var lives = 3

func increase_score(s):
	score += int(s)
	find_node("Score").update_score()
 
func decrease_lives():
	lives -= 1
	find_node("Lives").update_lives()
	if lives <= 0:
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://Game Over.tscn")
