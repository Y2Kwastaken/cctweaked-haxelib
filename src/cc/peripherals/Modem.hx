package cc.peripherals;

import haxe.Rest;

extern class Modem {
	public static function open(channel:Int):Void;
	public static function isOpen(channel:Int):Bool;
	public static function close(channel:Int):Void;
	public static function closeAll():Void;
	public static function transmit(channel:Int, replyChannel:Int, payload:Dynamic):Void;
	public static function isWireless():Bool;
	public static function getNamesRemote():Array<String>;
	public static function isPresentRemote(name:String):Bool;
	public static function getTypeRemote(name:String):String;
	public static function hasTypeRemote(name:String, type:String):Bool;
	public static function getMethodsRemote(name:String):Array<String>;
	public static function callRemote(name:String, method:String, args:Rest<Dynamic>):Dynamic;
    public static function getNameLocal():String;
}
