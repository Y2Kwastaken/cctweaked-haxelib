package cc.ap.peripherals;

import lua.Table;

@:luaDotMethod
extern class PlayerDetector {

    

	public function getPlayerPos(username:String):Table<String, Dynamic>;
	public function getOnlinePlayers():Table<Int, Dynamic>;
	public function getPlayersInRange(range:Int):Table<Int, Dynamic>;
	public function getPlayersInCoords(posOne:{x:Int, y:Int, z:Int}, posTwo:{x:Int, y:Int, z:Int}):Table<Int, Dynamic>;
    public function getPlayersInCubic(w:Int, h:Int, d:Int):Table<Int, Dynamic>;
    public function isPlayerInRange(range:Int, username:String):Bool;
    public function isPlayerInCoords(posOne:{x:Int, y:Int, z:Int}, posTwo:{x:Int, y:Int, z:Int}, username:String):Bool;
    public function isPlayerInCubic(w:Int, h:Int, d:Int, username:String):Bool;
    public function isPlayersInRange(range:Int, usernames:Array<String>):Table<Int, Dynamic>;
    public function isPlayersInCoords(posOne:{x:Int, y:Int, z:Int}, posTwo:{x:Int, y:Int, z:Int}, usernames:Array<String>):Table<Int, Dynamic>;
    public function isPlayersInCubic(w:Int, h:Int, d:Int, usernames:Array<String>):Table<Int, Dynamic>;
}
