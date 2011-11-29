/**
 * This is a generated sub-class of _TeacherInterface.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 **/
 
package services.teacherinterface
{
	import flash.filesystem.File;
	import flash.filesystem.FileStream;
	
	import mx.core.FlexGlobals;

public class TeacherInterface extends _Super_TeacherInterface
{
    /**
     * Override super.init() to provide any initialization customization if needed.
     */
    protected override function preInitializeService():void
    {
        super.preInitializeService();
        // Initialization customization goes here
    }
	
	
	public function TeacherInterface()
	{
		super();
		this._serviceControl.endpoint =  FindAirConfig().gateway_path;
	}
	
	
	/******************************************8
	 * function added by sameer shelavale
	 * for finding Configuration stored in server.ini
	 * This is only for AIR version of the application
	 * 
	 * *****************************************/
	
	private function FindAirConfig():Object{
		
		import flash.filesystem.FileMode;
		
		var conf:Object = FlexGlobals.topLevelApplication.GetAirConfig();
		
		var tFile:File = File.applicationDirectory.resolvePath( "server.ini" );
		if( tFile.exists ){
			var fStream:FileStream = new FileStream()
			
			fStream.open( tFile, FileMode.READ );
			
			var content:String = fStream.readUTFBytes( fStream.bytesAvailable );
			
			fStream.close();
			
			var lines:Array = content.split( /[\r\n]hi+/  );
			
			for( var i:Number = 0; i < lines.length; i++ ){
				var values:Array = lines[i].split('=');
				if( values.length == 2 ){
					if( conf.hasOwnProperty( values[0] ) ){
						conf[ values[0] ] = values[1];
					}
				}
			}
		}
		FlexGlobals.topLevelApplication.SetAirConfig( conf );
		return conf;
	}
               
}

}
