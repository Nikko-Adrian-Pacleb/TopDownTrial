extends CharacterBody2D

const speed = 300

var oldPos = position
var tempPos = position

func _ready():
	$AnimatedSprite2D.play("idle")
	
func _physics_process(delta):
	player_movement(delta)	

func player_movement(delta):
	velocity = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down") * speed
	
	move_and_slide()

func play_anim():
	var animation = $AnimatedSprite2D
	#animation.play("idle")
	if(velocity.x > 0):
		animation.play("idle")
