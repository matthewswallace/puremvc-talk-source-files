package com.mwallace.twittersearch.main.view
{
	import com.mwallace.twittersearch.main.notifications.AppNotifications;
	import org.puremvc.as3.interfaces.INotification;
	import com.mwallace.twittersearch.main.model.MainAppProxy;
	import org.puremvc.as3.patterns.mediator.Mediator;

	/**
	 * @author Matthew Wallace - mswallace.com
	 */
	public class MainAppMediator extends Mediator
	{
		public static const NAME:String="MainAppMediator";
		
		public function MainAppMediator(viewComponent : Object = null)
		{
			super(NAME, viewComponent);
		}
		
		private function get proxy():MainAppProxy
		{
			return facade.retrieveProxy(MainAppProxy.NAME) as MainAppProxy;
		}
		
		private function get view():MainApp
		{
			return this.viewComponent as MainApp
		}
				
		override public function listNotificationInterests():Array
		{
			return [AppNotifications.SEARCH_NEW_DATA];
		}
				
		override public function handleNotification(notificaiton : INotification):void
		{
			switch(notificaiton.getName())
			{
				case AppNotifications.SEARCH_NEW_DATA:
					view.list.dataProvider = proxy.dataProvider;
					break;
				default:
			}
		}
	}
}
