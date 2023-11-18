local soundsetutil = require "soundsetutil"

function data()

local data = soundsetutil.makeSoundSet()

soundsetutil.addTrackParam01
(data, "vehicle/train/v60/idle.wav", 25.0,
		{
			{ 0.0, 1.0 },
			{ 0.01, 1.0 },
			{ 0.1, 0.0 } },
		{
			{ 0.0, 1.0 },
			{ 1.0, 1.0 } },
		"speed01")


soundsetutil.addTrackParam01
(data, "vehicle/train/v60/slow.wav", 25.0,
		{
			{ 0.00, 0.0 },
			{ 0.01, 0.0},
			{ 0.10, 1.0},
			{ 0.75, 1.0 },
			{ 0.80, 0.0 }
		},
		{
			{ 0.0, 0.6 },
			{ 1.0, 1.0 }
		},
		"speed01")

		soundsetutil.addTrackParam01
(data, "vehicle/train/v60/speed.wav", 25.0,
		{
			{ 0.00, 0.0 },
			{ 0.75, 0.0},
			{ 0.80, 0.9},
			{ 1.00, 1.0 }
		},
		{
			{ 0.0, 0.8 },
			{ 1.0, 1.2 }
		},
		"speed01")


soundsetutil.addEvent(data, "horn", { "vehicle/train/v60/horn.wav" }, 25.0)

soundsetutil.addTrackSqueal(data, "vehicle/train/v60/kurve.wav", 25.0)
soundsetutil.addTrackBrake(data, "vehicle/train/v60/bremsen.wav", 25.0, 1.0)

return data

end
