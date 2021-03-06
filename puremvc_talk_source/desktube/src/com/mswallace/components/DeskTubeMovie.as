package com.mswallace.components {
	import mx.core.DesignLayer;
	import mx.core.IVisualElement;
	import mx.geom.TransformOffsets;

	import flash.display.DisplayObjectContainer;
	import flash.geom.Matrix;
	import flash.geom.Matrix3D;
	import flash.geom.Vector3D;
	
	public class DeskTubeMovie extends MovieSprite implements IVisualElement
	{
		public function DeskTubeMovie(videoId_p:String=null, chromeless_p:Boolean=false, playerAPIUrl_p:String=null, chromelessPlayerAPIUrl_p:String=null, wrapperUrl_p:String=null)
		{
			super(videoId_p, chromeless_p, playerAPIUrl_p, chromelessPlayerAPIUrl_p, wrapperUrl_p);
		}
		
		public function get owner():DisplayObjectContainer
		{
			return null;
		}
		
		public function set owner(value:DisplayObjectContainer):void
		{
		}
		
		public function get depth():Number
		{
			return 0;
		}
		
		public function set depth(value:Number):void
		{
		}
		
		public function get designLayer():DesignLayer
		{
			return null;
		}
		
		public function set designLayer(value:DesignLayer):void
		{
		}
		
		public function get postLayoutTransformOffsets():TransformOffsets
		{
			return null;
		}
		
		public function set postLayoutTransformOffsets(value:TransformOffsets):void
		{
		}
		
		public function get is3D():Boolean
		{
			return false;
		}
		
		public function get left():Object
		{
			return null;
		}
		
		public function set left(value:Object):void
		{
		}
		
		public function get right():Object
		{
			return null;
		}
		
		public function set right(value:Object):void
		{
		}
		
		public function get top():Object
		{
			return null;
		}
		
		public function set top(value:Object):void
		{
		}
		
		public function get bottom():Object
		{
			return null;
		}
		
		public function set bottom(value:Object):void
		{
		}
		
		public function get horizontalCenter():Object
		{
			return null;
		}
		
		public function set horizontalCenter(value:Object):void
		{
		}
		
		public function get verticalCenter():Object
		{
			return null;
		}
		
		public function set verticalCenter(value:Object):void
		{
		}
		
		public function get baseline():Object
		{
			return null;
		}
		
		public function set baseline(value:Object):void
		{
		}
		
		public function get baselinePosition():Number
		{
			return 0;
		}
		
		public function get percentWidth():Number
		{
			return 0;
		}
		
		public function set percentWidth(value:Number):void
		{
		}
		
		public function get percentHeight():Number
		{
			return 0;
		}
		
		public function set percentHeight(value:Number):void
		{
		}
		
		public function get includeInLayout():Boolean
		{
			return false;
		}
		
		public function set includeInLayout(value:Boolean):void
		{
		}
		
		public function getPreferredBoundsWidth(postLayoutTransform:Boolean=true):Number
		{
			return 0;
		}
		
		public function getPreferredBoundsHeight(postLayoutTransform:Boolean=true):Number
		{
			return 0;
		}
		
		public function getMinBoundsWidth(postLayoutTransform:Boolean=true):Number
		{
			return 0;
		}
		
		public function getMinBoundsHeight(postLayoutTransform:Boolean=true):Number
		{
			return 0;
		}
		
		public function getMaxBoundsWidth(postLayoutTransform:Boolean=true):Number
		{
			return 0;
		}
		
		public function getMaxBoundsHeight(postLayoutTransform:Boolean=true):Number
		{
			return 0;
		}
		
		public function getBoundsXAtSize(width:Number, height:Number, postLayoutTransform:Boolean=true):Number
		{
			return 0;
		}
		
		public function getBoundsYAtSize(width:Number, height:Number, postLayoutTransform:Boolean=true):Number
		{
			return 0;
		}
		
		public function getLayoutBoundsWidth(postLayoutTransform:Boolean=true):Number
		{
			return 0;
		}
		
		public function getLayoutBoundsHeight(postLayoutTransform:Boolean=true):Number
		{
			return 0;
		}
		
		public function getLayoutBoundsX(postLayoutTransform:Boolean=true):Number
		{
			return 0;
		}
		
		public function getLayoutBoundsY(postLayoutTransform:Boolean=true):Number
		{
			return 0;
		}
		
		public function setLayoutBoundsPosition(x:Number, y:Number, postLayoutTransform:Boolean=true):void
		{
		}
		
		public function setLayoutBoundsSize(width:Number, height:Number, postLayoutTransform:Boolean=true):void
		{
		}
		
		public function getLayoutMatrix():Matrix
		{
			return null;
		}
		
		public function setLayoutMatrix(value:Matrix, invalidateLayout:Boolean):void
		{
		}
		
		public function get hasLayoutMatrix3D():Boolean
		{
			return false;
		}
		
		public function getLayoutMatrix3D():Matrix3D
		{
			return null;
		}
		
		public function setLayoutMatrix3D(value:Matrix3D, invalidateLayout:Boolean):void
		{
		}
		
		public function transformAround(transformCenter:Vector3D, scale:Vector3D=null, rotation:Vector3D=null, translation:Vector3D=null, postLayoutScale:Vector3D=null, postLayoutRotation:Vector3D=null, postLayoutTranslation:Vector3D=null, invalidateLayout:Boolean=true):void
		{
		}
	}
}