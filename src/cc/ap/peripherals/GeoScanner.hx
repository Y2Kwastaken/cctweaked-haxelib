package cc.ap.peripherals;

import haxe.extern.EitherType;
import lua.Table;

@:multiReturn
extern class ChunkScanResult {
	public var blocks:Table<Int, BlockProperties>;
	public var error:String;
}

extern class BlockProperties {
	public var name:String;
	public var tags:Table<String, Dynamic>;
	public var x:Int;
	public var y:Int;
	public var z:Int;
}

extern class GeoScanner {
	public function getFuelLevel():Int;
	public function getFuelMaxLevel():Int;
	public function cost(radius:Int):Int;
	public function scan(radius:Int):ChunkScanResult;
	public function getScanCooldown():Int;
	public function chunkAnalyze():Table<String, Int>;
}
