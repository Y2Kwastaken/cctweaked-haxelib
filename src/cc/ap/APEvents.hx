package cc.ap;

@:multiReturn
extern class ChatEvent {
	public var event:String;
	public var username:String;
	public var message:String;
	public var uuid:String;
	public var isHidden:Bool;
}

@:multiReturn
extern class PlayerClickDetectorEvent {
	public var event:String;
	public var username:String;
}
