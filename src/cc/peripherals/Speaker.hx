package cc.peripherals;

@:enum
abstract Instrument(String) {
	var Harp = "harp";
	var BaseDrum = "basedrum";
	var Snare = "snare";
	var Hat = "hat";
	var Bass = "bass";
	var Flute = "flute";
	var Bell = "bell";
	var Guitar = "guitar";
	var Chime = "chime";
	var Xylophone = "xylophone";
	var IronXylophone = "iron_xylophone";
	var CowBell = "cow_bell";
	var Didgeridoo = "didgeridoo";
	var Bit = "bit";
	var Banjo = "banjo";
	var Pling = "pling";
}

extern class Speaker {
	public static function playNote(instrument:Instrument, ?volume:Int, ?pitch:Int):Void;
	public static function playAudio(audio:Array<Int>, ?volume:Int):Void;
	public static function stop():Void;
}
