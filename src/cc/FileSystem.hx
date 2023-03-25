package cc;

import haxe.extern.EitherType;

@:enum
abstract OpenFileMode(String) {
	var Read = "r";
	var Write = "w";
	var Append = "a";
	var BinaryRead = "rb";
	var BinaryWrite = "wb";
	var BinaryAppend = "ab";
}

extern class FileAttributes {
	var size:Int;
	var isDir:Bool;
	var isReadOnly:Bool;
	var created:Int;
	var modified:Int;
}

@:luaDotMethod
extern class FileHandle {
	public function readLine(?withTrailing:Bool):Null<String>;
	public function readAll():Null<String>;
	public function read(?count:Int):Null<String>;
	public function write(data:String):Void;
	public function writeLine(data:String):Void;
	public function flush():Void;
	public function seek(?whence:String, ?offset:Int):Void;
	public function close():Void;
}

@:native("fs")
extern class FileSystem {
    public static function complete(path:String, location:String, ?includeFiles:Bool, ?includeDirs:Bool):List<String>;
    public static function isDriveRoot(path:String):Bool;
    public static function list(path:String):List<String>;
    public static function combine(base:String, ?path:String):String;
    public static function getName(path:String):String;
    public static function getDir(path:String):String;
    public static function getSize(path:String):Int;
    public static function exists(path:String):Bool;
    public static function isDir(path:String):Bool;
    public static function isReadOnly(path:String):Bool;
    public static function makeDir(path:String):Bool;
    public static function move(source:String, dest:String):Void;
    public static function copy(source:String, dest:String):Void;
    public static function delete(path:String):Void;
	public static function open(path:String, mode:OpenFileMode):FileHandle;
	public static function getFreeSpace(path:String):EitherType<Int, String>;
	public static function find(path:String):List<String>;
	public static function getCapacity(path:String):EitherType<Int, Void>;
	public static function attributes(path:String):FileAttributes;
}