package cc.modules;

import haxe.macro.Expr.Function;

typedef DFPWMEncoder = {func:Array<Int>->String};
typedef DFPWMDecoder = {func:String->Array<Int>};

@:luaRequire("ccaudio.dfpwm")
extern class DFPWM {
	public static function make_encoder():DFPWMEncoder;
    public static function encode(input:Array<Int>):String;
    public static function make_decoder():DFPWMDecoder;
    public static function decode(input:String):Array<Int>;
}
