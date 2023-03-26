package cc.peripherals;

@:multiReturn
extern class CommandResult {
	public var success:Bool;
	public var output:String;
}

@:luaDotMethod
extern class Command {
	public function getCommand():String;
	public function setCommand(command:String):Void;
	public function runCommand():CommandResult;
}
