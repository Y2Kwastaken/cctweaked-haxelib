package cc.peripherals;

@:luaDotMethod
extern class Printer {
	public function write(text:String):Void;
	public function getCursorPos():{x:Int, y:Int};
	public function setCursorPos(x:Int, y:Int):Void;
	public function getPageSize():{width:Int, height:Int};
	public function newPage():Void;
	public function endPage():Void;
	public function setPageTitle(title:String):Void;
	public function getInkLevel():Int;
	public function getPaperLevel():Int;
}
