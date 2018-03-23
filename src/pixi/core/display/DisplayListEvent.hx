package pixi.core.display;

import pixi.core.display.DisplayObject;

@:native("PIXI.DisplayListEvent")
extern class DisplayListEvent {

	function new();

	var target:DisplayObject;

	var currentTarget:DisplayObject;

	var stopped:Bool;

	var type:String;

	var data:DisplayListData;
}