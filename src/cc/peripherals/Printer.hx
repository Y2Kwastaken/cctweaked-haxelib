package cc.peripherals;

extern class Printer {
	public static function write(text:String):Void;
	public static function getCursorPos():{x:Int, y:Int};
	public static function setCursorPos(x:Int, y:Int):Void;
	public static function getPageSize():{width:Int, height:Int};
	public static function newPage():Void;
	public static function endPage():Void;
	public static function setPageTitle(title:String):Void;
	public static function getInkLevel():Int;
	public static function getPaperLevel():Int;
}
