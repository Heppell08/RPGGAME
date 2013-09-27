package  
{
	import org.flixel.FlxG;
	import org.flixel.FlxSprite;
	import org.flixel.FlxState;
	import org.flixel.FlxText;
	import org.flixel.FlxU;
	import org.flixel.*;
	/**
	 * ...
	 * @author ...
	 * Chipacabra menu. Its nice!
	 */
	public class MenuState extends FlxState
	{
		
		static public const OPTIONS:int = 3; // how many options there is
		
		static public const TEXT_SPEED:Number = 150;
		
		private var background:FlxSprite;
		private var text1:FlxText;
		private var text2:FlxText;
		private var text3:FlxText;
		private var text4:FlxText;
		private var text5:FlxText;
		
		private var pointer:FlxSprite;
		private var option:int;
		override public function create():void
		{
			FlxG.flash.start(0xff000000, 1);
			background = new FlxSprite(0, 0, Assets.imgback);
			add(background);
			
			text1 = new FlxText(-220, FlxG.height / 4, 320,  "GAMES");
			text1.size = 40;
			text1.color = 0xff1100;
			text1.antialiasing = true;
			add(text1);
			
			text2 = new FlxText(FlxG.width -50, FlxG.height / 2.5, 320, "NAME");
			text2.size = text1.size
			text2.color = text1.color
			text2.antialiasing = text1.antialiasing
			add(text2);
			
			text3 = new FlxText(FlxG.width * 2 / 3, FlxG.height * 2 / 3, 150, "Play Game");
			text4 = new FlxText(FlxG.width * 2 / 3, FlxG.height * 2 / 3 + 30, 150, "Controls");
			text5 = new FlxText(FlxG.width * 2 / 3, FlxG.height * 2 / 3 + 60, 150, "Load Game");
			text3.color = text4.color = text5.color = 0xAAFFFF00;
			text3.size = text4.size = text5.size = 16;
			text3.antialiasing = text4.antialiasing = text5.antialiasing = true;
			add(text3);
			add(text4);
			add(text5);
			
			pointer = new FlxSprite();
			pointer.loadGraphic(Assets.imgPoint);
			pointer.x = text3.x - pointer.width - 10;
			add(pointer);
			option = 0;
			super.create();
			}
			
			override public function update():void
			{
				switch(option)
				{
				case 0: 
					pointer.y = text3.y;
					break;
				case 1:
					pointer.y = text4.y;
					break;
				case 2:
					pointer.y = text5.y;
					break;
			}
			if (text1.x < FlxG.width / 5)
			text1.velocity.x = TEXT_SPEED;
			else text1.velocity.x = 0;
			if (text2.x > FlxG.width / 2.5)
			text2.velocity.x = -TEXT_SPEED;
			else text2.velocity.x = 0;
			if (FlxG.keys.justPressed("UP"))
			option = (option +OPTIONS - 1) % OPTIONS;
			if (FlxG.keys.justPressed("DOWN"))
			option = (option +OPTIONS + 1) % OPTIONS;
			if (FlxG.keys.justPressed("SPACE") || FlxG.keys.justPressed("ENTER"))
			switch(option)
			{
				case 0:
					loadGame();
					break;
				case 1:
					cntrl();
					break;
				case 2:
					startgame();
					break;
			}
			super.update();
			}
			private function startgame():void
			{
				FlxG.state = new StartGame;
			}
			private function cntrl():void
			{
				FlxG.state = new ControlState;
			}
			private function loadGame():void
			{
				FlxG.state = new LoadGame;
			}
	}
}
