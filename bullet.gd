extends CharacterBody2D
var bulletSprite
var wait_time = 0.0
var visivle_time = 0.5
var end_time = 2.0
var bulletDirection
var isAttackpressed = false
var fire_rate = 0.0
var next_fire = 0.2

func _ready():
	bulletDirection = global.global_direction
	set_process(true)
	bulletSprite = get_node("bullet2d") 
	get_node("CollisionShape2D").disabled = false
	pass
	
func _process(delta):
	if bulletDirection == -1:
		bulletSprite.set_flip_h(true)
		translate(Vector2(-5,0))
	else:
		bulletSprite.set_flip_h(false)
		translate(Vector2(5,0))
		
		fire_rate += delta
		if fire_rate >= next_fire:
			fire_rate =0.0
			isAttackpressed = false
			
		pass 
		
		
		
		
		
	
