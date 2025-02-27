extends Timer

func _on_timeout() -> void:
	testLogic.gameTime+= 4;
	testLogic.minute+= 10;
	print(testLogic.gameTime);
	print(testLogic.minute);
	
	if testLogic.minute == 60:
			testLogic.hour += 1
			testLogic.minute -= 60

	if testLogic.hour >= 13 and testLogic.pm == true:
			print("Switching to AM. Current Hour:", testLogic.hour)
			testLogic.pm = false
			testLogic.hour = 1
			testLogic.gameDay += 1
			print("It's AM");
		
	if testLogic.hour >= 13:
			testLogic.pm = true
			testLogic.hour = 1
			print("It's PM")

	start(4.0)
