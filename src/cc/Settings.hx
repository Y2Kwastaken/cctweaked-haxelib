package cc;

extern class Options {
	public var description:String;
	public var defaultValue:Dynamic;
	public var type:String;
}

extern class SettingDetails {
	public var description:String;
	public var defaultValue:Dynamic;
	public var type:String;
	public var value:Dynamic;
}

@:native("settings")
extern class Settings {
	public static function define(name:String, ?options:Options):Void;
	public static function undefine(name:String):Void;
	public static function get(name:String):Dynamic;
	public static function getDetails(name:String):SettingDetails;
	public static function unset(name:String):Void;
	public static function clear():Void;
	public static function list():Array<String>;
	public static function load(spath:String):Bool;
	public static function save(spath:String):Bool;

	@:native("set") public static function _set(name:String, value:Dynamic):Void;

	public static inline function set(name:String, value:String):Void {
		_set(name, TextUtils.serialize(value));
	}
}
