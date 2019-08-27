package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	
	public class Game extends MovieClip {
		
		var o:Orc;
		var c:Crate;
		
		
		public function Game() {
			
			o = new Orc();
			o.x = 275;
			o.y = 200;			
			addChild(o);
			
			c = new Crate();
			c.x = 100;
			o.addChild(c);
			
			o.addEventListener(MouseEvent.CLICK, handleClick);
			addEventListener(Event.ENTER_FRAME, gameLoop);
			
		}
		public function gameLoop(e:Event):void{
			o.rotation += 4;
			thing.x = Math.random() * 550;
			thing.y = Math.random() * 400;
			thing.rotation += Math.random() * 90;
		}
		public function handleClick(e:MouseEvent): void{
			trace("ooo that tickled!");
		}
	}
	
}
