package;

import libdrp.Entity;
import kha.graphics2.Graphics;
import kha.Image;
import kha.Loader;
import Std.random;
import libdrp.Drp;
/**
 * ...
 * @author Nate Edwards
 */
class TestEntity extends Entity
{
	var speed:Float = 50;
	var rotSpeed:Float = 0;
	var image:Image;
	var drawMe:Bool = true;

	public function new(x:Float,y:Float) 
	{
		super();
		this.x = x;
		this.y = y;
		width = 16;
		height = 16;
		rotSpeed = (Math.random() * 10) - 5;	
	}
	
	override public function load()
	{
		image = Loader.the.getImage("smile");		
	}
	
	override public function update(delta:Float) 
	{
		if (Drp.get().controllers[0].A > 0) rotation += rotSpeed * delta;
		//rotation += rotSpeed * delta;		
	}
	
	override public function draw(graphics:Graphics)
	{
		if(drawMe)drawImage(image, x, y, graphics);
	}
}