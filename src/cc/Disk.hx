package cc;

@:native("disk")
extern class Disk {
	public static function isPresent(name:String):Bool;
	public static function getLabel(name:String):String;
	public static function setLabel(name:String, label:String):Void;
	public static function hasData(name:String):Bool;
	public static function getMountPath(name:String):String;
	public static function hasAudio(name:String):Bool;
	public static function getAudioTitle(name:String):String;
	public static function playAudio(name:String):Void;
	public static function stopAudio(name:String):Void;
	public static function eject(name:String):Void;
	public static function getID(name:String):String;
}
