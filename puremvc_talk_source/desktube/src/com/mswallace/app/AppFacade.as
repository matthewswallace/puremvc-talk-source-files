/*
AppFacade extends pureMVC Facade class

Facade is all seeing and all knowing about the Commands, Mediators, and Proxies that are 
Registared to it. 
*/

package com.mswallace.app
{
	import com.mswallace.app.commands.AppCommand;
	import com.mswallace.app.notifications.AppNotifications;

	import org.puremvc.as3.patterns.facade.Facade;
	
	public class AppFacade extends Facade
	{
		private static var _instance : AppFacade;
		
		public function AppFacade(obj:Class)
		{
			if(obj != SingletonLock)
				throw Error("you must use getInstance() method for creating and instance of this class");
		}
		
		/* we use getInstance because Facade is a singleton in the app
			All seeing and all knowing class like this needs to remain a
			single instance with in the app
		*/
		public static function getInstance(key:String):AppFacade
		{
			if(!_instance)
				_instance = new AppFacade(SingletonLock);
			return _instance;
		}
		
		/*
			override the initializeController so that we can 
			register our first Command to the Facade.
			we could register more than one command here if you like.
		*/
		override protected function initializeController():void
		{
			super.initializeController();
			
			registerCommand( AppNotifications.APP_INIT, AppCommand );
			
		}
	}
}

class SingletonLock{}