package cc;

import haxe.extern.EitherType;

@:native("pocket")
extern class Pocket {
    public static function equipBack():EitherType<Void, String>;
    public static function unEquipBack():EitherType<Void, String>;
}