package cc.modules.image;

import cc.Term.Terminal;
import haxe.extern.EitherType;
import lua.Table;

typedef Image = Dynamic;

@:luaRequire("ccimage.nft")
extern class NFT {
    public static function parse(image:String):Image;
    public static function load(path:String):EitherType<Image, String>;
    public static function draw(image:Image, x:Int, y:Int, ?target:Terminal):Void;
}