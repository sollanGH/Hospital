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
	    <link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css" />
	    <link rel="stylesheet" href="css/jquery.bootstrap-touchspin.min.css" />
	    <link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
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
	    <script src="js/jquery.dropdown.js" ></script>
	    <script src="js/jquery.bootstrap-touchspin.min.js" ></script>
	    <script src="js/bootstrap-suggest.js"></script>
	    <script src="js/plugins/sweetalert/sweetalert.min.js"></script>
	    <script type="text/javascript" src="js/bootstrap-datetimepicker.min.js" ></script>
		<meta charset="UTF-8">
		<title></title>
		<style type="text/css">
		.col-sm-3{
			width: 18.5%;
		}
			.btn{
	        	font-size: 7px;
	        }
			.dropdown-menu{
	    		min-width: 130px;
	    	}
	    	.dropdown-menu .divider{
	    		 margin: 1px 0;
	    	}
	    	.dropdown-header {
	    		background: rgb(195,221,255);
	    	}
	    	.bootstrap-select:not([class*=col-]):not([class*=form-control]):not(.input-group-btn) {
   				 width: 110px;
			}
			.btn.dropdown-toggle.bs-placeholder.btn-default{
				background-color: #f9f9f9;
			}
			#block1 input{
				background: rgb(255,255,255);
			}
			#row1 input{
				text-align: center;
			}
			
		</style>
	</head>
			
	 <body>
		<div style="background: rgb(223,237,255);" id="block1">
			<div id="row1">
		        <div  class="form-group" style="margin-top: 5px; ">
		        	<div class="btn-group" style="margin-left: 20px;">
					    <font style="font-size: 14px;" color="#000000">住院号</font>
					    <input id="patient_message_id1" readonly="readonly" style="width: 90px; "/>
					</div>
					<div class="btn-group" style="margin-left: 20px;">
					    <font style="font-size: 14px;" color="#000000">科室</font>
					    <input id="deparment_name1" readonly="readonly" style="width: 90px; "/>
					</div>
					<div class="btn-group" style="margin-left: 20px;">
					    <font style="font-size: 14px;" color="#000000">入院日期</font>
					    <input id="ruyuan_time1" readonly="readonly" style="width: 90px; "/>
					</div>
					<div class="btn-group" style="margin-left: 20px;">
					    <font style="font-size: 14px;" color="#000000">姓名</font>
					    <input id="patient_name1" readonly="readonly" style="width: 90px; "/>
					</div>
		        	<div class="btn-group" style="margin-left: 20px;">
					    <font style="font-size: 14px;" color="#000000">年龄</font>
					    <input id="age1" readonly="readonly" style="width: 90px; "/>
					</div>
					<div class="btn-group" style="margin-left: 20px;">
					    <input  type="hidden" id="txt_search_departmentname1" readonly="readonly" style="width: 90px; "/>
					</div>
		        </div>
		        
				<div class="form-group" style="margin-top: 10px;">
		        	<div class="btn-group" style="margin-left: 35px;">
					    <font style="font-size: 14px;" color="#000000">病房</font>
					    <input id="room_name1" readonly="readonly" style="width: 90px; "/>
					</div>
					<div class="btn-group" style="margin-left: 5px;">
					    <font style="font-size: 14px;" color="#000000">床位号</font>
					    <input id="bed_name1" readonly="readonly" style="width: 90px; "/>
					</div>
					<div class="btn-group" style="margin-left: 20px;">
					    <font style="font-size: 14px;" color="#000000">主治医生</font>
					    <input id="doctor_name1" readonly="readonly" style="width: 90px; "/>
					</div>
					<div class="btn-group" style="margin-left: 20px;">
					    <font style="font-size: 14px;" color="#000000">初步诊断</font>
					    <input id="diagnosis_a1" readonly="readonly" style="width: 150px; "/>
					</div>
					<!-- <div class="btn-group" style="margin-left: 5px;">
					    <font style="font-size: 14px;" color="#000000">预交金</font>
					    <input readonly="readonly" style="width: 90px; "/>
					</div>
		        	<div class="btn-group" style="margin-left: 20px;">
					    <font style="font-size: 14px;" color="#000000">余额</font>
					    <input readonly="readonly" style="width: 90px; "/>
					</div> -->
		        </div>     
		        
		        <div class="form-group" style="margin-top: 10px; height: 5px;">
		        	
					<div class="btn-group" style="margin-left: 20px;">
					    <!-- <font style="font-size: 14px;" color="#000000">medical_orders_id</font> -->
					    <input id="requisition_id" type="hidden" style="width: 150px; "/>
					</div>
					<!-- <div class="btn-group" style="margin-left: 20px;">
					    <font style="font-size: 14px;" color="#000000">初步诊断2</font>
					    <input readonly="readonly" style="width: 150px; "/>
					</div> -->
		        </div>
	        </div>
		
		
		
		</div>	
		<!-- <div class="panel panel-default">
				<div class="panel-heading">查询条件</div>
				<div class="panel-body">
					<form id="formSearch" class="form-horizontal">
						<div class="form-group" style="margin-top:15px">
							<label class="col-sm-2 control-label" for="txt_search_start_ruyuantime">发药时间</label>
							<div class="col-sm-3">
								<input  id="start_ruyuan_time" type="text" class="form-control" >
								value="2019-02-27 23:30:57"
							</div>
							<div style="transform: translateX(-6.5%);;">
							<label class="col-sm-1 control-label">至</label>
							<div class="col-sm-3">
								<input  id="end_ruyuan_time" type="text" class="form-control" >
								value="2019-03-14 03:03:07"
							</div>
							</div>
							<div class="col-sm-4" style="text-align:left;">
								<button type="button" style="margin-left:50px" id="btn_query" class="btn btn-primary">查询</button>
								<button type="button" style="margin-left:50px" id="btn_clean" class="btn btn-restore">重置</button>
							</div>
						</div>
					</form>
				</div>
			</div>	 -->				
		<div id="toolbar" class="btn-group">
			<button id="btn_check" type="button" class="btn btn-white" >
	        	<span class="glyphicon glyphicon-pencil"></span>药品核对
	    	</button>
	   		<button id="btn_check_cancel" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-remove" ></span>取消核对
          	</button>
          	<button id="btn_action" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-pencil" ></span>药品发药
          	</button>
          	<button id="btn_printf" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-pencil" ></span>打印领药单
          	</button>               	
    	</div>
        
        <div id="block3" style="transform: translateY(-17px);">
				<table id="tb_patient_message"></table>
			</div>
			
		<script type="text/javascript">
		
		$(document).ready(function (){
			
			 $.ajax({
					url: "/hospital/selectPatient_messageAll",
					type:"post",
					data:{
						patient_id : "${patient_id}",
						pageSize: 5,
						pageNumber : 0
					},
					 success: function (data) {
		                //alert("成功");
		                console.log(data.rows[0]);
		                console.log(data.rows[0].bed.bed_name);
		                $('#bed_name1').val(data.rows[0].bed.bed_name);
		                $('#patient_message_id1').val(data.rows[0].patient.patient_id);
		                $('#deparment_name1').val(data.rows[0].deparment.deparment_name);
		                $('#ruyuan_time1').val(changeDateFormat(data.rows[0].ruyuan_time));
		                $('#patient_name1').val(data.rows[0].patient.patient_name);
		                $('#age1').val(data.rows[0].patient.age);
		                $('#room_name1').val(data.rows[0].room.room_name);
		                $('#diagnosis_a1').val(data.rows[0].diagnosis_a);
		                $('#doctor_name1').val(data.rows[0].user.user_name);
			         },
			         error:function(){
			        	 alert("失败");
					 }

				});	
			 
			//转换日期格式(时间戳转换为datetime格式)
				function changeDateFormat(cellval) {
				    var dateVal = cellval + "";
				    if (cellval != null) {
				        var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
				        var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
				        var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();

				        var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
				        var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
				        var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();

				        return date.getFullYear() + "-" + month  + "-" + currentDate /* + " " + hours + ":" + minutes + ":" + seconds */ ;
				    }
				};
			
		});
		
		
		$(function() {
			//1.初始化Table
			var oTable = new TableInit();
			oTable.Init();
			//2.初始化Button的点击事件
			var oButtonInit = new ButtonInit();
			oButtonInit.Init();
		});
		var TableInit = function() {
		
		var oTableInit = new Object();
		//初始化Table
		oTableInit.Init = function() {
			$('#tb_patient_message').bootstrapTable({
				url: '/hospital/selectRequisition_List', //请求后台的URL（*）
				method: 'get', //请求方式（*）
				toolbar: '#toolbar', //工具按钮用哪个容器
				striped: true, //是否显示行间隔色
				cache: false, //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
				pagination: true, //是否显示分页（*）
				sortable: true, //是否启用排序
				sortOrder: "asc", //排序方式
				queryParams: oTableInit.queryParams, //传递参数（*）
				sidePagination: "server", //分页方式：client客户端分页，server服务端分页（*）
				queryParamsType:'', // 设置为 ''  在这种情况下传给服务器的参数为：pageSize,pageNumber
				pageNumber: 1, //初始化加载第一页，默认第一页
				pageSize: 10, //每页的记录行数（*）
				pageList: [5, 10, 15, 20,'ALL'], //可供选择的每页的行数（*）
				search: false, //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
				showColumns: true, //是否显示所有的列
				showRefresh: true, //是否显示刷新按钮
				minimumCountColumns: 2, //最少允许的列数
				clickToSelect: true, //是否启用点击选中行
				height: 500, //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
				uniqueId: "medical_orders_list_id", //每一行的唯一标识，一般为主键列
				showToggle: true, //是否显示详细视图和列表视图的切换按钮
				cardView: false, //是否显示详细视图
				detailView: false, //是否显示父子表
				height: $(window).height()*0.83,
				columns:
					[
	                 [  {
	     					checkbox: true,
	     					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	     				},
	                     {
	                        valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	                        field: 'medicines.medicines_name',
	    					title: '药品名称'
	                     }, {
	                    	valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2, 
	     					field: 'medicines.medicines_specification',
	    					title: '规格'
	    				}, {
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'number',
	    					title: '每次用量'
	    				}, {
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'medicines.medicines_unit',
	    					title: '单位'
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'medicines.medicines_form',
	    					title: '剂型'
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'medical_orders_list_action.speed',
	    					title: '滴速'
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'medical_orders_list_action.ways',
	    					title: '途径',
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'medical_orders_list_action.direction',
	    					title: '用法',
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'medicines.medicines_number',
	    					title: '库存'
	    				},
	                     {
	                         title: "药品执行情况",
	                         valign:"middle",
	                         align:"center",
	                         colspan: 4,
	                         rowspan: 1
	                     }
	                ],
	                 [
	                    {
	                         field: 'check_requisition_time',
	                         title: '核对时间',
	                        valign:"middle",
	                         align:"center",
	                          formatter: function (value, row, index) {
				                    return changeDateFormat(value);
				                }, 
	                     },
	                      {
	                         field: 'action_requisition_time',
	                        title: '发药时间',
	                         valign:"middle",
	                         align:"center",
	                         formatter: function (value, row, index) {
				                    return changeDateFormat(value);
				                },
	                    },
	                     {
	                         field: 'user.user_name',
	                         title: '药剂人员',
	                         valign:"middle",
	                         align:"center"
	                     },
	                     {
	                         field: 'requisition_status',
	                         title: '药品状态',
	                         valign:"middle",
	                         align:"center",
	                         formatter: function (value, row, index) {
	                        	 if(value == 1){
	                        		 value = "核对发药";
	                        		 return value;
	                        	 }else if(value == 2){
	                        		 value = "已发药";
	                        		 return value;
	                        	 }else if(value == 3){
	                        		 value = "核对退药";
	                        		 return value;
	                        	 }else if(value == 4){
	                        		 value = "已退药";
	                        		 return value;
	                        	 }
	                        	 
				                    return value;
				                },
	                     } 
	                 ]
	             ],
				//事件处理
				//当选择（check）此行时触发
				onDblClickRow: function (row, $element) {
					
				},
				onCheck: function (row, $element) {	
					
					var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
					var row = arrselectedData[0];
					console.log(row);
					count = count+1;
					//console.log(count);
					if(count>1){
						$("#btn_edit").attr("disabled","disabled");
						$("#btn_single_submit").attr("disabled","disabled");
					}
				},
				onUncheck: function (row, $element) {			
					count = count-1;
					if(count<=1){
						$("#btn_edit").removeAttr("disabled");
						$("#btn_single_submit").removeAttr("disabled");
					}
					//console.log(count);    
				},
				//当全选行时触发，所需的参数如下
				onCheckAll: function (row) {
					$("#btn_edit").attr("disabled","disabled");
					$("#btn_single_submit").attr("disabled","disabled");
				},
				onUncheckAll: function (row) {
					count = 0;
					$("#btn_edit").removeAttr("disabled");
					$("#btn_single_submit").removeAttr("disabled");
				},
				//当重置（reset）表的视图时触发
				onResetView: function () {
					count = 0;
					$("#btn_edit").removeAttr("disabled");
					$("#btn_single_submit").removeAttr("disabled");
				},
			});
			
		};
		function stateFormatter(value, row, index) {
			if (row.check_status == true)
				return {
				
				checked : true//设置选中
				};
				return value;
			};
		//转换日期格式(时间戳转换为datetime格式)
		function changeDateFormat(cellval) {
		    var dateVal = cellval + "";
		    if (cellval != null) {
		        var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
		        var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
		        var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();

		        var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
		        var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
		        var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();

		        return date.getFullYear() + "-" + month  + "-" + currentDate + " " + hours + ":" + minutes + ":" + seconds ;
		    }
		};
		
		//得到查询的参数
			oTableInit.queryParams = function(params) {
				var param = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
					pageSize: params.pageSize, //页面大小
					pageNumber: params.pageNumber, //页码
					requisition_id: "${requisition_id}",	
				};
				return param;
			};
		return oTableInit;
	};	
		
		
		var ButtonInit = function() {
		var oInit = new Object();
		//var postdata = {};
		oInit.Init = function() {
			//初始化页面上面的按钮事件
			$('#start_ruyuan_time').datetimepicker({
			format: 'yyyy-mm-dd hh:ii:ss',//显示格式
			todayHighlight: 1,//今天高亮
			minView: "0",//设置只显示到月份
			startView:2,
			forceParse: 0,
			showMeridian: 1,
			autoclose: 1//选择后自动关闭
		});
		$('#end_ruyuan_time').datetimepicker({
			format: 'yyyy-mm-dd hh:ii:ss',//显示格式
			todayHighlight: 1,//今天高亮
			minView: "0",//设置只显示到月份
			startView:2,
			forceParse: 0,
			showMeridian: 1,
			autoclose: 1//选择后自动关闭
		});
			//药品校对按钮					
			$(document).on('click', "#btn_check",function(){									
				var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
				var row = arrselectedData[0];						
				if (arrselectedData.length <= 0) {
					swal({
	                	   title:"请选中一行",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else if(arrselectedData.length > 0  && row.check_requisition == false && row.take_requisition == false){
                	var select_id = '';
                	for (var i = 0; i < arrselectedData.length; i++) {
                		select_id += arrselectedData[i]['requisition_list_id'] + ",";
                    }
                	//去掉最后的逗号
                	select_id = select_id.substring(0, select_id.length - 1);
                	console.log(select_id);
             		var time = CurentTime();
			        function CurentTime()
			        { 
			            var now = new Date();
			            var year = now.getFullYear();       //年
			            var month = now.getMonth() + 1;     //月
			            var day = now.getDate();            //日
			            var hh = now.getHours();            //时  
			            var mm = now.getMinutes();          //分  
			            var ss = now.getSeconds();          //秒  
			            var clock = year + "-";
			           if(month < 10)  
			              clock += "0";  
			              clock += month + "-";  
	 			          if(day < 10)  
	 			              clock += "0";  
	 			          clock += day + " ";  
	 			          if(hh < 10)  
	 			              clock += "0";  
	 			          clock += hh + ":";  
	 			          if (mm < 10) clock += '0';   
	 			          clock += mm + ":";   
	 			          if (ss < 10) clock += '0';   
	 			          clock += ss;   
	 			          return(clock);
			        };
			        console.log(time);
			       //药品校对
			        updateRequisition_List(select_id,time);
			        
			        function updateRequisition_List(select_id,time){
			        	 $.ajax({
								url: "/hospital/updateRequisition_List",
								type:"post",
								data:{
									select_id : select_id,
									check_requisition_time: time,
									check_requisition : 1,
									pharmacist : "${USER.user_work_id}",
								},
								 success: function (data) {
									 swal({
					                	   title:"药品核对成功",
					                	   text:"",
					                	   type:"success"
					                   });
					               
					                $('#tb_patient_message').bootstrapTable('refresh');
						         },
						         error:function(){
						        	 swal({
					                	   title:"药品核对失败",
					                	   text:"",
					                	   type:"error"
					                   });
								 }
							});
			        	 console.log(time);
			       		 };
                 }else if(arrselectedData.length > 0  && row.check_requisition == true){
                	 swal({
	                	   title:"所选的行有核对过",
	                	   text:"",
	                	   type:"warning"
	                   });
                 }
				});
			//取消执行按钮
			$(document).on('click', "#btn_check_cancel",function(){									
				var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
				var row = arrselectedData[0];
				//console.log(row.check_status);
				if (arrselectedData.length <= 0) {
					swal({
	                	   title:"请选中一行",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else if(arrselectedData.length > 0){
                    	var a = true;
                    	for (var i = 0; i < arrselectedData.length; i++) {
                    		if(arrselectedData[i]['check_requisition'] == false){
    							a = false;                			
                    		}
                        }
                    	console.log("---------"+a);
                    	if(a == false){
                    		swal({
    		                	   title:"所选的行有未校对",
    		                	   text:"",
    		                	   type:"warning"
    		                   });
 				}else if(a ==true && row.take_requisition == true){
 					swal({
	                	   title:"所选的药品已发药,无法取消",
	                	   text:"",
	                	   type:"warning"
	                   });
 				}else if(a ==true && row.take_requisition == false){
 					var select_id = '';
                   	for (var i = 0; i < arrselectedData.length; i++) {
                   		select_id += arrselectedData[i]['requisition_list_id'] + ",";
                       }
                   	//去掉最后的逗号
                   	select_id = select_id.substring(0, select_id.length - 1);
                   	console.log(select_id);
   			       //取消校对
   			        cancelRequisition_List(select_id);
   			        
   			        function cancelRequisition_List(select_id){
   			        	 $.ajax({
   								url: "/hospital/cancelRequisition_List",
   								type:"post",
   								data:{
   									select_id : select_id,
   									check_requisition : 0,
   								},
   								 success: function (data) {
   									 swal({
   					                	   title:"校对已取消",
   					                	   text:"",
   					                	   type:"success"
   					                   });
   					               
   					                $('#tb_patient_message').bootstrapTable('refresh');
   						         },
   						         error:function(){
   						        	 swal({
   					                	   title:"校对取消失败",
   					                	   text:"",
   					                	   type:"error"
   					                   });
   								 }
   							});
   			        	// console.log(time);
   			       		 };}
                   	}
				});
			//执行按钮					
			$(document).on('click', "#btn_action",function(){									
				var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
				var row = arrselectedData[0];						
				if (arrselectedData.length <= 0) {
					swal({
	                	   title:"请选中一行",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else if(arrselectedData.length > 0){
                	var a = true;
                	for (var i = 0; i < arrselectedData.length; i++) {
                		if(arrselectedData[i]['check_requisition'] == false){
							a = false;                			
                		}
                    }
                	console.log("---------"+a);
                	if(a == false){
                		swal({
		                	   title:"所选的行有未校对",
		                	   text:"",
		                	   type:"warning"
		                   });
				}else if(a ==true && row.take_requisition == true){
					swal({
	                	   title:"所选的药品已发药",
	                	   text:"",
	                	   type:"warning"
	                   });
				}else if(a ==true && row.take_requisition == false){
					var select_id = '';
	               	for (var i = 0; i < arrselectedData.length; i++) {
	               		select_id += arrselectedData[i]['requisition_list_id'] + ",";
	                   }
	               	//去掉最后的逗号
	               	select_id = select_id.substring(0, select_id.length - 1);
	               	console.log(select_id);
	               	var time = CurentTime();
			        function CurentTime()
			        { 
			            var now = new Date();
			            var year = now.getFullYear();       //年
			            var month = now.getMonth() + 1;     //月
			            var day = now.getDate();            //日
			            var hh = now.getHours();            //时  
			            var mm = now.getMinutes();          //分  
			            var ss = now.getSeconds();          //秒  
			            var clock = year + "-";
			           if(month < 10)  
			              clock += "0";  
			              clock += month + "-";  
	 			          if(day < 10)  
	 			              clock += "0";  
	 			          clock += day + " ";  
	 			          if(hh < 10)  
	 			              clock += "0";  
	 			          clock += hh + ":";  
	 			          if (mm < 10) clock += '0';   
	 			          clock += mm + ":";   
	 			          if (ss < 10) clock += '0';   
	 			          clock += ss;   
	 			          return(clock);
			        };
			        console.log(time);
			        var patient_id = $('#patient_message_id1').val();
				       //执行医嘱
				        actionRequisition_List(select_id,time);
				        
				        function actionRequisition_List(select_id,time){
				        	 $.ajax({
									url: "/hospital/actionRequisition_List",
									type:"post",
									data:{
										action_requisition_time : time,
										select_id : select_id,
										take_requisition : 1,
										
										
									},
									 success: function (data) {
										 
						                $('#tb_patient_message').bootstrapTable('refresh');
						                $.ajax({
			   								url: "/hospital/add_medical_Payment_message",
			   								type:"post",
			   								data:{
			   									select_id : select_id,
			   								},
			   								 success: function (data) {
			   									swal({
								                	   title:"执行成功",
								                	   text:"",
								                	   type:"success"
								                   });
			   						         },
			   						         error:function(){
			   						        	 
			   								 }
			   							});
						                
							         },
							         error:function(){
							        	 swal({
						                	   title:"执行失败",
						                	   text:"",
						                	   type:"error"
						                   });
									 }
								});
				        	 console.log(time);
				       		 };}
	               	}
					
					
				
				});
			
			//打印
			$(document).on('click', "#btn_printf",function(){
				$.ajax({
					url: "/hospital/printf_selectRequisition_List",
					type:"get",
					data:{
						pageSize: 20, //页面大小
						pageNumber: 1, //页码
						requisition_id : "${requisition_id}",
					},
					 success: function (data) {						 
		                $('#tb_patient_message').bootstrapTable('refresh');
			         },
			         error:function(){
			        	
					 }
				});
				
				
			});
		};

		return oInit;
	};	
		</script>
		
		
	</body>
</html>