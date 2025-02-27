extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = str(testLogic.hour) # Replace with function body.
	testLogic.connect("time_updated", Callable(self, "_on_time_update"))

func _process(delta: float) -> void:
	text = str(testLogic.hour)
