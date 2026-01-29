extends Node

enum play {click, error, player_broke, sleep}

func play_sound(sfx : play):
	match sfx:
		play.click:
			$ButtonClick.play()
		play.error:
			$ErrorSound.play()
		play.player_broke:
			$YourBrokeSound.play()
		play.sleep:
			$SleepSound.play()
		
