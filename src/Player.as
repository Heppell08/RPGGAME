package  
{
    import org.flixel.*;
	/**
	 * ...
	 * @author Mixta
	 */
	public class Player extends FlxSprite
	{
	// variables here
	protected static const HEALTH:int = 50; // temp health until finalized
	protected static const ATTACK:int = 1;
	protected static const MANA:int = 10 * LEVEL; // not sure if this works. makes it mana multiplied by player level
	protected static const LEVEL:int = 1;
	protected static const EXP:int = 0;
		
		public function Player() 
		{
		loadGraphic(charimg, true, false, 16,16);
		addAnimation("IDLE",[0],4);
		player.health = HEALTH;
		}
		
		public function create():void
		{
		this.health=100;
		}
		
		public function kill():void
		{
		//add kill and exp here.
		}
		
		public function levelup():void
		{
		if(player.exp == 100)
		{
		player.exp=0;
		player.level ++;
		}
		
		override public function update():void
		{
		// alot needs added here.
		super.update();
		}
		
	}

}
