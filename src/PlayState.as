package  
{
    import org.flixel.*;
	/**
	 * ...
	 * @author Mixta
	 */
	public class PlayState extends FlxState
	{
	// declare variables in here.
		private var map:Level1;
		private var player:Player;
		private var enemy:Enemy;
		private var background:FlxSprite;
		private var text:FlxText;
		
	override public function create():void 
		{
		background = new FlxSprite;
		background.loadGraphic(imgname, 320, 240, false);
		add(background);
		// whatever is added last is on the top!
		map = new Level1;
		add(map); //not added any map at all yet
		
		player = new Player;
		add(player);
		
		// add status on top so leave at the bottom of adding.
		text = new FlxText(30,30,400,"Ingame Text Here");
		text.visible = true;
		text.color = 0xFFFF0000;
		text.antialiasing = true;
		text.scrollfactor.x = text.scrollfactor.y = 0;
		add(text);
		
		
		}
		
	}

}
