package cc.ap.peripherals;

import lua.Table;

@:multiReturn
extern class ItemProperties {
	public var name:String;
	public var count:Int;
	public var maxStackSize:Int;
	public var displayName:String;
	public var slot:Int;
	public var tags:Table<String, Dynamic>;
	public var nbt:Table<String, Dynamic>;
}

@:luaDotMethod
extern class InventoryManager {
	public static inline final NAME = "inventoryManager";

	@:deprecated
	public function addItemToPlayer(direction:String, count:Int, ?slot:Int, ?item:String):Int;
	@:deprecated
	public function addItemToPlayerNBT(direction:String, count:Int, ?slot:Int, ?item:Table<String, Dynamic>):Int;
	@:deprecated
	public function removeItemFromPlayer(direction:String, count:Int, ?slot:Int, ?item:String):Int;
	@:deprecated
	public function removeItemFromPlayerNBT(direction:String, count:Int, ?slot:Int, ?item:Table<String, Dynamic>):Int;
	public function getArmor():Table<String, ItemProperties>;
	public function getOwner():String;
	public function isPlayerEquipped():Bool;
	public function isWearing(item:String):Bool;
	public function getItemInHand():ItemProperties;
	public function getItemInOffHand():ItemProperties;
	public function getFreeSlot():Int;
	public function isSpaceAvaliable(count:Int):Bool;
	public function getEmptySpace():Int;
}
