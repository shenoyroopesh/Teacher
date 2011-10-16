package com.Teacher.UI
{
	public class User
	{
		public static const online:String = "Online";
		public static const offline:String = "Offline";
		public static const away:String = "Away";
		
		private var _name:String;
		
		private var _status:String;
		
		private var _icon:String
		
		public function User(name:String)
		{
			_name=name;
			_status = User.online;
		}
		
		public function set name(name:String):void
		{
			_name=name;
		}
		
		[Bindable]
		public function get name():String
		{
			return _name;
		}
		
		public function get status():String
		{
			return _status;
		}
		
		public function set status(status:String):void
		{
			_status=status;
		}
		
		public function set icon(path:String):void
		{
			_icon=path;
		}
		
		public function get icon():String
		{
			return _icon;
		}
	}
}