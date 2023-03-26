package cc.peripherals;

@:luaDotMethod
extern class Computer {
	public function turnOn():Void;
	public function shutdown():Void;
	public function reboot():Void;
	public function getID():Int;
	public function isOn():Bool;
	public function getLabel():String;
}
