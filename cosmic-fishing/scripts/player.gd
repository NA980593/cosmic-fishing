extends XRController3D

@export var labelImModding: Label3D
@export var hand_node_path: NodePath  

var isTriggerPressed := false
var isGripped := false

var hand: XRToolsHand

func _ready() -> void:
	button_pressed.connect(btnPressed)
	button_released.connect(btnReleased)

	hand = get_node_or_null(hand_node_path)
	if hand == null:
		push_error("Missing XRToolsHand at %s" % hand_node_path)

func btnPressed(btnName: String) -> void:
	if btnName == "trigger_click":
		isTriggerPressed = true
		_update_hand_pose()

	if btnName == "grip_click":
		isGripped = true
		_update_hand_pose()

func btnReleased(btnName: String) -> void:
	if btnName == "trigger_click":
		isTriggerPressed = false
		_update_hand_pose()

	if btnName == "grip_click":
		isGripped = false
		_update_hand_pose()

func _update_hand_pose() -> void:
	if hand == null:
		return

	if isGripped:
		hand.set_hand_pose("grip")
	elif isTriggerPressed:
		hand.set_hand_pose("grip") 
	else:
		hand.set_hand_pose("open")

func onTheLine():
	pass
