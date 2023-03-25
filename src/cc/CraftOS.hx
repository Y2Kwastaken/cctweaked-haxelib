package cc;

import haxe.Rest;
import lua.Table;
import lua.TableTools;

@:enum
abstract Locale(String) {
	var InGame = "ingame";
	var UTC = "utc";
	var Local = "local";
}

@:native("os")
extern class CraftOS {
	public static function sleep(time:Float):Void;
	public static function version():String;
	public static function run(environment:Table<Dynamic, Dynamic>, path:String, args:Rest<String>):Bool;
	public static function queueEvent(type:String, data:Rest<Dynamic>):Void;
	public static function startTimer(timeout:Float):Int;
	public static function cancelTimer(id:Int):Void;
	public static function setAlarm(time:Float):Int;
	public static function cancelAlarm(id:Int):Void;
	public static function shutdown():Void;
	public static function reboot():Void;
	public static function getComputerID():Int;
	public static function getComputerLabel():String;
	public static function setComputerLabel(label:String):Void;
	public static function clock():Float;
	public static function time(locale:Locale):Float;
	public static function days(?locale:Locale):Float;
	public static function epoch(?locale:Locale):Float;
	public static function date(?format:String, ?time:Float):String;

	@:native("pullEvent") private static function _pullEvent(?type:String):Dynamic;
	@:native("pullEventRaw") private static function _pullEventRaw(?type:String):Dynamic;

	public static inline function pullEvent(?type:String):Table<Int, Dynamic> {
		return cast TableTools.pack(_pullEvent(type));
	}

	public static inline function pullEventRaw(?type:String):Table<Int, Dynamic> {
		return cast TableTools.pack(_pullEventRaw(type));
	}
}
