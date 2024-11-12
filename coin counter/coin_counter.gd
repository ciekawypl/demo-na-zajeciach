extends Label

var coins = 0

func _ready() -> void:
	var player : Player = get_tree().get_first_node_in_group("Player")
	
	if player:
		text = "Coins: " + str(player.coins)

func increaseCoins():
	coins += 1
	text = "Coins: " + str(coins)
