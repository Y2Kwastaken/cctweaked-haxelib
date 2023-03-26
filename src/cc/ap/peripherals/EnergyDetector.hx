package cc.extras.peripherals;

@:luaDotMethod
extern class EnergyDetector {

    public static inline final NAME = "energyDetector";

	public function getTransferRate():Int;
	public function getTransferRateLimit():Int;
	public function setTransferRateLimit(limit:Int):Void;
}
