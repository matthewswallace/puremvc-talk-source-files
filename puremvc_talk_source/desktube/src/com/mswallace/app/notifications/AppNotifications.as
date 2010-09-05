/* I create classes as needed that hold 
	static constance vars. These are used
	within the app for seending what pureMVC calles notifications
	the facade and mediators subscribe to notifications and act on them
	when a notification is sent. 
*/

package com.mswallace.app.notifications
{
	public class AppNotifications
	{
		public static const APP_INIT:String="AppInit";
		public static const GET_YOUTUBE_DATA:String="GetYouTubeData";
		public static const GOT_YOUTUBE_DATA:String="GotYouTubeData";
		public static const PLAY_VIDEO:String="PlayVideo";
	}
}