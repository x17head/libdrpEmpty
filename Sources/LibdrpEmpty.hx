package;

import libdrp.Scene;
import libdrp.View;
import libdrp.DrpGame;
import kha.graphics2.Graphics;
import Std.random;
import libdrp.Drp;

import MainScene;

/**
 * ...
 * @author Nate Edwards
 */
class LibdrpEmpty extends DrpGame
{
	var mainScreen:MainScene;

	public function new() 
	{
		super("LibdrpEmpty");	
	}
	
	override function setup() 
	{
		Drp.get().addScene("screen", new MainScene());
		Drp.get().setScene("screen");
	}
	
}