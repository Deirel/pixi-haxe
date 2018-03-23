package pixi.filters.drop_shadow;

import pixi.core.renderers.webgl.filters.Filter;

@:native("PIXI.filters.DropShadowFilter")
extern class DropShadowFilter extends Filter {

	/**
	 * Drop shadow filter.
	 *
	 * @class
	 * @extends AbstractFilter
	 * @memberof PIXI.filters
	 */
	function new(rotation:Float = 45, distance:Float = 5, blur:Float = 2, color:Int = 0x000000, alpha:Float = 0.5);

	/**
     * The alpha of the shadow.
     *
     * @member {Float}
     * @default 1
     */
	var alpha:Float;

	/**
     * The blur of the shadow
     *
     * @member {Float}
     * @default 2
     */
	var blur:Float;

	/**
     * The color of the shadow.
     *
     * @member {Int}
     * @default 0
     */
	var color:Int;

	/**
     * Distance offset of the shadow.
     *
     * @member {Float}
     * @default 5
     */
	var distance:Float;

	/**
     * The angle of the shadow in degrees
     *
     * @member {Float}
     * @default 2
     */
	var rotation:Float;
}