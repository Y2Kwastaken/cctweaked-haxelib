package cc.ap.peripherals;

import haxe.extern.EitherType;

@:luaDotMethod
extern class ChatBox {

    

	public function sendMessage(message:String, ?prefix:String, ?brackets:String, ?bracketColor:String, ?range:Int):EitherType<Bool, String>;
	public function sendMessageToPlayer(message:String, username:String, ?prefix:String, ?brackets:String, ?bracketColor:String):EitherType<Bool, String>;
	public function sendFormattedMessage(json:String, ?prefix:String, ?brackets:String, ?bracketColor:String):EitherType<Bool, String>;
	public function sendFormattedMessageToPlayer(json:String, username:String, ?prefix:String, ?brackets:String,
		?bracketColor:String):EitherType<Bool, String>;
}
