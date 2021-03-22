package cc.periphs;

@:multiReturn
extern class Position {
	var x:Int;
	var y:Int;
}

typedef Color = Int;

@:multiReturn
extern class ColorData {
	var r:Float;
	var g:Float;
	var b:Float;
}

extern class Monitor {
	public static function setTextScale(scale:Float):Void; // Set the scale of this monitor.
	public static function getTextScale():Float; // Get the monitor's current text scale.
	public static function write(text:String):Void; // Write text at the current cursor position, moving the cursor to the end of the text.
	public static function scroll(y:Int):Void; // Move all positions up (or down) by y pixels.
	public static function getCursorPos():Position; // Get the position of the cursor.
	public static function setCursorPos(x:Int, y:Int):Void; // et the position of the cursor.
	public static function getCursorBlink():Bool; // Checks if the cursor is currently blinking.
	public static function setCursorBlink(blink:Bool):Void; // Sets whether the cursor should be visible (and blinking) at the current cursor position.
	public static function getSize():Int; // Get the size of the terminal.
	public static function clear():Void; // Clears the terminal, filling it with the current background colour.
	public static function clearLine():Void; // Clears the line the cursor is currently on, filling it with the current background colour.
	public static function getTextColour():Color; // Return the colour that new text will be written as.
	public static function getTextColor():Color; //	Return the colour that new text will be written as.
	public static function setTextColour(colour:Color):Void; //	Set the colour that new text will be written as.
	public static function setTextColor(colour:Color):Void; // Set the colour that new text will be written as.
	public static function getBackgroundColour():Color; // Return the current background colour.
	public static function getBackgroundColor():Color; // Return the current background colour.
	public static function setBackgroundColour(colour:Color):Void; // Set the current background colour.
	public static function setBackgroundColor(colour:Color):Void; // Set the current background colour.
	public static function isColour():Bool; // Determine if this terminal supports colour.
	public static function isColor():Bool; // Determine if this terminal supports colour.
	public static function blit(text:String, textColour:String,
		backgroundColour:String):Void; // Writes text to the terminal with the specific foreground and background characters.
	public static function setPaletteColour(index:Color, packedColour:Int):Void; // Set the palette for a specific colour.
	public static function setPaletteColor(index:Color, packedColour:Int):Void; // Set the palette for a specific colour.
	public static function getPaletteColour(colour:Color):ColorData; // Get the current palette for a specific colour.
	public static function getPaletteColor(colour:Color):ColorData; // Get the current palette for a specific colour.
}
