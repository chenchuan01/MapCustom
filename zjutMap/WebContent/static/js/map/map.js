var MapApp = function(){
	//��ʼ���㹤������
	var position_x =120.165711;
	var position_y =30.293286;
	var view_zoom = 13;
	
	var position;
	var mapView;
	var mapObj;
	
	var init = function(){
		//�趨����λ��
		position = new AMap.LngLat(position_x,position_y);
		//���õ�ͼ��ͼ����
		mapView = new AMap.View2D({ center:position, zoom:view_zoom});
		//������ͼʵ�� 
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