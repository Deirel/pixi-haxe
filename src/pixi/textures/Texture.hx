package pixi.textures;

@:native("PIXI.Texture")
extern class Texture {
	
	/**
	 * A texture stores the information that represents an image or part of an image. It cannot be added
	 * to the display list directly. To do this use PIXI.Sprite. If no frame is provided then the whole image is used
	 *
	 * @class Texture
	 * @uses EventTarget
	 * @constructor
	 * @param baseTexture {BaseTexture} The base texture source to create the texture from
	 * @param frame {Rectangle} The rectangle frame of the texture to show
	 */
	function new (baseTexture:Dynamic, frame:Dynamic);
	
	/**
	 * Does this Texture have any frame data assigned to it?
	 */
	var noFrame:Bool;
	
	/**
	 * The base texture that this texture uses.
	 */
	var baseTexture:Dynamic;
	
	/**
	 * The frame specifies the region of the base texture that this texture uses
	 */
	var frame:Dynamic;
	
	/**
	 * The trim point
	 */
	var trim:Dynamic;
	
	/**
	 * This will let the renderer know if the texture is valid. If its not then it cannot be rendered.
	 */
	var valid:Bool;
	
	/**
	 * The WebGL UV data cache.
	 */
	var uvs:Dynamic;
	
	/**
	 * The width of the Texture in pixels.
	 */
	var width:Float;
	
	/**
	 * The height of the Texture in pixels.
	 */
	var height:Float;
	
	/**
	 * This is the area of the BaseTexture image to actually copy to the Canvas / WebGL when rendering,
	 * irrespective of the actual frame size or placement (which can be influenced by trimmed texture atlases)
	 */
	var crop:Dynamic;

	/**
	 * Specifies the region of the baseTexture that this texture will use.
	 *
	 * @method setFrame
	 * @param frame {Rectangle} The frame of the texture to set it to
	 */
	static function setFrame(frameId:Dynamic):Void;

	/**
	 * Helper function that returns a texture based on a frame id
	 * If the frame id is not in the texture cache an error will be thrown
	 *
	 * @static
	 * @method fromFrame
	 * @param frameId {String} The frame id of the texture
	 * @return Texture
	 */
	static function fromFrame(frameId:String):Texture;

	/**
	 * Helper function that returns a texture based on an image url
	 * If the image is not in the texture cache it will be  created and loaded
	 *
	 * @static
	 * @method fromImage
	 * @param imageUrl {String} The image url of the texture
	 * @param crossorigin {Boolean} Whether requests should be treated as crossorigin
	 * @param scaleMode {Number} Should be one of the PIXI.scaleMode consts
	 * @return Texture
	 */
	static function fromImage(imageId:String, ?crossorigin:Dynamic, ?scaleMode:Int):Texture;

	/**
	 * Helper function that returns a texture based on a canvas element
	 * If the canvas is not in the texture cache it will be  created and loaded
	 *
	 * @static
	 * @method fromCanvas
	 * @param canvas {Canvas} The canvas element source of the texture
	 * @param scaleMode {Number} Should be one of the PIXI.scaleMode consts
	 * @return Texture
	 */
	static function fromCanvas(canvas:Dynamic, ?scaleMode:Int):Texture;

	/**
	 * Adds a texture to the textureCache.
	 *
	 * @static
	 * @method addTextureToCache
	 * @param texture {Texture}
	 * @param id {String} the id that the texture will be stored against.
	 */
	static function addTextureToCache(texture:Dynamic, id:String):Void;

	/**
	 * Remove a texture from the textureCache.
	 *
	 * @static
	 * @method removeTextureFromCache
	 * @param id {String} the id of the texture to be removed
	 * @return {Texture} the texture that was removed
	 */
	static function removeTextureFromCache(id:String):Texture;
}