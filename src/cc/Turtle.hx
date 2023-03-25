package cc;

import haxe.extern.EitherType;

@:multiReturn
extern class TurtleActionResult {
	var success:Bool;
	var message:String;
}

extern class TurtleItemDetail {
	public var name:String;
	public var damage:Int;
	public var count:Int;
}

extern class TurtleBlockDetail {
	public var name:String;
	public var metadata:Int;
	public var state:Map<String, Dynamic>;
}

@:multiReturn
extern class TurtleInspectResult {
	var success:Bool;
	var result:EitherType<String, TurtleBlockDetail>;
}

@:native("turtle")
extern class Turtle {
	public static function forward():TurtleActionResult;
	public static function back():TurtleActionResult;
	public static function up():TurtleActionResult;
	public static function down():TurtleActionResult;
	public static function turnLeft():TurtleActionResult;
	public static function turnRight():TurtleActionResult;
	public static function dig(?side:String):TurtleActionResult;
	public static function digUp(?side:String):TurtleActionResult;
	public static function digDown(?side:String):TurtleActionResult;
	public static function place(?side:String):TurtleActionResult;
	public static function placeUp(?side:String):TurtleActionResult;
	public static function placeDown(?side:String):TurtleActionResult;
	public static function drop(?count:Int):TurtleActionResult;
	public static function dropUp(?count:Int):TurtleActionResult;
	public static function dropDown(?count:Int):TurtleActionResult;
	public static function select(count:Int):Bool;
	public static function getItemCount(?slot:Int):Int;
	public static function getItemSpace(?slot:Int):Int;
	public static function detect():Bool;
	public static function detectUp():Bool;
	public static function detectDown():Bool;
	public static function compare():Bool;
	public static function compareUp():Bool;
	public static function compareDown():Bool;
	public static function attack(?side:String):TurtleActionResult;
	public static function attackUp(?side:String):TurtleActionResult;
	public static function attackDown(?side:String):TurtleActionResult;
	public static function suck(?count:Int):TurtleActionResult;
	public static function suckUp(?count:Int):TurtleActionResult;
	public static function suckDown(?count:Int):TurtleActionResult;
	public static function getFuelLevel():Int;
	public static function refuel(?count:Int):TurtleActionResult;
	public static function compareTo(slot:Int):Bool;
	public static function transferTo(slot:Int, ?count:Int):Bool;
	public static function getSelectedSlot():Int;
	public static function getFuelLimit():Int;
	public static function equipLeft():TurtleActionResult;
	public static function equipRight():TurtleActionResult;
	public static function inspect():TurtleInspectResult;
    public static function inspectUp():TurtleInspectResult;
    public static function inspectDown():TurtleInspectResult;
    public static function getItemDetail(slot:Int, ?detailed:Bool):TurtleItemDetail;
    

}
