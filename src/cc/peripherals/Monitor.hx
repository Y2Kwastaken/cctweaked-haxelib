package cc.peripherals;

import cc.Colors.Color;

@:luaDotMethod
extern class Monitor {
	public function setTextScale(scale:Float):Void;
	public function getTextScale():Float;
	public function write(text:String):Void;
	public function scroll(n:Int):Void;
	public function getCursorPos():{x:Int, y:Int};
	public function setCursorPos(x:Int, y:Int):Void;
	public function getCursorBlink():Bool;
	public function setCursorBlink(blink:Bool):Void;
	public function getSize():{width:Int, height:Int};
	public function clear():Void;
	public function clearLine():Void;
	public function getTextColor():Color;
	public function setTextColor(color:Color):Void;
	public function getBackgroundColor():Color;
	public function setBackgroundColor(color:Color):Void;
	public function isColor():Bool;
	public function blit(text:String, textColour:String, backgroundColour:String):Void;
	public overload function setPaletteColor(index:Int, color:Color):Void;
	public overload function setPaletteColor(index:Int, rgb:{r:Int, g:Int, b:Int}):Void;
	public function getPaletteColor(index:Int):Color;
}
