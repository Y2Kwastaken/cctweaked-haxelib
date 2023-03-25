package cc;

import lua.Table;
import haxe.Rest;
import haxe.extern.EitherType;

@:multiReturn
extern class ExecutionResult {
	var successful:Bool;
	var ouput:List<String>;
	var affectedObjects:EitherType<Void, Int>;
}

@:multiReturn
extern class BlockPos {
    var x:Int;
    var y:Int;
    var z:Int;
}

extern class BlockInfo {
    var name:String;
    var metadata:Int;
    var state:Dynamic;
}

@:native("commands")
extern class Commands {
	public static function exec(command:String):ExecutionResult;
    public static function execAsync(command:String):Int;
    public static function list(args:Rest<String>):List<String>;
    public static function getBlockPosition(args:Rest<String>):BlockPos;
    public static function getBlockInfos(x1:Int, y1:Int, z1:Int, x2:Int, y2:Int, z2:Int):Table<Int, BlockInfo>;
	public static function getBlockInfo(x:Int, y:Int, z:Int):BlockInfo;
}
