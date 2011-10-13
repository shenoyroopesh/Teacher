package com.Teacher.UI
{
	public class Utilities
	{
		public static function getMax(array, field:String){			
			var max:Number;			
			if(array.length > 0) max = array[0][field]; else return null;			
			for(var item in array){
				if(array[item].hasOwnProperty(field)){
					if(array[item][field] > max) max = array[item][field];
				}
			}			
			return max;
		}
		
		public static function getMin(array, field:String){			
			var min:Number;			
			if(array.length > 0) min = array[0][field]; else return null;			
			for(var item in array){
				if(array[item].hasOwnProperty(field)){
					if(array[item][field] < min) min = array[item][field];
				}
			}			
			return min;
		}
	}
}