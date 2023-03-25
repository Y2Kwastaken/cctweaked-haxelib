package cc.modules;

import haxe.Rest;
import cc.Colors.Color;

typedef Doc = Dynamic;

extern class PrettyPrintOptions {
    public var functionArgs:Bool;
    public var funtionSource:Bool;
}

@:luaRequire("ccpretty")
extern class Pretty {
    
    public static var empty:Doc;
    public static var space:Doc;
    public static var line:Doc;
    @:native("space_line")
    public static var spaceLine:Doc;
    public static function text(text:String, color:Color):Doc;
    public static function concat(docs:Rest<Doc>):Doc;
    public static function group(doc:Doc):Doc;
    public static function write(doc:Doc, ?ribbonFrac:Float):String;
    public static function print(doc:Doc, ?ribbonFrac:Float):Void;
    public static function render(doc:Doc, ?width:Int, ?ribbonFrac:Float):String;
    public static function pretty(obj:Dynamic, ?options:PrettyPrintOptions):Doc;
    public static function prettyPrint(obj:Dynamic, ?options:PrettyPrintOptions, ?ribbondFrac:Float):Void;
    
}