package com.mwallace.twittersearch.main.facade
{
	import com.mwallace.twittersearch.main.facade.commands.AppInitCommand;
	import com.mwallace.twittersearch.main.notifications.AppNotifications;

	import org.puremvc.as3.patterns.facade.Facade;

	/**
	 * @author Matthew Wallace - mswallace.com
	 */
	public class AppFacade extends Facade
	{
		private static var _instance : AppFacade;
		public function AppFacade(sl:Class)
		{
			if(sl != SingletonLock)
				throw Error("you must use getInstance to get a instance of this class");
		}

		public static function getInstance() : AppFacade
		{
			if(!_instance)
				_instance = new AppFacade(SingletonLock);
			
			return _instance;
		}
		
		override protected function initializeController():void
		{
			super.initializeController();
			this.registerCommand(AppNotifications.APP_INIT, AppInitCommand);
		}
		
	}
}

class SingletonLock {}
