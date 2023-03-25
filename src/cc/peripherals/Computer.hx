package cc.peripherals;

extern class Computer {
    public static function turnOn():Void;
    public static function shutdown():Void;
    public static function reboot():Void;
    public static function getID():Int;
    public static function isOn():Bool;
    public static function getLabel():String;
}