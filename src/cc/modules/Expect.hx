package cc.modules;

import lua.Table;

@:luaRequire("ccexpect")
extern class Expect {
	public static function expect(index:Int, value:Dynamic, args:Array<String>):Dynamic;
	public static function field(tbl:Table<Dynamic, Dynamic>, index:Int, args:Array<String>):Dynamic;
	public static function range(num: Int, min:Int, max:Int):Int;
}
