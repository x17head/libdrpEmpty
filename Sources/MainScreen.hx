package;

import libdrp.Screen;
import libdrp.View;
import kha.Loader;
/**
 * ...
 * @author Nate Edwards
 */
class MainScreen extends Screen
{
	var view:View;
	
	public function new() 
	{
		super();
		view = new View(0, 0, 640, 480, 160, 120);
		for (i in 0...100) view.addEntity(new TestEntity(Std.random(160) - 8, Std.random(120) - 8));
		addView(view);
		loadAssets("default");
	}
	
}