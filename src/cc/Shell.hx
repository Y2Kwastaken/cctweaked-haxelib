package cc;

import haxe.Rest;

@:native("shell")
extern class Shell {
	public static function execute(command:String, args:Rest<String>):Bool;
	public static function run(args:Rest<String>):Bool;
	public static function exit():Void;
	public static function dir():String;
	public static function setDir(dir:String):Void;
	public static function path():String;
	public static function setPath(path:String):Void;
	public static function resolve(path:String):String;
	public static function resolveProgram(path:String):String;
	public static function programs(?includePrograms:Bool):Array<String>;
	public static function complete(sline:String):Array<String>;
	public static function completeProgram(program:String):Array<String>;
	public static function setCompletionFunction(program:String, f:Dynamic):Void;
	public static function getCompletionFunction(program:String):Dynamic;
	public static function getRunningProgram():String;
	public static function setAlias(alias:String, command:String):Void;
	public static function getAlias(alias:String):String;
	public static function aliases():Array<String>;
	public static function openTab(args:Rest<String>):Void;
	public static function switchTab(id:Int):Void;
}
