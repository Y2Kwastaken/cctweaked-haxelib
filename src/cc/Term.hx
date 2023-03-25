package cc;

import cc.Colors.RGB;
import cc.Colors.Color;

@:multiReturn
extern class TerminalPosition {
	public var x:Int;
	public var y:Int;
}

@:multiReturn
extern class AspectRatio {
	public var width:Int;
	public var height:Int;
}

@:luaDotMethod
extern class Terminal {
	public static function write(text:String):Void;
	public static function scroll(y:Int):Void;
	public static function getCursorPos():TerminalPosition;
	public static function setCursorPos(x:Int, y:Int):Void;
	public static function getCursorBlink():Bool;
	public static function setCursorBlink(blink:Bool):Void;
	public static function getSize():AspectRatio;
	public static function clearLine():Void;
	public static function getTextColor():Color;
	public static function setTextColor(color:Color):Void;
	public static function getBackgroundColor():Color;
	public static function setBackgroundColor(color:Color):Void;
	public static function isColor():Bool;
	public static function blit(text:String, textColor:Color, backgroundfColor:Color):Void;
	public static overload function setPaletteColor(color:Color, r:Int, g:Int, b:Int):Void;
	public static overload function setPaletteColor(color:Color, rgb:Int):Void;
	public static function getPalleteColor(color:Color):RGB;
}

@:native("term")
extern class Term {
	// Unique to term
	@:native("nativePalleteColour")
	public static function nativePalleteColor(color:Color):Void;
	public static function redirect(terminal:Terminal):Terminal;
	public static function current():Terminal;
	public static function native():Terminal;

	// Same as Terminal
	public static function write(text:String):Void;
	public static function scroll(y:Int):Void;
	public static function getCursorPos():TerminalPosition;
	public static function setCursorPos(x:Int, y:Int):Void;
	public static function getCursorBlink():Bool;
	public static function setCursorBlink(blink:Bool):Void;
	public static function getSize():AspectRatio;
	public static function clearLine():Void;
	public static function getTextColor():Color;
	public static function setTextColor(color:Color):Void;
	public static function getBackgroundColor():Color;
	public static function setBackgroundColor(color:Color):Void;
	public static function isColor():Bool;
	public static function blit(text:String, textColor:Color, backgroundfColor:Color):Void;
	public static overload function setPaletteColor(color:Color, r:Int, g:Int, b:Int):Void;
	public static overload function setPaletteColor(color:Color, rgb:Int):Void;
}
