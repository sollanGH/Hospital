<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-table.min.css" />
		<link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
	    <link href="css/animate.min.css" rel="stylesheet">
	    <link href="css/style.min.css?v=4.0.0" rel="stylesheet">
	    <link href="css/bootstrap-select.min.css" rel="stylesheet">
		<script type="text/javascript" src="js/jquery.min.js"></script>
	 	<script src="js/bootstrap.min.js?v=3.3.5"></script>
		<script type="text/javascript" src="js/bootstrap-table.min.js"></script>
		<script type="text/javascript" src="js/bootstrap-table-zh-CN.min.js"></script>
		<script src="js/content.min.js?v=1.0.0"></script>
	    <script src="js/plugins/validate/jquery.validate.min.js"></script>
	    <script src="js/plugins/validate/messages_zh.min.js"></script>
	    <script src="js/demo/form-validate-demo.min.js"></script>
	    <script src="js/bootstrap-select.min.js"></script>
	    <script src="js/bootstrap-suggest.js"></script>
		<meta charset="UTF-8">
		<title></title>
	</head>
			
	 <body>
	 	<!-- <div style="height: 50px">
	 	<label>科室选择:</label>
		<select id="deparmrntselect" name="deparmrntselect" class="selectpicker" data-size="5" data-live-search="true" >
			
		</select>
		</div>
		<div style="height: 50px">
	 	<label>房间选择:</label>
		<select id="roomselect" name="roomselect" class="selectpicker" data-size="5" data-live-search="true" >
			
		</select>
		</div>
		<div style="height: 50px">
	 	<label>床位选择:</label>
		<select id="bedselect" name="bedselect" class="selectpicker" data-size="5" data-live-search="true" >
			
		</select>
		</div>
		<div >
			<label class="col-sm-1 control-label">科室名：</label>
			<div class="col-sm-2">
				<input id="dd" name="deparment_name"  type="text" class="form-control" >
			</div>
		</div>
		<div >
			<label class="col-sm-1 control-label">科室简介：</label>
			<div class="col-sm-2">
				<textarea id="ddd" name="deparment_name"   class="form-control" ></textarea>
			</div>
		</div>
		
		<div class="input-group">
		<label class="col-sm-1 control-label">XIA：</label>
          <input type="text" class="form-control" id="test">
      </div> -->
		<div class="form-group" id="asd">
          <label class="col-xs-3 text-right control-label">药品:</label>
          <div class="col-xs-9">
            <div class="input-group">
              <input type="text" class="form-control no-padding" id="keeperUserName" value="${keeperUserName}" />
              <div class="input-group-btn" style="width:1px;">
                <ul class="dropdown-menu dropdown-menu-right" role="menu"></ul>
              </div>
	         </div>
	      </div>
	     </div> 
	      <div class="form-group">
	      <label class="col-xs-3 text-right control-label">项目名称:</label>
            <div class="input-group">
              <input type="text" class="form-control no-padding" id="UserName" />
             
	         </div>
	      </div>
	      <div class="form-group">
			<label class="col-sm-1 control-label">Button：</label>
			<div class="col-sm-2">
				<button id="btn_add" class="btn btn-primary " type="button">新增</button>
			</div>
		</div>

		<script type="text/javascript">
		$().ready(function() {
	        search();//举报对象名称输入框显示
	  });
		function search(){
			$('#keeperUserName').bsSuggest({
				  url: "/hospital/selectMedicines",
			      getDataMethod:'url',
			      effectiveFields:['medicines_id','medicines_name','medicines_form','medicines_unit','medicines_number'],// 有效显示于列表中的字段，非有效字段都会过滤，默认全部有效。
			      effectiveFieldsAlias:{medicines_id:'ID',medicines_name:'项目名称',medicines_form:'规格',medicines_unit:'单位',medicines_number:'库存'},// 有效字段的别名对象，用于 header 的显示
			      showHeader:true,                         //是否显示选择列表的 header。为 true 时，有效字段大于一列则显示表头
			      allowNoKeyword:false,                    // 是否允许无关键字时请求数据
			      multiWord:false,                         //以分隔符号分割的多关键字支持
			      //idField: "room_id",                    //每组数据的哪个字段作为 data-id，优先级高于 indexId 设置（推荐）
			      keyField: "medicines_name",
			      listAlign: "left",
			      showBtn: true,                           //是否显示下拉按钮
			      hideOnSelect: true,            // 鼠标从列表单击选择了值时，是否隐藏选择列表
			      autoDropup: true,              //选择菜单是否自动判断向上展开。设为 true，则当下拉菜单高度超过窗体，且向上方向不会被窗体覆盖，则选择菜单向上弹出
			      showHeader: true,              //是否显示选择列表的 header。为 true 时，有效字段大于一列则显示表头
			      //调整 ajax 请求参数方法，用于更多的请求配置需求。如对请求关键字作进一步处理、修改超时时间等
			        fnAdjustAjaxParam: function(keyword, opts) {
			            //console.log('ajax 请求参数调整：', keyword, opts);
			            return {
			                
			                timeout: 10000,
			                data: {
			                	condition:  keyword
			                }
			            };
			        },
			      //请求数据前，对输入关键字作进一步处理方法。注意，应返回字符串
			      /* fnPreprocessKeyword: function(keyword) { 
		                //alert("搜索关键字：" + keyword);
		                return keyword;
		            },
		         // url 获取数据时，对数据的处理，作为 fnGetData 的回调函数
		            fnProcessData: function (result) {    
		                var index, len, data = {value: []};
		                var json = result[0];

		                // 判断是否有响应数据
		                if (!json || !json.value || json.value.length === 0) {
		                    console.log("没有数据");
		                    return false;
		                }
		                len = json.value.length;
		                // 将获取到的数据放到data.value中
		                for (index = 0; index < len; index++) {
		                    data.value.push(json.value[index]);
		                }
		                //字符串转化为 js 对象 【只要获取到数据】
		                return data;
		            } */
		            //当从下拉菜单选取值时触发，并传回设置的数据到第二个参数
			    }).on('onSetSelectValue', function (e, keyword, data) {
			      $('#UserName').val(data.medicines_name);
			      console.log(data.medicines_id);
			      
			      
			    });
			 }
	    //按钮方法事件监听
	    
	    $(document).on('click', "#btn_add",function(){
	    	//$("input#keeperUserName").bsSuggest("disable");//禁用提示
	    	//$("input#keeperUserName").bsSuggest("destroy");  //销毁提示
	    	$("#asd").hide();
			console.log("-----");
		});
		
		getDeparmentlList();
				
		function getDeparmentlList() {//获取下拉科室列表
	        $.ajax({
	            url: "/hospital/selectDeparment",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
			// 数据发送方式
	            type: "get",
			// 接受数据格式
	            dataType: "json",
			// 要传递的数据
	            data: 'data',
			// 回调函数，接受服务器端返回给客户端的值，即result值
	            success: function (data) {
			//alert(data.data);
			$('#deparmrntselect.selectpicker').append("<option value=-1>请选择科室</option>");
	                $.each(data.data, function (total) {
	                // alert(i);
	                // $("<option value='" + data.data[i].schoolno + "'>" + data.data[i].schoolname + "</option>")
	                //    .appendTo("#schoolno.selectpicker");
	                    $('#deparmrntselect.selectpicker').append("<option value=" + data.data[total].deparment_id + ">" + data.data[total].deparment_name + "</option>");
	                });	                
	                $('#deparmrntselect').selectpicker('refresh');
	            },
	            error: function (data) {
	                alert("查询失败" + data);
	            }
	        });				
	    };
		  $(document).on('change', "#deparmrntselect",function(){
			  //点选之后取自定义属性的值： 
			 var optiona=$("#deparmrntselect option:selected").val();
			 //$('.selectpicker').selectpicker('val', '列表id');
			 	//$('#dd').val(optiona);
			 	//把数据显示到输入框
			 	getbedList(-1);
			 	getRoomList(optiona);
			 	if( $("#deparmrntselect option:selected").val()>0){
			 		gect(optiona);
			 		//获取下拉房间列表
			 	}

				console.log(optiona); 		
		});  
		  
			//获取下拉科室列表
			function gect(optiona) {				
		        $.ajax({
		            url: "/hospital/selectDeparmentid",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
					// 数据发送方式
		            type: "get",
					// 接受数据格式
		            dataType: "json",
					// 要传递的数据
		            data: {"deparment_id":optiona},
					// 回调函数，接受服务器端返回给客户端的值，即result值
		            success: function (data) {
					//alert(data.data);
					
						$('#dd').val(data.data[0].deparment_name);
		            	$('#ddd').val(data.data[0].deparment_description);
					
		            	
		            },
		            error: function (data) {
		                alert("查询失败" + data);
		            }
		        });					
		    };
		    //获取下拉房间列表
			function getRoomList(optiona) {
		        $.ajax({
		            url: "/hospital/selectUseRoomAll",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
					// 数据发送方式
		            type: "get",
					// 接受数据格式
		            dataType: "json",
					// 要传递的数据
		            data: {"deparment_id":optiona},
					// 回调函数，接受服务器端返回给客户端的值，即result值
		            success: function (data) {
					//清空下拉框数据	
						$('#roomselect.selectpicker').empty();
						$('#roomselect.selectpicker').append("<option value=-1>请选择科室</option>");
		                $.each(data.data, function (total) {
		                    $('#roomselect.selectpicker').append("<option value=" + data.data[total].room_id + ">" + data.data[total].room_name + "</option>");
		                });		                
		                $('#roomselect').selectpicker('refresh');
		            },
		            error: function (data) {
		                alert("查询失败" + data);
		            }
		        });					
		    };
		    $(document).on('change', "#roomselect",function(){
				  //点选之后取自定义属性的值： 
				 var optiona=$("#roomselect option:selected").val();				 
				 	//获取下拉列表
				 	getbedList(optiona);
				 	console.log(optiona); 
			});  
		  //获取下拉床位列表
			function getbedList(optiona) {
		        $.ajax({
		            url: "/hospital/selectUseBedAllid",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
					// 数据发送方式
		            type: "get",
					// 接受数据格式
		            dataType: "json",
					// 要传递的数据
		            data: {"room_id":optiona},
					// 回调函数，接受服务器端返回给客户端的值，即result值
		            success: function (data) {
					//清空下拉框数据	
						$('#bedselect.selectpicker').empty();
						$('#bedselect.selectpicker').append("<option value=-1>请选择科室</option>");
		                $.each(data.data, function (total) {
		                    $('#bedselect.selectpicker').append("<option value=" + data.data[total].bed_id + ">" + data.data[total].bed_name + "</option>");
		                });		                
		                $('#bedselect').selectpicker('refresh');
		            },
		            error: function (data) {
		                alert("查询失败" + data);
		            }
		        });					
		    };
		
		</script>
		
		
	</body>
</html>