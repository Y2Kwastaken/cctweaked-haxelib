package cc;

import cc.Term.TerminalPosition;
import cc.Term.Terminal;

@:native("window")
@:luaDotMethod
extern class Window extends Terminal {
    public static function create(parent:Terminal, x:Int, y:Int, w:Int, h:Int, ?startVisible:Bool):Window;

    public function setVisible(visible:Bool):Void;
	public function redraw():Void;
	public function restoreCursor():Void;
	public function getPosition():TerminalPosition;
	public function reposition(x:Int, y:Int, ?width:Int, ?height:Int):Void;

}