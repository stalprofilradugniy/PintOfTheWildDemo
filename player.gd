extends CharacterBody2D

const SPEED = 200
const JUMP_VELOCITY = -300

func _physics_process(delta):
    var direction = Input.get_axis("ui_left", "ui_right")
    velocity.x = direction * SPEED

    if is_on_floor():
        if Input.is_action_just_pressed("ui_jump"):
            velocity.y = JUMP_VELOCITY
    else:
        velocity.y += 500 * delta

    move_and_slide()
