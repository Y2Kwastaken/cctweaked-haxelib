package cc.modules.shell;

typedef Shell = Dynamic;

@:luaRequire("ccshell.completion")
extern class Completion {
    public static function file(shell:Shell, text:String):Array<String>;
    public static function dir(shell:Shell, text:String):Array<String>;
    public static function dirOrFile(shell:Shell, text:String, previous:Array<String>, ?addSpace:Bool):Array<String>;
    public static function program(shell:Shell, text:String):Array<String>;
    public static function programWithArgs(shell:Shell, text:String, previous:Array<String>, starting:Int):Array<String>;
}