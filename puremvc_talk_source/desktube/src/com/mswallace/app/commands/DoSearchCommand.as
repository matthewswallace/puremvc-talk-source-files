/*
 *you can registar a command with the Facade.
	anytime that notification is sent in the app
	the command that is registared will run execute()
	
	often this is used to do some business logic like call to the server, process dome data
	or do some other application level set up.
*/

package com.mswallace.app.commands {
	import com.mswallace.app.business.DoSearchDelegate;
	import com.mswallace.app.model.AppProxy;
	
	public class DoSearchCommand extends SimpleCommand implements ICommand
	{
		override public function execute(notification:INotification):void
		{
			var appProxy:AppProxy = facade.retrieveProxy( AppProxy.NAME ) as AppProxy;
			var doSearchDelegate:DoSearchDelegate = new DoSearchDelegate( appProxy.youTubeResults );
			
			doSearchDelegate.search(notification.getBody() as String);
			
		}
	}
}