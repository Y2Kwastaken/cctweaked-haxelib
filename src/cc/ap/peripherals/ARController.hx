package cc.ap.peripherals;

@:multiReturn
extern class RelativeModeResult {
	public var isOn:Bool;
	public var x:Int;
	public var y:Int;
}

extern class ARController {
	

	public function clear():Void;
	public function clearElement(id:String):Void;
	public function horizontalLine(minX:Int, maxX:Int, y:Int, color:Int):Void;
	public function horizontalLineWithId(id:String, minX:Int, maxX:Int, y:Int, color:Int):Void;
	public function vericalLine(x:Int, minY:Int, maxY:Int, color:Int):Void;
	public function vericalLineWithId(id:String, x:Int, minY:Int, maxY:Int, color:Int):Void;
	public function drawString(text:String, x:Int, y:Int, color:Int):Void;
	public function drawStringWithId(id:String, text:String, x:Int, y:Int, color:Int):Void;
	public function drawCenteredString(text:String, x:Int, y:Int, color:Int):Void;
	public function drawCenteredStringWithId(id:String, text:String, x:Int, y:Int, color:Int):Void;
	public function drawRightboundString(text:String, x:Int, y:Int, color:Int):Void;
	public function drawRightboundStringWithId(id:String, text:String, x:Int, y:Int, color:Int):Void;
	public function drawItemIcon(itemId:String, x:Int, y:Int):Void;
	public function drawItemIconWithId(id:String, itemId:String, x:Int, y:Int):Void;
	public function drawCircleWithId(id:String, x:Int, y:Int, radius:Int, color:Int):Void;
	public overload function fill(minX:Int, minY:Int, maxX:Int, maxY:Int, color:Int):Void;
	public overload function fill(id:String, minX:Int, minY:Int, maxX:Int, maxY:Int, color:Int):Void;
	public function fillCircle(x:Int, y:Int, radius:Int, color:Int):Void;
	public function fillCircleWithId(id:String, x:Int, y:Int, radius:Int, color:Int):Void;
	public function fillGradient(minX:Int, minY:Int, maxX:Int, maxY:Int, colorFrom:Int, colorTo:Int):Void;
	public function fillGradientWithId(id:String, minX:Int, minY:Int, maxX:Int, maxY:Int, colorFrom:Int, colorTo:Int):Void;
	public function isRelativeMode():RelativeModeResult;
	public function setRelativeMode(enabled:Bool, ?virtualScreenWidth:Int, ?virtaulScreenHeight:Int):Void;
}
