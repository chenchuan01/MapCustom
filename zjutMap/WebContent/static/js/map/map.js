var MapApp = function(){
	//初始化浙工大坐标
	var position_x =120.165711;
	var position_y =30.293286;
	var view_zoom = 13;
	
	var position;
	var mapView;
	var mapObj;
	
	var init = function(){
		//设定中心位置
		position = new AMap.LngLat(position_x,position_y);
		//设置地图视图缩放
		mapView = new AMap.View2D({ center:position, zoom:view_zoom});
		//创建地图实例 
		mapObj =new AMap.Map("container",{view:mapView});
		
		refresh();
	};
	
	var setPosition = function(x,y){
		position_x = x;
		position_y = y;
	};
	var refresh = function(){
		
	};
	return {
		init:function(x,y){
			setPosition(x,y);
			init();
			
		},
		refresh:function(){
			refresh();
		}
	};
};