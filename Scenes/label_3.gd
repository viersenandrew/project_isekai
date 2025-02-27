extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	testLogic.connect("time_updated", Callable(self, "_on_time_update"))
	if testLogic.minute == 0:
		text = "00"
	else: 
		text = str(testLogic.minute) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text = str(testLogic.minute)
