package cc.ap.peripherals;

import lua.Table;

@:luaDotMethod
extern class EnvironmentDetector {

	

	public function getBiome():String;
	public function getBlockLightLevel():Int;
	public function getDayLightLevel():Int;
	public function getSkyLightLevel():Int;
	public function getDimensionName():String;
	public function getDimensionPaN():String;
	public function getDimensionPovider():String;
	public function getMoonId():Int;
	public function getMoonName():String;
	public function getTime():Int;
	public function getRadiation():Table<Dynamic, Dynamic>;
	public function getRadiationRaw():Int;
	public function isDimension(dimension:String):Bool;
	public function isMoon(moon:String):Bool;
	public function isRaining():Bool;
	public function isSunny():Bool;
	public function isThunder():Bool;
	public function isSlimeChunk():Bool;
	public function listDimensions():Table<Int, String>;
}
