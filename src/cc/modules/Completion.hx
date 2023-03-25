package cc.modules;

@:luaRequire("ccshell.completion")
extern class Completion {
	public static function choice(text:String, choices:Array<String>, ?addSpace:Bool):Array<String>;
    public static function peripheral(text:String, ?addSpace:Bool):Array<String>;
    public static function side(text:String, ?addSpace:Bool):Array<String>;
    public static function setting(text:String, ?addSpace:Bool):Array<String>;
    public static function command(text:String, ?addSpace:Bool):Array<String>;
}
