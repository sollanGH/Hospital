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
		<meta charset="UTF-8">
		<title></title>
		<style type="text/css">
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
					<!-- <div class="btn-group" style="margin-left: 5px;">
					    <font style="font-size: 14px;" color="#000000">预交金</font>
					    <input readonly="readonly" style="width: 90px; "/>
					</div>
		        	<div class="btn-group" style="margin-left: 20px;">
					    <font style="font-size: 14px;" color="#000000">余额</font>
					    <input readonly="readonly" style="width: 90px; "/>
					</div> -->
					<div class="btn-group" style="margin-left: 20px;">
					    <font style="font-size: 14px;" color="#000000">初步诊断</font>
					    <input id="diagnosis_a1" readonly="readonly" style="width: 150px; "/>
					</div>
					<div class="btn-group" style="margin-left: 20px;">
					    <!-- <font style="font-size: 14px;" color="#000000">medical_orders_id</font> -->
					    <input id="requisition_id" type="hidden" style="width: 150px; "/>
					    <input id="med_id" type="hidden" style="width: 150px; "/>
					</div>
		        </div>     
		        
		        <div class="form-group" style="margin-top: 10px; height: 5px;">
		        	
					<!-- <div class="btn-group" style="margin-left: 20px;">
					    <font style="font-size: 14px;" color="#000000">初步诊断2</font>
					    <input readonly="readonly" style="width: 150px; "/>
					</div> -->
		        </div>
	        </div>
		
		
		
		</div>	
							
		<div id="toolbar" class="btn-group">
		<div class="btn-group" style="margin-left: 20px;">
	      <button id="btn_action" type="button" class="btn btn-white" >
      			<span class="glyphicon glyphicon-pencil"></span>医嘱执行
    	</button>	        
		</div>
		<div class="btn-group" style="margin-left: 20px;">
	      <button id="btn_printf" type="button" class="btn btn-white" >
      			<span class="glyphicon glyphicon-print"></span>医嘱打印
    	</button>	        
		</div>
	    	<div class="btn-group" style="margin-left: 20px;">
                     	<select  id="type" name="type" class="selectpicker " data-dropup-auto="false" data-size="5" >
 						<option value="1">临时医嘱</option>
 						<option value="2">长期医嘱</option>
				</select>
			</div>
	   		<!-- <button id="btn_check_cancel" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-remove" ></span>取消校对
          	</button>
          	<button id="btn_action" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-remove" ></span>医嘱执行
          	</button> -->
    	</div>
    	<div id="toolbar2" class="btn-group">
		<div class="btn-group" style="margin-left: 20px;">
	      <button id="btn_action2" type="button" class="btn btn-white" >
      			<span class="glyphicon glyphicon-pencil"></span>医嘱执行
    	</button>	        
		</div>
		<div class="btn-group" style="margin-left: 20px;">
	      <button id="btn_printf2" type="button" class="btn btn-white" >
      			<span class="glyphicon glyphicon-print"></span>医嘱打印
    	</button>	        
		</div>
	    	<div class="btn-group" style="margin-left: 20px;">
                     	<select  id="type2" name="type" class="selectpicker " data-dropup-auto="false" data-size="5" >
 						<option value="1">临时医嘱</option>
 						<option value="2">长期医嘱</option>
				</select>
			</div>
	   		<!-- <button id="btn_check_cancel" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-remove" ></span>取消校对
          	</button>
          	<button id="btn_action" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-remove" ></span>医嘱执行
          	</button> -->
    	</div>
        
        <div id="block3" style="transform: translateY(-17px);">
				<table id="tb_patient_message"></table>
			</div>
		<div id="block4" style="transform: translateY(-17px);">
				<table id="tb_patient_message2"></table>
			</div>	
			
		<script type="text/javascript">
		
		$(document).ready(function (){
			
			if("${USER.role_id}" == 5){
				
				$("#btn_action").hide();
				$("#btn_action2").hide();
						}
			
			
			$("#block4").hide();
			$('#med_id').val("${medical_orders_id}");
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
			var oTable2 = new TableInit2();
			oTable2.Init();
			//2.初始化Button的点击事件
			var oButtonInit = new ButtonInit();
			oButtonInit.Init();
		});
		var TableInit = function() {
		
		var oTableInit = new Object();
		//初始化Table
		oTableInit.Init = function() {
			$('#tb_patient_message').bootstrapTable({
				url: '/hospital/select_today_Medical_Orders_List', //请求后台的URL（*）
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
				//height: $(window).height()*0.83,
				columns:
					[
	                 [  {
	     					checkbox: true,
	     					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	     				},{
	                        valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	                        field: 'medical_orders_list_type',
	    					title: '医嘱',
	    					formatter : function(value, row, index) {
	                            if (value == 1) {
	                            	value = '临时';
	                            	color = 'Black';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';;
	                                //console.log(row['deparment.deparment_name']);
	                            }
	                            return value;
	                       }
	                     },
	                    {
	                        valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	                        field: 'group',
	    					title: '组'
	                     },
	                     {
	                        valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	                        field: 'medicines.medicines_name',
	    					title: '项目名称',
	    					formatter : function(value, row, index) {
	                            if (value == null) {
	                            	if(row.project!=null){
	                            		value = row.project.project_name;
		                                //console.log(row.project.project_name);
		                                return  value ;
	                            	}else if(row.inspection_item!=null){
	                            		value = row.inspection_item.inspection_item_name;
		                                //console.log(row.project.project_name);
		                                return  value ;
	                            	}
	                            	
	                                
	                            }/* else{
	                            	console.log(value);
	                            } */
	                            
                                //console.log(row.project['project_name']);
	                            return value;
	                       }
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
	    					title: '单位',
	    					formatter : function(value, row, index) {
	                            if (value == null) {
	                            	if(row.project!=null){
	                            		value = row.project.project_unit;
		                                //console.log(row.project.project_name);
		                                return  value ;
	                            	}else if(row.inspection_item!=null){
	                            		value = row.inspection_item.inspection_item_unit;
		                                //console.log(row.project.project_name);
		                                return  value ;
	                            	}
	                            	
	                                
	                            }/* else{
	                            	console.log(value);
	                            } */
	                            
                                //console.log(row.project['project_name']);
	                            return value;
	                       }
	    				},/* {
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'money',
	    					title: '总费用'
	    				}, */{
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
	    					field: 'speed',
	    					title: '滴速'
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'ways',
	    					title: '途径',
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'direction',
	    					title: '用法',
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'action_status',
	    					title: '执行',
	    					formatter : function(value, row, index) {
	                            if (value == true) {
	                            	value = '已执行';
	                            	color = 'Black';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';
	                                //console.log(row['deparment.deparment_name']);
	                            }else if(value == false){
	                            	value = '未执行';
	                            	color = 'Red';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';
	                            }
	                            return value;
	                       }
	    				},
	                     {
	                         title: "医嘱执行",
	                         valign:"middle",
	                         align:"center",
	                         colspan: 4,
	                         rowspan: 1
	                     }
	                ],
	                 [
	                    {
	                         field: 'start_time',
	                         title: '开始时间',
	                        valign:"middle",
	                         align:"center",
	                          formatter: function (value, row, index) {
				                    return changeDateFormat(value);
				                }, 
	                     },
	                     {
	                         field: 'user.user_name',
	                        title: '开嘱医生',
	                         valign:"middle",
	                        align:"center"
	                     },{
	                         field: 'action_time',
	                         title: '执行时间',
	                        valign:"middle",
	                         align:"center",
	                          formatter: function (value, row, index) {
				                    return changeDateFormat(value);
				                }, 
	                     },
	                     {
	                         field: 'user1.user_name',
	                         title: '执行护士',
	                         valign:"middle",
	                         align:"center"
	                     },
	                      /* {
	                         field: 'action_time',
	                        title: '执行时间',
	                         valign:"middle",
	                         align:"center",
	                         formatter: function (value, row, index) {
				                    return changeDateFormat(value);
				                },
	                    } */
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
						//$("#btn_single_submit").attr("disabled","disabled");
					}
				},
				onUncheck: function (row, $element) {			
					count = count-1;
					if(count<=1){
						$("#btn_edit").removeAttr("disabled");
						//$("#btn_single_submit").removeAttr("disabled");
					}
					//console.log(count);    
				},
				//当全选行时触发，所需的参数如下
				onCheckAll: function (row) {
					$("#btn_edit").attr("disabled","disabled");
					//$("#btn_single_submit").attr("disabled","disabled");
				},
				onUncheckAll: function (row) {
					count = 0;
					$("#btn_edit").removeAttr("disabled");
					//$("#btn_single_submit").removeAttr("disabled");
				},
				//当重置（reset）表的视图时触发
				onResetView: function () {
					count = 0;
					$("#btn_edit").removeAttr("disabled");
					//$("#btn_single_submit").removeAttr("disabled");
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
					patient_id: "${patient_id}",
					medical_orders_action_id: "${medical_orders_id}",
				};
				return param;
			};
		return oTableInit;
	};	
var TableInit2 = function() {
		
		var oTableInit2 = new Object();
		//初始化Table
		oTableInit2.Init = function() {
			$('#tb_patient_message2').bootstrapTable({
				url: '/hospital/select_today_Medical_Orders_List_Long', //请求后台的URL（*）
				method: 'get', //请求方式（*）
				toolbar: '#toolbar2', //工具按钮用哪个容器
				striped: true, //是否显示行间隔色
				cache: false, //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
				pagination: true, //是否显示分页（*）
				sortable: true, //是否启用排序
				sortOrder: "asc", //排序方式
				queryParams: oTableInit2.queryParams, //传递参数（*）
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
				//height: $(window).height()*0.77,
				columns:
				[
	                 [  {
	     					checkbox: true,
	     					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	     				},{
	                        valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	                        field: 'medical_orders_list_type',
	    					title: '医嘱',
	    					formatter : function(value, row, index) {
	                            if (value == 2) {
	                            	value = '长期';
	                            	color = 'Black';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';;
	                                //console.log(row['deparment.deparment_name']);
	                            }
	                            return value;
	                       }
	                     },
	                     {
		                        valign:"middle",
		                        align:"center",
		                        colspan: 1,
		                        rowspan: 2,
		                        field: 'group',
		    					title: '组'
		                     },
	                     {
	                        valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	                        field: 'medicines.medicines_name',
	    					title: '项目名称',
	    					formatter : function(value, row, index) {
	                            if (value == null) {
	                            	if(row.project!=null){
	                            		value = row.project.project_name;
		                                //console.log(row.project.project_name);
		                                return  value ;
	                            	}else if(row.inspection_item!=null){
	                            		value = row.inspection_item.inspection_item_name;
		                                //console.log(row.project.project_name);
		                                return  value ;
	                            	}
	                            	
	                                
	                            }/* else{
	                            	console.log(value);
	                            } */
	                            
                                //console.log(row.project['project_name']);
	                            return value;
	                       }
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
	    					title: '数量'
	    				}, {
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'medicines.medicines_unit',
	    					title: '单位',
	    					formatter : function(value, row, index) {
	                            if (value == null) {
	                            	if(row.project!=null){
	                            		value = row.project.project_unit;
		                                //console.log(row.project.project_name);
		                                return  value ;
	                            	}else if(row.inspection_item!=null){
	                            		value = row.inspection_item.inspection_item_unit;
		                                //console.log(row.project.project_name);
		                                return  value ;
	                            	}
	                            	
	                                
	                            }/* else{
	                            	console.log(value);
	                            } */
	                            
                                //console.log(row.project['project_name']);
	                            return value;
	                       }
	    				},/* {
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'medicines.medicines_price',
	    					title: '售价'
	    				}, */{
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
	    					field: 'speed',
	    					title: '滴速'
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'ways',
	    					title: '途径',
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'direction',
	    					title: '用法',
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'action_status',
	    					title: '执行',
	    					formatter : function(value, row, index) {
	                            if (value == true) {
	                            	value = '已执行';
	                            	color = 'Black';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';
	                                //console.log(row['deparment.deparment_name']);
	                            }else if(value == false){
	                            	value = '未执行';
	                            	color = 'Red';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';
	                            }
	                            return value;
	                       }
	    				},
	                     {
	                         title: "医嘱执行",
	                         valign:"middle",
	                         align:"center",
	                         colspan: 4,
	                         rowspan: 1
	                     },{
	                         title: "医嘱停止",
	                         valign:"middle",
	                         align:"center",
	                         colspan: 2,
	                         rowspan: 1
	                     }
	                     /* {
	                         title: "松下",
	                         valign:"middle",
	                         align:"center",
	                         colspan: 2,
	                         rowspan: 1
	                     } */
	                ],
	                 [
	                    {
	                         field: 'start_time',
	                         title: '开始时间',
	                        valign:"middle",
	                         align:"center",
	                          formatter: function (value, row, index) {
				                    return changeDateFormat(value);
				                }, 
	                     },
	                     {
	                         field: 'user.user_name',
	                        title: '开嘱医生',
	                         valign:"middle",
	                        align:"center"
	                     },
	                      {
	                         field: 'action_time',
	                        title: '执行时间',
	                         valign:"middle",
	                         align:"center",
	                         formatter: function (value, row, index) {
				                    return changeDateFormat(value);
				                },
	                    },
	                     {
	                         field: 'user1.user_name',
	                         title: '执行护士',
	                         valign:"middle",
	                         align:"center"
	                     },{
	                         field: 'end_time',
	                         title: '停止时间',
	                         valign:"middle",
	                         align:"center",
	                         formatter: function (value, row, index) {
				                    return changeDateFormat(value);
				                },
	                     },{
	                         field: 'user2.user_name',
	                         title: '停嘱医生',
	                         valign:"middle",
	                         align:"center"
	                     }
	                 ]
	             ],
				//事件处理
				//当选择（check）此行时触发
				onDblClickRow: function (row, $element) {
					/* turnnew();
					function turnnew(){
						page("toPatientList","123");
						function page(url, title) {
						var nav = $(window.parent.document).find('.J_menuTabs .page-tabs-content ');
						$(window.parent.document).find('.J_menuTabs .page-tabs-content ').find(".J_menuTab.active").removeClass("active");
						$(window.parent.document).find('.J_mainContent').find("iframe").css("display", "none");
						var iframe = '<iframe class="J_iframe" name="iframe10000" width="100%" height="100%" src="' + url + '" frameborder="0" data-id="' + url
						+ '" seamless="" style="display: inline;"></iframe>';
						$(window.parent.document).find('.J_menuTabs .page-tabs-content ').append(
						' <a href="javascript:;" class="J_menuTab active" data-id="'+url+'">' + title + ' <i class="fa fa-times-circle"></i></a>');
						$(window.parent.document).find('.J_mainContent').append(iframe);
						};
					} */
				},
				onCheck: function (row, $element) {	
					
					var arrselectedData = $('#tb_patient_message2').bootstrapTable('getSelections');
					var row = arrselectedData[0];
					console.log(row);
					count = count+1;
					//console.log(count);
					if(count>1){
						$("#btn_edit2").attr("disabled","disabled");
						/* $("#btn_edit_time2").attr("disabled","disabled");
						$("#btn_single_submit2").attr("disabled","disabled");
						$("#btn_group_submit2").attr("disabled","disabled"); */
					}
				},
				onUncheck: function (row, $element) {			
					count = count-1;
					if(count<=1){
						$("#btn_edit2").removeAttr("disabled");
						/* $("#btn_edit_time2").removeAttr("disabled");
						$("#btn_single_submit2").removeAttr("disabled");
						$("#btn_group_submit2").removeAttr("disabled"); */
					}
					//console.log(count);    
				},
				//当全选行时触发，所需的参数如下
				onCheckAll: function (row) {
					$("#btn_edit2").attr("disabled","disabled");
					$("#btn_edit_time2").attr("disabled","disabled");
					$("#btn_single_submit2").attr("disabled","disabled");
					$("#btn_group_submit2").attr("disabled","disabled");
				},
				onUncheckAll: function (row) {
					count = 0;
					$("#btn_edit2").removeAttr("disabled");
					$("#btn_edit_time2").removeAttr("disabled");
					$("#btn_single_submit2").removeAttr("disabled");
					$("#btn_group_submit2").removeAttr("disabled");
				},
				//当重置（reset）表的视图时触发
				onResetView: function () {
					count = 0;
					$("#btn_edit2").removeAttr("disabled");
					$("#btn_edit_time2").removeAttr("disabled");
					$("#btn_single_submit2").removeAttr("disabled");
					$("#btn_group_submit2").removeAttr("disabled");
				},
			});
			
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
			oTableInit2.queryParams = function(params) {
				var param = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
					pageSize: params.pageSize, //页面大小
					pageNumber: params.pageNumber, //页码
					patient_id: "${patient_id}",
					medical_orders_action_id: "${medical_orders_id}",
				};
				return param;
			};
		return oTableInit2;
	};	
		
		var ButtonInit = function() {
		var oInit = new Object();
		//var postdata = {};
		oInit.Init = function() {
			//初始化页面上面的按钮事件
			//校对按钮					
			$(document).on('click', "#btn_check",function(){									
				var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
				var row = arrselectedData[0];						
				if (arrselectedData.length <= 0) {
					swal({
	                	   title:"请选中一行",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else if(arrselectedData.length > 0  && row.check_status == false){
                	var select_id = '';
                	for (var i = 0; i < arrselectedData.length; i++) {
                		select_id += arrselectedData[i]['medical_orders_list_id'] + ",";
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
			       //校对医嘱
			        check_Medical_Orders_List(select_id,time);
			        
			        function check_Medical_Orders_List(select_id,time){
			        	 $.ajax({
								url: "/hospital/check_Medical_Orders_List",
								type:"post",
								data:{
									check_nurse_id : "${USER.user_work_id}",
									select_id : select_id,
									check_time: time,
									check_status : 1,
								},
								 success: function (data) {
									 swal({
					                	   title:"医嘱校对成功",
					                	   text:"",
					                	   type:"success"
					                   });
					               
					                $('#tb_patient_message').bootstrapTable('refresh');
						         },
						         error:function(){
						        	 swal({
					                	   title:"医嘱校对失败",
					                	   text:"",
					                	   type:"error"
					                   });
								 }
							});
			        	 console.log(time);
			       		 };
                 }else if(arrselectedData.length > 0  && row.check_status == true){
                	 swal({
	                	   title:"所选的行有校对过",
	                	   text:"",
	                	   type:"warning"
	                   });
                 }
				});
			$(document).on('click', "#btn_check2",function(){									
				var arrselectedData = $('#tb_patient_message2').bootstrapTable('getSelections');
				var row = arrselectedData[0];						
				if (arrselectedData.length <= 0) {
					swal({
	                	   title:"请选中一行",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else if(arrselectedData.length > 0  && row.check_status == false){
                	var select_id = '';
                	for (var i = 0; i < arrselectedData.length; i++) {
                		select_id += arrselectedData[i]['medical_orders_list_id'] + ",";
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
			        var patient_id = $('#patient_message_id1').val();
			        var medical_orders_id111 = $('#med_id').val();
			        console.log(time);
			       //校对医嘱
			        check_Medical_Orders_List(select_id,time);
			        
			        function check_Medical_Orders_List(select_id,time){
			        	 $.ajax({
								url: "/hospital/check_Medical_Orders_List",
								type:"post",
								data:{
									check_nurse_id : "${USER.user_work_id}",
									select_id : select_id,
									check_time: time,
									check_status : 1,
									patient_id : patient_id,
									medical_orders_id : medical_orders_id111,
								},
								 success: function (data) {
									 swal({
					                	   title:"医嘱校对成功",
					                	   text:"",
					                	   type:"success"
					                   });
					               
					                $('#tb_patient_message2').bootstrapTable('refresh');
						         },
						         error:function(){
						        	 swal({
					                	   title:"医嘱校对失败",
					                	   text:"",
					                	   type:"error"
					                   });
								 }
							});
			        	 console.log(time);
			       		 };
                 }else if(arrselectedData.length > 0  && row.check_status == true){
                	 swal({
	                	   title:"所选的行有校对过",
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
                    		if(arrselectedData[i]['check_status'] == false){
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
 				}else if(a ==true){
 					var select_id = '';
                   	for (var i = 0; i < arrselectedData.length; i++) {
                   		select_id += arrselectedData[i]['medical_orders_list_id'] + ",";
                       }
                   	//去掉最后的逗号
                   	select_id = select_id.substring(0, select_id.length - 1);
                   	console.log(select_id);
   			       //校对医嘱
   			        cancel_check_Medical_Orders_List(select_id);
   			        
   			        function cancel_check_Medical_Orders_List(select_id){
   			        	 $.ajax({
   								url: "/hospital/cancel_check_Medical_Orders_List",
   								type:"post",
   								data:{
   									select_id : select_id,
   									check_status : 0,
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
   			        	 console.log(time);
   			       		 };}
                   	}
				});
			//打印
			$(document).on('click', "#btn_printf",function(){
				var patient_id = $('#patient_message_id1').val();
		        var medical_orders_id111 = $('#med_id').val();
							$.ajax({
									url: "/hospital/printf_select_today_Medical_Orders_List",
									type:"get",
									data:{
										pageSize: 20, //页面大小
										pageNumber: 1, //页码
										patient_id : patient_id,
										medical_orders_action_id : medical_orders_id111,
									},
									 success: function (data) {						 
						                $('#tb_patient_message').bootstrapTable('refresh');
							         },
							         error:function(){
							        	
									 }
								});
							
						});
			$(document).on('click', "#btn_printf2",function(){
				var patient_id = $('#patient_message_id1').val();
		        var medical_orders_id111 = $('#med_id').val();
							$.ajax({
									url: "/hospital/printf_select_today_Medical_Orders_List_Long",
									type:"get",
									data:{
										pageSize: 20, //页面大小
										pageNumber: 1, //页码
										patient_id : patient_id,
										medical_orders_action_id : medical_orders_id111,
									},
									 success: function (data) {						 
						                $('#tb_patient_message2').bootstrapTable('refresh');
							         },
							         error:function(){
							        	
									 }
								});
							
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
                }else/* else if(arrselectedData.length > 0){
                	var a = true;
                	for (var i = 0; i < arrselectedData.length; i++) {
                		if(arrselectedData[i]['check_status'] == false){
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
				}else if(a ==true) */{
					var select_id = '';
	               	for (var i = 0; i < arrselectedData.length; i++) {
	               		select_id += arrselectedData[i]['medical_orders_list_action_id'] + ",";
	                   }
	               	//去掉最后的逗号
	               	select_id = select_id.substring(0, select_id.length - 1);
	               	console.log(select_id);
	               	var time = CurentTime();
	               	var time1 = CurentTime1();
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
			        function CurentTime1()
			        { 
			            var now = new Date();
			            var year = now.getFullYear();       //年
			            var month = now.getMonth() + 1;     //月
			            var day = now.getDate();            //日
			            var hh = 0;            //时  
			            var mm = 0;          //分  
			            var ss = 0;          //秒  
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
			        //console.log(time);
			        //console.log(time1);
			        var patient_id = $('#patient_message_id1').val();
			        var medical_orders_id111 = $('#med_id').val();
			        console.log("==========="+medical_orders_id111);
				       //执行医嘱
				        action_Medical_Orders_List(select_id,time,medical_orders_id111);
				        
				        function action_Medical_Orders_List(select_id,time,medical_orders_id111){
				        	 $.ajax({
									url: "/hospital/action_Medical_Orders_List_Action",
									type:"post",
									data:{
										action_time : time,
										select_id : select_id,
										action_status : 1,
										nurse_id : "${USER.user_work_id}",
										start_time : time1,
										patient_id : patient_id,
										medical_orders_action_id : medical_orders_id111,
										
									},
									 success: function (data) {
										 swal({
						                	   title:"执行成功",
						                	   text:"",
						                	   type:"success"
						                   });
										$('#requisition_id').val(data);
										var requisition_id = $('#requisition_id').val();
						               	console.log(requisition_id);
						               	console.log(data);
						                $('#tb_patient_message').bootstrapTable('refresh');
						                
						                add_Requisition_List(select_id,time,requisition_id);
						                function add_Requisition_List(select_id,time,requisition_id){
						                	$.ajax({
				   								url: "/hospital/add_Requisition_List1",
				   								type:"post",
				   								data:{
				   									select_id : select_id,
				   									take_requisition_time : time,
				   									requisition_id : requisition_id,
				   								},
				   								 success: function (data) {
				   									
				   						         },
				   						         error:function(){
				   						        	
				   								 }
				   							});
						                }
						                add_Payment(select_id);
						                function add_Payment(select_id){
						                	$.ajax({
				   								url: "/hospital/add_project_Payment_message",
				   								type:"post",
				   								data:{
				   									select_id : select_id,
				   								},
				   								 success: function (data) {
				   									
				   						         },
				   						         error:function(){
				   						        	
				   								 }
				   							});
						                }
						                var todayYear=(new Date()).getFullYear();
						                var todayMonth=(new Date()).getMonth();
						                var todayDay=(new Date()).getDate();
						                var todayTime=(new Date()).getTime();
						                var a = changeDateFormat(todayTime);
						                function changeDateFormat(cellval) {
						        		    var dateVal = cellval + "";
						        		    if (cellval != null) {
						        		        var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
						        		        var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
						        		        var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
						        		        return date.getFullYear()  + month   + currentDate  ;
						        		    };
						        		};
						        		var randnum=rand(1000,9999);
						        		function rand(min,max) {
						        	        return Math.floor(Math.random()*(max-min))+min;
						        	    }
						        		var inspection_id = "JY"+a+randnum;
						                
						                add_Inspection(select_id,time,inspection_id);
						                function add_Inspection(select_id,time,inspection_id){
						                	$.ajax({
				   								url: "/hospital/add_Inspection",
				   								type:"post",
				   								data:{
				   									select_id : select_id,
				   									inspection_id : inspection_id,
				   									inspection_time : time,
				   								},
				   								 success: function (data) {
				   									
				   						         },
				   						         error:function(){
				   						        	
				   								 }
				   							});
						                
						                
						                
						                }
						                
						                
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
	               	
					
					
				
				});
		};
		$(document).on('click', "#btn_action2",function(){
			
			var arrselectedData = $('#tb_patient_message2').bootstrapTable('getSelections');
			var row = arrselectedData[0];						
			if (arrselectedData.length <= 0) {
				swal({
                	   title:"请选中一行",
                	   text:"",
                	   type:"warning"
                   });
            }else/* else if(arrselectedData.length > 0){
            	var a = true;
            	for (var i = 0; i < arrselectedData.length; i++) {
            		if(arrselectedData[i]['check_status'] == false){
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
			}else if(a ==true) */{
				var select_id = '';
               	for (var i = 0; i < arrselectedData.length; i++) {
               		select_id += arrselectedData[i]['medical_orders_list_action_id'] + ",";
                   }
               	//去掉最后的逗号
               	select_id = select_id.substring(0, select_id.length - 1);
               	console.log(select_id);
               	var time = CurentTime();
               	var time1 = CurentTime1();
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
		        function CurentTime1()
		        { 
		            var now = new Date();
		            var year = now.getFullYear();       //年
		            var month = now.getMonth() + 1;     //月
		            var day = now.getDate();            //日
		            var hh = 0;            //时  
		            var mm = 0;          //分  
		            var ss = 0;          //秒  
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
		        console.log(time1);
		        var patient_id = $('#patient_message_id1').val();
		        var medical_orders_id111 = $('#med_id').val();
		        console.log("==========="+medical_orders_id111);
			       //执行医嘱
			        action_Medical_Orders_List(select_id,time,medical_orders_id111);
			        
			        function action_Medical_Orders_List(select_id,time,medical_orders_id111){
			        	 $.ajax({
								url: "/hospital/action_Medical_Orders_List_Action",
								type:"post",
								data:{
									action_time : time,
									select_id : select_id,
									action_status : 1,
									nurse_id : "${USER.user_work_id}",
									start_time : time1,
									patient_id : patient_id,
									medical_orders_action_id : medical_orders_id111,
									
								},
								 success: function (data) {
									 swal({
					                	   title:"执行成功",
					                	   text:"",
					                	   type:"success"
					                   });
									$('#requisition_id').val(data);
									var requisition_id = $('#requisition_id').val();
					               	console.log(requisition_id);
					               	console.log(data);
					                $('#tb_patient_message2').bootstrapTable('refresh');
					                
					                add_Requisition_List(select_id,time,requisition_id);
					                function add_Requisition_List(select_id,time,requisition_id){
					                	$.ajax({
			   								url: "/hospital/add_Requisition_List1",
			   								type:"post",
			   								data:{
			   									select_id : select_id,
			   									take_requisition_time : time,
			   									requisition_id : requisition_id,
			   								},
			   								 success: function (data) {
			   									
			   						         },
			   						         error:function(){
			   						        	
			   								 }
			   							});
					                }
					                add_Payment(select_id);
					                function add_Payment(select_id){
					                	$.ajax({
			   								url: "/hospital/add_project_Payment_message",
			   								type:"post",
			   								data:{
			   									select_id : select_id,
			   								},
			   								 success: function (data) {
			   									
			   						         },
			   						         error:function(){
			   						        	
			   								 }
			   							});
					                }
					                var todayYear=(new Date()).getFullYear();
					                var todayMonth=(new Date()).getMonth();
					                var todayDay=(new Date()).getDate();
					                var todayTime=(new Date()).getTime();
					                var a = changeDateFormat(todayTime);
					                function changeDateFormat(cellval) {
					        		    var dateVal = cellval + "";
					        		    if (cellval != null) {
					        		        var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
					        		        var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
					        		        var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
					        		        return date.getFullYear()  + month   + currentDate  ;
					        		    };
					        		};
					        		var randnum=rand(1000,9999);
					        		function rand(min,max) {
					        	        return Math.floor(Math.random()*(max-min))+min;
					        	    }
					        		var inspection_id = "JY"+a+randnum;
					                
					                add_Inspection(select_id,time,inspection_id);
					                function add_Inspection(select_id,time,inspection_id){
					                	$.ajax({
			   								url: "/hospital/add_Inspection",
			   								type:"post",
			   								data:{
			   									select_id : select_id,
			   									inspection_id : inspection_id,
			   									inspection_time : time,
			   								},
			   								 success: function (data) {
			   									
			   						         },
			   						         error:function(){
			   						        	
			   								 }
			   							});
					                
					                
					                
					                }
					                
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
		
		});
		
		return oInit;
	};	
	
	/* $(document).on('change', "#type",function(){
		//console.log($('#type').val());
		if($('#type').val()==1){
			$("#block3").show();
			$("#block4").hide();
			$('#type').selectpicker('val',1);
		}
		}); */
	$(document).on('change', "#type",function(){
		//console.log($('#type').val());
		if($('#type').val()==2){
			$("#block3").hide();
			$("#block4").show();
			$('#type2').selectpicker('val',2);
		}
		});
	$(document).on('change', "#type2",function(){
		console.log($('#type2').val());
		if($('#type2').val()==1){
			$("#block3").show();
			$("#block4").hide();
			$('#type').selectpicker('val',1);
		}
		});
		</script>
		
		
	</body>
</html>