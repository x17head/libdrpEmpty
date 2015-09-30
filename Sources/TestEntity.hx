package;

import kha.audio1.SoundChannel;
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
	var speed:Float = 1;
	var rotSpeed:Float = 0;
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
	
	override public function update(delta:Float) 
	{
		x = x + (Drp.get().controllers[0].LANALOGX * speed);
		y = y + (Drp.get().controllers[0].LANALOGY * speed);
		
		rotation += rotSpeed * delta;
	}
	
	override public function draw(graphics:Graphics)
	{
		if(drawMe)drawImage("smile", x, y, graphics);
	}
}