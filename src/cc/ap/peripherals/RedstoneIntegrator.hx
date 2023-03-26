package cc.ap.peripherals;

extern class RedstoneIntegrator {
    

    public function getInput(side:String):Bool;
    public function getOutput(side:String):Bool;
    public function getAnalogueInput(side:String):Int;
    public function getAnalogueOutput(side:String):Int;
    public function setOutput(side:String, value:Bool):Void;
    public function setAnalogueOutput(side:String, value:Int):Void;
}