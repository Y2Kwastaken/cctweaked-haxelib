package cc.peripherals.generic;

import lua.Table;

extern class FluidStorage {
    public function tanks():Table<Int, Table<String, Any>>;
	public function pushFluid(toName:String, ?limit:Float, ?fluidName:String):Float;
	public function pullFluid(fromName:String, ?limit:Float, ?fluidName:String):Float;
}