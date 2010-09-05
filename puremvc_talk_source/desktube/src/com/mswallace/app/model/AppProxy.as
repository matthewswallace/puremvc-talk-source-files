/*  
	Porxy is your model. Any data that we need to store
	for our view we keep it here.

	Also proxy is offen used to store some sort of result handler
	so after we call data from the server the result gets sent here.
*/

package com.mswallace.app.model {
	import com.mswallace.app.notifications.AppNotifications;

	import mx.collections.ArrayCollection;

	import flash.utils.Proxy;
	
	public class AppProxy extends Proxy implements IProxy
	{
		public static const NAME:String="AppProxy";
		
		private var _dataProvider:ArrayCollection;

		public function AppProxy(data:Object=null)
		{
			super(NAME, data);
		}
		
		/* this is a result handler that handles the data coming back from the server */
		public function youTubeResults(e:VideoFeedEvent):void
		{
			var videoFeed:VideoFeed = e.feed;
			
			dataProvider = new ArrayCollection();
			
			for (var i:int = 0; i <50; i++) {
				
				var vd:VideoData = videoFeed.getAt(i);
				dataProvider.addItem(vd);
			}
			
			//notice sendNotification here. we can tell PureMVC that
			//the proxy has new data
			sendNotification( AppNotifications.GOT_YOUTUBE_DATA );
		}


		///getters and setters
		public function get dataProvider():ArrayCollection
		{
			
			return _dataProvider;
		}
		
		public function set dataProvider(value:ArrayCollection):void
		{
			_dataProvider = value;
		}
		
	}
}