package com.mswallace.app.commands {
	import views.DeskTubeMediator;

	import com.mswallace.app.model.AppProxy;
	import com.mswallace.app.notifications.AppNotifications;
	
	public class AppCommand extends SimpleCommand implements ICommand
	{
		override public function execute(notification:INotification):void
		{
			
			///notification will hold a referance to main app file so we can registar some mediators
			var app:desktube = notification.getBody() as desktube;
			
			//registar commands
			facade.registerCommand(AppNotifications.GET_YOUTUBE_DATA, DoSearchCommand);
			facade.registerMediator( new DeskTubeMediator( app ) );
			
			
			//register proxys
			facade.registerProxy( new AppProxy() );
		}
	}
}