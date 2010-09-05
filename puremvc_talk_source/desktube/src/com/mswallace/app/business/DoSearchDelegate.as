
/*  
	a Delegate is not part of PureMVC but is a convention that is
	use in a lot of MVC setups.

	the sole reason for the delegat is to make a call to the server and then 
	hand of the responce to a responder of some sort.
*/
package com.mswallace.app.business {

	public class DoSearchDelegate
	{
		private var youTubeClient:YouTubeFeedClient;
		
		public function DoSearchDelegate(callback:Function)
		{
			youTubeClient = YouTubeFeedClient.getInstance();
			youTubeClient.addEventListener(VideoFeedEvent.VIDEO_DATA_RECEIVED, callback);
		}
		
		public function search(term:String):void
		{
			youTubeClient.getVideos(term);
		}
	}
}