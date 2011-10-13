package  com.Teacher.UI.charts {	
	import com.greensock.*;
	import com.greensock.easing.*;
	
	import flash.display.DisplayObject;
	import flash.display.StageQuality;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.TimerEvent;
	import flash.geom.Rectangle;
	import flash.utils.Timer;
	
	import items.TopBarRenderer;
	
	import mx.core.FlexGlobals;
	
	import org.papervision3d.VolumeBase;
	import org.papervision3d.cameras.SpringCamera3D;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.math.Number3D;
	import org.papervision3d.core.math.NumberUV;
	import org.papervision3d.core.proto.MaterialObject3D;
	import org.papervision3d.materials.MovieMaterial;
	import org.papervision3d.materials.WireframeMaterial;
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.DisplayObject3D;
	import org.papervision3d.objects.primitives.Cube;
	import org.papervision3d.view.BasicView;
	import org.papervision3d.view.Viewport3D;
	import org.papervision3d.view.stats.StatsView;
	
	import spark.components.Application;
	
	[SWF(width="500", height="450", backgroundColor="0xffffff")]
	
	public class Container3D extends VolumeBase {
		
		public function Container3D(vpt:Viewport3D) {	
			orthogonal = true;
			super(vpt);
			
			//just to overwrite the default rotation
			cameraPitch = 90;
			cameraYaw = 90;
			camera.zoom = 60000;
			camera.orbit(cameraPitch, cameraYaw, true, cameraTarget);
			
			this.viewport.addEventListener(MouseEvent.MOUSE_OUT, stabilize);
			this.viewport.addEventListener(MouseEvent.MOUSE_UP, stabilize);
			this.viewport.addEventListener(MouseEvent.MOUSE_DOWN, killTweens);			
		}
				
		private function metaDataHandler(infoObject:Object):void {
			trace('metaDataHandler= ',infoObject);
		}
		
		public function killTweens(event:MouseEvent):void{
			TweenMax.killAll();
		}
		
		var newCameraPitch;
		var newCameraYaw;
		
				
		//this function makes the cube fall flat if it is not properly oriented 
		public function stabilize(event:MouseEvent):void
		{
			cameraPitch %= 360;
			cameraYaw %= 360;
			newCameraPitch = round90(cameraPitch);			
			newCameraYaw = round90(cameraYaw);
			
			if(cameraPitch != newCameraPitch && cameraYaw != newCameraYaw){
				//when stabilizing, reduce the stage quality
				FlexGlobals.topLevelApplication.stage.quality = StageQuality.LOW;				
			}
			
			TweenMax.killAll();
			TweenMax.to(this, 1, {cameraPitch:newCameraPitch, cameraYaw:newCameraYaw, onUpdate:updateCamera, onComplete:resetStageQuality});
		}
		
		public function stabilizeNull():void{
			if(cameraYaw < 0) cameraYaw = cameraYaw + 360;
			
			cameraPitch = cameraPitch%360;
			cameraYaw = cameraYaw%360;
			stabilize(null);
		}
		
		private function resetStageQuality(){
			//after stabilizing, regain the stage quality
			FlexGlobals.topLevelApplication.stage.quality = StageQuality.HIGH;
		}
		
		private function round90(num:Number){
			var remainder = num%90;
			return remainder > 45 ? num + (90 - remainder):num - remainder;
		}
		
		private function updateCamera(){
			cameraPitch = cameraPitch%360;
			cameraYaw = cameraYaw%360;
			cameraPitch = cameraPitch > 0 ? cameraPitch : 0.0001;
			cameraPitch = cameraPitch < 180 ? cameraPitch : 179.9999;			
			camera.orbit(cameraPitch, cameraYaw, true, cameraTarget);	
		}
		
		/**
		 * Rotates the cube in the given direction by 90 degrees 
		 * */
		public function rotateCube(direction:String):void{
			var newCameraPitch = cameraPitch;
			var newCameraYaw = cameraYaw;
			
			//move only to a certain amount, and then let stabilize take over (so that it rotates fast initially and then slowly
			switch(direction){
				case "left": newCameraYaw = cameraYaw+90; break;
				case "right": newCameraYaw = cameraYaw-90; break;
				case "up": newCameraPitch = cameraPitch+90; break;
				case "down": newCameraPitch = cameraPitch-90; break;
			}
			
			TweenMax.to(this, 1.5, {cameraPitch:newCameraPitch, cameraYaw:newCameraYaw, onUpdate:updateCamera, onComplete:stabilizeNull});
		}
	}
}