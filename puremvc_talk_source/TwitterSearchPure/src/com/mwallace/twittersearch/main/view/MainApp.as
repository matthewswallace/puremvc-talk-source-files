package com.mwallace.twittersearch.main.view
{
	import mx.controls.Alert;
	import spark.components.Button;
	import spark.components.List;

	import mx.controls.DataGrid;

	import spark.components.TextInput;
	import spark.components.WindowedApplication;

	import com.mwallace.twittersearch.main.facade.AppFacade;
	import com.mwallace.twittersearch.main.notifications.AppNotifications;

	import mx.controls.AdvancedDataGrid;
	import mx.events.FlexEvent;

	/**
	 * @author Matthew Wallace - mswallace.com
	 */
	public class MainApp extends WindowedApplication
	{
		private var facade : AppFacade;
		public var tx_search : TextInput;
		public var list : List;
		public var bn:Button;

		public function MainApp()
		{
			addEventListener(FlexEvent.CREATION_COMPLETE, onCreationComplete);
		}

		private function onCreationComplete(event : FlexEvent) : void
		{
			facade = AppFacade.getInstance();
			facade.sendNotification(AppNotifications.APP_INIT, this);
			this.maximize();
		}

		protected function search(value : String):void
		{
			facade.sendNotification(AppNotifications.DO_SEARCH, value);
			tx_search.text = "";
		}

		public function listBoxLableHandler(obj : Object):String
		{
			var tweet : String = obj.author.name + " says : " + obj.title;
			return tweet;
		}
		
		protected function pick():void
		{
			if(list.dataProvider.length > 0)
			{
				var random : Number = Math.floor(Math.random() * list.dataProvider.length - 1);
				if(random < 0)
					random = 0;
				if(random > list.dataProvider.length - 1)
					random = list.dataProvider.length - 1;

				var you : String = list.dataProvider.getItemAt(random).author.name;

				Alert.show(you);
			}
			
			
		}
	}
}
