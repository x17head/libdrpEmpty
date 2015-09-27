package;

import libdrp.Entity;
import kha.graphics2.Graphics;
import kha.Image;
import kha.Loader;
import Std.random;
import libdrp.input.Gamepads;
/**
 * ...
 * @author Nate Edwards
 */
class TestEntity extends Entity
{
	
	var x:Float = 0;
	var y:Float = 0;
	var speed:Float = 50;
	var rotSpeed:Float = 0;
	var xDir:Float = 0;
	var yDir:Float = 0;
	var image:Image;
	
	var gamepads:Gamepads;

	public function new(x:Float,y:Float) 
	{
		this.x = x;
		this.y = y;
		image = Loader.the.getImage("smile");
		rotSpeed = (Math.random() * 10) - 5;
		
		gamepads = Gamepads.get();
		
		super();
	}
	
	override public function act(delta:Float) 
	{
		if (gamepads.controllers[0].A > 0) rotation += rotSpeed * delta;
	}
	
	override public function draw(graphics:Graphics)
	{
		drawImage(Loader.the.getImage("smile"), x, y, graphics);
	}
}