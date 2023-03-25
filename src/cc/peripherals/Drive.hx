package cc.peripherals;

extern class Drive {
    public static function isDiskPresent():Bool;
    public static function setDiskLabel(?label:String):Void;
    public static function hasData():Bool;
    public static function getMountPoint():String;
    public static function hasAudio():Bool;
    public static function getAudioTitle():String;
    public static function playAudio():Void;
    public static function stopAudio():Void;
    public static function ejectDisk():Void;
    public static function getDiskID():Int;
}