extends Node2D

@export var mainGameScene : PackedScene;



func _on_new_game_button_pressed():
	get_tree().change_scene_to_file("res://room_1.tscn")


func _on_level_s_button_pressed():
	get_tree().change_scene_to_file("res://Menu/levelselect.tscn")
	


func _on_settings_button_pressed():
	print("settings")


func _on_creditsbutton_pressed():
	print("credits")
	get_tree().change_scene_to_file("res://Menu/Credits.tscn")
	#var credits = load("res://Credits.tscn").instance()
	#get_tree().current_scene.add_child(credits)


func _on_quitbutton_pressed():
	get_tree().quit()


func _on_level_1_button_pressed():
	print("level1")
	


func _on_level_2_button_pressed():
	print("level2")


func _on_level_3_button_pressed():
	print("level3")


func _on_backbutton_pressed():
	get_tree().change_scene_to_file("res://Menu/MainMenu.tscn")
	


func _on_backtomainmenu_pressed():
	get_tree().change_scene_to_file("res://Menu/MainMenu.tscn")


func _on_controlsbutton_pressed():
	get_tree().change_scene_to_file("res://Menu/MainMenu.tscn")
