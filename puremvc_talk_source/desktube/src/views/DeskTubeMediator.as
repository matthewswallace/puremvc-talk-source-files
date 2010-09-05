package views {
	import com.mswallace.app.model.AppProxy;
	import com.mswallace.app.notifications.AppNotifications;
	import com.mswallace.components.Thumb;
	import com.mswallace.components.YouTubeVideoPlayer;

	import mx.collections.ArrayCollection;
	import mx.managers.PopUpManager;
	
	public class DeskTubeMediator extends Mediator implements IMediator
	{
		public static const NAME:String="DeskTubeMediator";
		
		public function DeskTubeMediator(viewComponent:Object=null)
		{
			super(NAME, viewComponent);
		}
		
		private function get app():desktube
		{
			return viewComponent as desktube;	
		}	
		
		private function get proxy():AppProxy
		{
			return facade.retrieveProxy( AppProxy.NAME ) as AppProxy;
		}
		
		override public function listNotificationInterests():Array
		{
			var notificationInterests:Array = [
									AppNotifications.GET_YOUTUBE_DATA,
									AppNotifications.GOT_YOUTUBE_DATA,
									AppNotifications.PLAY_VIDEO
				
				];
			return notificationInterests;
		}
		
		override public function handleNotification(notification:INotification):void
		{
			
			switch(notification.getName())
			{
				case AppNotifications.GET_YOUTUBE_DATA :
					app.progHolder.visible = true;
					break;
				case AppNotifications.GOT_YOUTUBE_DATA :
					addTumbNails(proxy.dataProvider);
					app.progHolder.visible = false;
					break;
				case AppNotifications.PLAY_VIDEO :
					var vd:VideoData = notification.getBody() as VideoData;
					var player:YouTubeVideoPlayer = new YouTubeVideoPlayer();
					player.sourceVideo = vd.actualId;
					player.width  = app.width;
					player.height = app.height;
					PopUpManager.addPopUp(player, app);
					PopUpManager.centerPopUp(player);
					break;
			}
		}
		
		private function addTumbNails(data:ArrayCollection):void
		{
			app.thumbs.removeAllElements();
			
			
			
			for (var i:int = 0; i < data.length; i++) {
				var element:VideoData = data.getItemAt(i) as VideoData;
				
				
				var image:Thumb = new Thumb();
				image.vd = element;
				image.x = Math.random() * app.stage.stageWidth;
				image.y = Math.random() * app.stage.stageHeight;
				image.rotation = Math.random() * 359;
				image.toolTip = element.title;
				TweenMax.from(image, 1, {x:Math.random() * app.stage.stageWidth,
										y: Math.random() * app.stage.stageHeight,
										rotation: Math.random() * 359,
										scaleX:4,
										scaleY:4,
										alpha:0,
										overwrite:false,
										ease:Quad.easeOut
										});
				
				app.thumbs.addElement(image);
			}
			
			
		}
	}
}