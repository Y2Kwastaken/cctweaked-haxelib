package cc;

import lua.Table;

@:native("_G")
extern class CCTweaked {
	public static function sleep(ms:Float):Void;
	public static function write(text:String):Void;
	public static function print(text:String):Int;
	public static function printError(text:String):Void;
	public static function read(?replaceChar:String, ?history:Table<Int, String>, ?completeFn:String->Table<Int, String>, ?defaultValue:String):String;
    
    public static var _HOST:String;
    public static var _CC_DEFAULT_SETTINGS:String;
}
