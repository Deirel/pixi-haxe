package pixi.core.display;

import pixi.core.display.Container;

@:native("PIXI.DisplayListData")
extern class DisplayListData {

	function new();

	var parent:Container;
}