package com.mwallace.twittersearch.main.facade.commands
{
	import com.mwallace.twittersearch.main.notifications.AppNotifications;
	import com.mwallace.twittersearch.main.model.MainAppProxy;
	import com.mwallace.twittersearch.main.view.MainAppMediator;
	import com.mwallace.twittersearch.main.view.MainApp;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;

	/**
	 * @author Matthew Wallace - mswallace.com
	 */
	public class AppInitCommand extends SimpleCommand
	{
		override public function execute(notification:INotification):void
		{
			var app : MainApp = notification.getBody() as MainApp;
			
			//mediators
			facade.registerMediator(new MainAppMediator(app));
			
			//proxy
			facade.registerProxy(new MainAppProxy());	
			
			// commands
			facade.registerCommand(AppNotifications.DO_SEARCH, DoSearchCommand);
		}
	}
}
