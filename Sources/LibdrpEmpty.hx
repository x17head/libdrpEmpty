package;

import libdrp.Screen;
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
	var drp:Drp;

	public function new() 
	{
		super("Duck");	
	}
	
	override function setup() 
	{
		mainScreen = new MainScreen();
		drp = new Drp();
		drp.get().addScreen("screen", mainScreen);
		drp.get().setScreen("screen");
	}
	
}