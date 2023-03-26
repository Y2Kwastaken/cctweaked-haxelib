package cc.extras.peripherals;

import lua.Table;

@:luaDotMethod
extern class BlockReader {
	

	public function getBlockName():String;
    public function getBlockData():Table<String, Dynamic>;
    
}
