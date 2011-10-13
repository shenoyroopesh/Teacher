package CustomEvents
{
	import flash.events.Event;
	
	public class StageClickEvent extends Event
	{
		public static const STAGE_IS_CLICKED:String = "StageIsClicked";
		
		public function StageClickEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{			
			super(type, bubbles, cancelable);
		}
	}
}