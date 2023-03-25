package cc.modules;

@:luaRequire("ccstrings")
extern class CCStrings {
    public static function wrap(text:String, width:Int):Array<String>;
    @:native("ensure_width")
    public static function ensureWidth(line:String, ?width:Int):String;
}
