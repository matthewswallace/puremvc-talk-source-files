package com.mwallace.twittersearch.main.facade.commands
{
	import com.mwallace.twittersearch.main.model.MainAppProxy;
	import mx.rpc.IResponder;
	import mx.rpc.AsyncToken;
	import mx.rpc.http.HTTPService;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;

	/**
	 * @author Matthew Wallace - mswallace.com
	 */
	public class DoSearchCommand extends SimpleCommand
	{
		private var service : HTTPService;
		override public function execute(notification:INotification):void
		{
			var proxy : MainAppProxy = facade.retrieveProxy(MainAppProxy.NAME) as MainAppProxy;
			var term : String = notification.getBody() as String;
			
			service = new HTTPService();
			service.url = "http://search.twitter.com/search.atom?rpp=100&q=" + term;	
			
			var async : AsyncToken = service.send();
			async.addResponder(proxy);
		}
	}
}
