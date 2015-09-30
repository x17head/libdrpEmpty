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
	var speed:Float = 50;
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
		if (Drp.get().controllers[0].B > 0) rotation += rotSpeed * delta;
		if (Drp.get().controllers[0].Y > 0) x += 50 * delta;
		if (Drp.get().mouseButton[0]) playMusic("music");
	}
	
	override public function draw(graphics:Graphics)
	{
		if(drawMe)drawImage("smile", x, y, graphics);
	}
}