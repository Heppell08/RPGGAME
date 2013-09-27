package  
{
	import org.flixel.*;
	import org.flixel.FlxPreloader;
	/*
	 * ...
	 * @author Mixta
	 */
	public class Preloader extends FlxPreloader
	{
		
		public function Preloader()
		{
			className = "Main";
			super();
			minDisplayTime = 5;
		}
		
	}

}
