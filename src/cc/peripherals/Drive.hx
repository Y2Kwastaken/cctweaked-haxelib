package cc.peripherals;

@:luaDotMethod
extern class Drive {
	public function isDiskPresent():Bool;
	public function setDiskLabel(?label:String):Void;
	public function hasData():Bool;
	public function getMountPoint():String;
	public function hasAudio():Bool;
	public function getAudioTitle():String;
	public function playAudio():Void;
	public function stopAudio():Void;
	public function ejectDisk():Void;
	public function getDiskID():Int;
}
