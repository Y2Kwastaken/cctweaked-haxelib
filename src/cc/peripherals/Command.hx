package cc.peripherals;

@:multiReturn
extern class CommandResult {
    public var success: Bool;
    public var output: String;
}

extern class Command {
    public static function getCommand(): String;
    public static function setCommand(command: String): Void;
    public static function runCommand(): CommandResult;
}