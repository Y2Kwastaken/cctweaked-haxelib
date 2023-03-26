package cc.peripherals;

import haxe.Rest;

@:luaDotMethod
extern class Modem {
	public function open(channel:Int):Void;
	public function isOpen(channel:Int):Bool;
	public function close(channel:Int):Void;
	public function closeAll():Void;
	public function transmit(channel:Int, replyChannel:Int, payload:Dynamic):Void;
	public function isWireless():Bool;
	public function getNamesRemote():Array<String>;
	public function isPresentRemote(name:String):Bool;
	public function getTypeRemote(name:String):String;
	public function hasTypeRemote(name:String, type:String):Bool;
	public function getMethodsRemote(name:String):Array<String>;
	public function callRemote(name:String, method:String, args:Rest<Dynamic>):Dynamic;
	public function getNameLocal():String;
}
