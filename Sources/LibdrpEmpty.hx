package;

import libdrp.Scene;
import libdrp.View;
import libdrp.DrpGame;
import kha.graphics2.Graphics;
import Std.random;
import libdrp.Drp;

import MainScreen;

/**
 * ...
 * @author Nate Edwards
 */
class LibdrpEmpty extends DrpGame
{
	var mainScreen:MainScreen;

	public function new() 
	{
		super("LibdrpEmpty");	
	}
	
	override function setup() 
	{
		Drp.get().addScene("screen", new MainScreen());
		Drp.get().setScene("screen");
	}
	
}