package cc;

import lua.FileHandle;

@:multiReturn
extern class AlarmCompleteEvent {
	public var event:String;
	public var id:Int;
}

@:multiReturn
extern class ComputerTypeCharEvent {
	public var event:String;
	public var character:String;
}

@:multiReturn
extern class ComputerCraftCommandEvent {
	public var event:String;
	public var args:Array<String>;
}

@:multiReturn
extern class DiskInsertionEvent {
	public var event:String;
	public var side:String;
}

@:multiReturn
extern class DiskEjectEvent {
	public var event:String;
	public var side:String;
}

@:luaDotMethod
extern class TransferredFile extends FileHandle {
	public function getName():String;
}

typedef TransferredFiles = Array<TransferredFile>;

@:multiReturn
extern class FileTransferEvent {
	public var event:String;
	public var transferred:TransferredFiles;
}

@:multiReturn
extern class HttpCheckEvent {
	public var event:String;
	public var url:String;
	public var success:Bool;
	public var error:String;
}

@:multiReturn
extern class HttpFailureEvent {
	public var event:String;
	public var url:String;
	public var error:String;
	public var response:HTTP.HTTPResponse;
}

@:multiReturn
extern class HttpSuccessEvent {
	public var event:String;
	public var url:String;
	public var response:HTTP.HTTPResponse;
}

@:multiReturn
extern class ComputerPressKeyEvent {
	public var event:String;
	public var key:Int;
	public var holding:Bool;
}

@:multiReturn
extern class ComputerKeyUpEvent {
	public var event:String;
	public var key:Int;
}

@:multiReturn
extern class ModemMessageEvent {
	public var event:String;
	public var side:String;
	public var channel:Int;
	public var replyChannel:Int;
	public var message:Dynamic;
	public var distance:Float;
}

@:multiReturn
extern class MonitorResizeEvent {
	public var event:String;
	public var sideOrNetworkId:String;
}

@:multiReturn
extern class MonitorTouchEvent {
	public var event:String;
	public var sideOrNetworkId:String;
	public var x:Int;
	public var y:Int;
}

@:multiReturn
extern class TerminalClickEvent {
	public var event:String;
	public var button:Int;
	public var x:Int;
	public var y:Int;
}

@:multiReturn
extern class TerminalDragEvent {
	public var event:String;
	public var button:Int;
	public var x:Int;
	public var y:Int;
}

@:multiReturn
extern class TerminalScrollEvent {
	public var event:String;
	public var direction:Int;
	public var x:Int;
	public var y:Int;
}

@:multiReturn
extern class TerminalClickReleaseEvent {
	public var event:String;
	public var button:Int;
	public var x:Int;
	public var y:Int;
}

@:multiReturn
extern class ComputerPasteEvent {
	public var event:String;
	public var value:String;
}

@:multiReturn
extern class PeripheralAttachEvent {
	public var event:String;
	public var side:String;
}

@:multiReturn
extern class PeripheralDetachEvent {
	public var event:String;
	public var side:String;
}

@:multiReturn
extern class RedNetMessageEvent {
	public var event:String;
	public var senderId:Int;
	public var message:Dynamic;
	public var protocol:String;
}

@:multiReturn
extern class RedstoneInputChangeEvent {
	public var event:String;
}

@:multiReturn
extern class SpeakerAudioEmptyEvent {
	public var event:String;
	public var speakerName:String;
}

@:multiReturn
extern class TaskCompleteEvent {
	public var event:String;
	public var id:Int;
	public var success:Bool;
	public var error:String;
	public var params:Dynamic;
}

@:multiReturn
extern class TerminalResizeEvent {
	public var event:String;
}

@:multiReturn
extern class TerminateEvent {
	public var event:String;
}

@:multiReturn
extern class TimerCompleteEvent {
	public var event:String;
	public var id:Int;
}

@:multiReturn
extern class TurtleInventoryChangeEvent {
	public var event:String;
}

@:multiReturn
extern class WebSocketCloseEvent {
	public var event:String;
	public var url:String;
}

@:multiReturn
extern class WebSocketFailureEvent {
	public var event:String;
	public var url:String;
	public var error:String;
}

@:multiReturn
extern class WebSocketMessageEvent {
	public var event:String;
	public var url:String;
	public var message:String;
	public var binary:Bool;
}

@:multiReturn
extern class WebSocketSuccessEvent {
	public var event:String;
	public var url:String;
}
