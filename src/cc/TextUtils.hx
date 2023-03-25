package cc;

import lua.Table;

typedef SerializableObject = Dynamic;

extern class SerializerOptions {
	public var compact:Bool;
	public var allowReplications:Bool;
}

@:native("textutils")
extern class TextUtils {
	public static function slowWrite(text:String, ?rate:Int):Void;
	public static function slowPrint(text:String, ?rate:Int):Void;
	public static function formatTime(time:Float, ?TwentyFourHour:Bool):String;
	public static function pagedPrint(text:String, ?freeLines:Int):Void;
	public static function tabulate(format:Dynamic):Void;
	public static function pagedTabulate(format:Dynamic):Void;
	public static function serialize(value:SerializableObject, ?options:SerializerOptions):String;
	public static function unserialize(value:String):SerializableObject;
	public static function serializeJSON(value:SerializableObject, ?nbtStyle:Bool):String;
	public static function unserializeJSON(value:String):SerializableObject;
	public static function urlEncode(value:String):String;
	public static function complete(searchText:String, ?searchTable:Table<Int, String>):Array<String>;

	@:native("empty_json_array")
	public static var emptyJsonArray:Table<Dynamic, Dynamic>;
	@:native("json_null")
	public static var jsonNull:Dynamic;
}
