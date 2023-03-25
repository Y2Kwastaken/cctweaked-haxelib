package cc;

import cc.Colors.Color;
import lua.Table;

typedef Image = Table<Int, Table<Int, Int>>;

@:native("paintutils")
extern class PaintUtils {
	public static function parseImage(image:String):Image;
	public static function loadImage(path:String):Image;
	public static function drawImage(image:Image, x:Int, y:Int):Void;
	public static function drawPixel(x:Int, y:Int, ?color:Color):Void;
	public static function drawLine(startX:Int, startY:Int, endX:Int, endY:Int, ?color:Color):Void;
	public static function drawBox(startX:Int, startY:Int, endX:Int, endY:Int, ?color:Color):Void;
	public static function drawFilledBox(startX:Int, startY:Int, endX:Int, endY:Int, ?color:Color):Void;
}
