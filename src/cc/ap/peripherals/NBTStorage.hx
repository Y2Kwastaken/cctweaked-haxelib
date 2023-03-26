package cc.extras.peripherals;

import haxe.extern.EitherType;
import lua.Table;

@:multiReturn
extern class NBTWriteResult {
	public var success:Bool;
	public var error:String;
}

@:luaDotMethod
extern class NBTStorage {
	

	public function read():Table<String, Dynamic>;
	public function writeJson(json:String):NBTWriteResult;
	public function writeTable(nbt:Table<String, Dynamic>):NBTWriteResult;
}
