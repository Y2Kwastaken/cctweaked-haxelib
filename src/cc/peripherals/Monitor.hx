package cc.peripherals;

import cc.Colors.Color;

extern class Monitor {
	public static function setTextScale(scale:Float):Void;
	public static function getTextScale():Float;
	public static function write(text:String):Void;
	public static function scroll(n:Int):Void;
	public static function getCursorPos():{x:Int, y:Int};
	public static function setCursorPos(x:Int, y:Int):Void;
	public static function getCursorBlink():Bool;
	public static function setCursorBlink(blink:Bool):Void;
	public static function getSize():{width:Int, height:Int};
	public static function clear():Void;
	public static function clearLine():Void;
	public static function getTextColor():Color;
	public static function setTextColor(color:Color):Void;
	public static function getBackgroundColor():Color;
	public static function setBackgroundColor(color:Color):Void;
	public static function isColor():Bool;
	public static function blit(text:String, textColour:Color, backgroundColour:Color):Void;
	public static overload function setPaletteColor(index:Int, color:Color):Void;
	public static overload function setPaletteColor(index:Int, rgb:{r:Int, g:Int, b:Int}):Void;
	public static function getPaletteColor(index:Int):Color;
}
