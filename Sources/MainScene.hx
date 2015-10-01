package;

import libdrp.Scene;
import libdrp.View;
import kha.Loader;
import libdrp.View.ViewProperties;
/**
 * ...
 * @author Nate Edwards
 */
class MainScene extends Scene
{
	
	public function new() 
	{
		super();
		var view = new View(0, 0, 640, 480, 160, 120);
		for (i in 0...1) view.addEntity(new TestEntity(Std.random(160) - 8, Std.random(120) - 8));
		loadAssets("default");
		addView(view);
	}
	
}