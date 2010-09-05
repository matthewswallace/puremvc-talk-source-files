package com.mwallace.twittersearch.main.model
{
	import com.adobe.serialization.json.JSON;
	import com.mwallace.twittersearch.main.notifications.AppNotifications;
	import mx.collections.ArrayCollection;
	import mx.rpc.IResponder;
	import org.puremvc.as3.patterns.proxy.Proxy;

	/**
	 * @author Matthew Wallace - mswallace.com
	 */
	public class MainAppProxy extends Proxy implements IResponder
	{
		public static const NAME:String="MainAppProxy";
		private var _dataProvider:ArrayCollection;
		public function MainAppProxy( data : Object = null)
		{
			super(NAME, data);
		}
		
		public function result(data:Object):void
		{
			dataProvider = data.result.feed.entry as ArrayCollection;
		}
				
		public function fault(info:Object):void
		{
			throw Error(info.message);
		}

		public function get dataProvider() : ArrayCollection
		{
			return _dataProvider;
		}

		public function set dataProvider(dataProvider : ArrayCollection) : void
		{
			_dataProvider = dataProvider;
			facade.sendNotification(AppNotifications.SEARCH_NEW_DATA);
		}
		
		
	}
}
