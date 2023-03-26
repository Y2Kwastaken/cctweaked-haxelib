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
@:luaDotMethod
extern class Speaker {
	public function playNote(instrument:Instrument, ?volume:Int, ?pitch:Int):Void;
	public function playAudio(audio:Array<Int>, ?volume:Int):Void;
	public function stop():Void;
}
