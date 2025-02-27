extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = str(testLogic.gameDay)
	testLogic.connect("time_updated", Callable(self, "_on_time_update"))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text = str(testLogic.gameDay)
