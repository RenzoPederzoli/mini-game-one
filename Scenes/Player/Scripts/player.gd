extends RigidBody2D

# Force/impulse strength for jumping
@export var jump_force: float = 400.0

func _physics_process(_delta: float) -> void:
    if Input.is_action_just_pressed("jump"):
        # Zero out vertical velocity for consistent jump height
        linear_velocity.y = 0

        # Apply upward impulse
        apply_impulse(Vector2(0, -jump_force))
