<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-editable.css" />
		<link rel="stylesheet" href="css/bootstrap-table.min.css" />
		<link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
	    <link href="css/animate.min.css" rel="stylesheet">
	    <link href="css/style.min.css?v=4.0.0" rel="stylesheet">
	    <link href="css/bootstrap-select.min.css" rel="stylesheet">
	    <link rel="stylesheet" href="css/jquery.bootstrap-touchspin.min.css" />
	    <link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
	    <link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css" />
	     
		<script type="text/javascript" src="js/jquery.min.js"></script>
	 	<script src="js/bootstrap.min.js?v=3.3.5"></script>
	 	<script src="js/bootstrap-editable.min.js"></script>
		
		<script type="text/javascript" src="js/bootstrap-table.min.js"></script>
		<script type="text/javascript" src="js/bootstrap-table-zh-CN.min.js"></script>
		<script src="js/bootstrap-table-editable.js"></script>
		<script src="js/content.min.js?v=1.0.0"></script>
	    <script src="js/plugins/validate/jquery.validate.min.js"></script>
	    <script src="js/plugins/validate/messages_zh.min.js"></script>
	    <script src="js/demo/form-validate-demo.min.js"></script>
	    <script src="js/bootstrap-select.min.js"></script>
	    <script src="js/bootstrap-suggest.js"></script>
	    <script src="js/jquery.dropdown.js" ></script>
	    <script src="js/jquery.bootstrap-touchspin.min.js" ></script>
	    <script src="js/bootstrap-suggest.js"></script>
	    
	    <script type="text/javascript" src="js/bootstrap-datetimepicker.min.js" ></script>
	    <script type="text/javascript" src="js/bootstrap-table-export.js" ></script>
	    <script type="text/javascript" src="js/tableExport.min.js" ></script>
	    <script type="text/javascript" src="js/xlsx.core.min.js" ></script>
	    <script type="text/javascript" src="js/FileSaver.min.js" ></script>
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
   				 width: 150px;
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
			.col-sm-3{
				width: 18.5%;
			}
			.col-sm-2{
				width: 12.5%;
			}
			.bootstrap-select>.dropdown-toggle{
				width: 55%;
			}
			.col-sm-1{
				width: 10.8%;
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
					   <!--  <font style="font-size: 14px;" color="#000000">medical_orders_id</font> -->
					    <input id="requisition_id" type="hidden" style="width: 150px; "/>
					</div>
					<div class="btn-group" style="margin-left: 20px;">
					   <!--  <font style="font-size: 14px;" color="#000000">medical_orders_id</font> -->
					    <input id="id_number" type="hidden" style="width: 150px; "/>
					</div>
					<div class="btn-group" style="margin-left: 20px;">
					   <!--  <font style="font-size: 14px;" color="#000000">medical_orders_id</font> -->
					    <input id="insurance" type="hidden" style="width: 150px; "/>
					</div>
					<div class="btn-group" style="margin-left: 20px;">
					   <!--  <font style="font-size: 14px;" color="#000000">medical_orders_id</font> -->
					    <input id="phonee" type="hidden" style="width: 150px; "/>
					</div>
		        </div>     
		        
		        <div class="form-group" style="margin-top: 10px; height: 1px;">
		        	
					<!-- <div class="btn-group" style="margin-left: 20px;">
					    <font style="font-size: 14px;" color="#000000">初步诊断2</font>
					    <input readonly="readonly" style="width: 150px; "/>
					</div> -->
		        </div>
	        </div>
		
		
		
		</div>	
		
        <div class="panel-body" style="padding-bottom:0px;">
        
        <div id = "tablea">
        	 <div id="toolbar" class="btn-group">
			<div class="btn-group" style="margin-left: 20px;">
		      <button id="btn_check" type="button" class="btn btn-white" >
	      			<span class="glyphicon glyphicon-pencil"></span>提交报告
	    	</button>	        
			</div>
    	</div> 
        	<table  id="tb_patient_message"></table>
        </div>
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
		                $('#id_number').val(data.rows[0].patient.id_number);
		                $('#insurance').val(data.rows[0].patient.insurance);
		                $('#phonee').val(data.rows[0].patient.phone);
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
				       /*  var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
				        var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
				        var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds(); */
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
				url: '/hospital/select_Inspection_list', //请求后台的URL（*）
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
				pageSize: 15, //每页的记录行数（*）
				pageList: [5, 10, 15, 20,'ALL'], //可供选择的每页的行数（*）
				search: false, //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
				showColumns: true, //是否显示所有的列
				showRefresh: true, //是否显示刷新按钮
				minimumCountColumns: 2, //最少允许的列数
				//singleSelect: false,
				clickToSelect: true, //是否启用点击选中行
				height: 500, //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
				uniqueId: "medical_orders_list_id", //每一行的唯一标识，一般为主键列
				showToggle: true, //是否显示详细视图和列表视图的切换按钮
				cardView: false, //是否显示详细视图
				detailView: false, //是否显示父子表
				//clickToSelect: true,//一定要写！！可以选择：用于edittable
				//showFooter: true,
				//height: $(window).height()*0.83,
				/* //>>>>>>>>>>>>>>导出excel表格设置
			      showExport: phoneOrPc(),              //是否显示导出按钮(此方法是自己写的目的是判断终端是电脑还是手机,电脑则返回true,手机返回falsee,手机不显示按钮)
			      exportDataType: "basic",              //basic', 'all', 'selected'.
			      exportTypes:['excel','xlsx'],	    //导出类型
			      //exportButton: $('#btn_export'),     //为按钮btn_export  绑定导出事件  自定义导出按钮(可以不用)
			      exportOptions:{  
			          ignoreColumn: [0,0],            //忽略某一列的索引  
			          fileName: '数据导出',              //文件名称设置  
			          worksheetName: 'Sheet1',          //表格工作区名称  
			          tableName: '检验数据表',  
			          excelstyles: ['background-color', 'color', 'font-size', 'font-weight'],  
			          //onMsoNumberFormat: DoOnMsoNumberFormat  
			      },
			      //导出excel表格设置<<<<<<<<<<<<<<<< */
				columns:
	                 [   {
	     					checkbox: true,
	     					valign:"middle",
	                        align:"center",
	                        
	     				}, 
	                     {
	                        valign:"middle",
	                        align:"center",
	                        field: 'inspection_item_list_id',
	    					title: '序号',
	                     }, /* {
	                    	valign:"middle",
	                        align:"center",
	     					field: 'patient_id',
	    					title: '住院号'
	    				}, */{
	                    	valign:"middle",
	                        align:"center",
	     					field: 'inspection_item_list_abbr',
	    					title: '项目代号',
	    					
	    					
	    				}, {
	                    	valign:"middle",
	                        align:"center",
	     					field: 'inspection_item_list_name',
	    					title: '项目名称',
	    					
	    				}, {
	    					valign:"middle",
	                        align:"center",
	    					field: 'inspection_item_result',
	    					title: '结果',
	    					 formatter : function(value, row, index){
	    				        if(value == null){
	    				            return "请输入结果";
	    				        }else if(row['inspection_item_list_lower_limit']!=null){
	    				        	
	    				        	if(row['inspection_item_list_lower_limit'] <= value && value <= row['inspection_item_list_upper_limt']){
	    				        		return value;
	    				        	}else if(row['inspection_item_list_upper_limt'] < value){
	    				        		return value +"&nbsp;&nbsp;"+"↑";
	    				        	}else if(row['inspection_item_list_lower_limit'] > value){
	    				        		return value +"&nbsp;&nbsp;"+"↓";
	    				        	}
	    				        	
	    				        }else{
	    				        	return value;
	    				        }
	    				    }, 
	    					editable: {
	    	                    type: 'text',
	    	                    //placeholder: '请输入结果',
	    	                    //title: '结果',
	    	                    //emptytext :'Empty',
	    	                    //emptytext: "点击输入",
	    	                    //defaultValue : '请输入结果',
	    	                    validate: function (v) {
	    	                    	if($.trim(v) == '') { 
	    	                    		return '不能为空'; 
	    	                    		}
	    	                        
	    	                        /* var age = parseInt(v);
	    	                        if (age <= 0) return '年龄必须是正整数'; */
	    	                    }
	   
	    				}},{
	    					valign:"middle",
	                        align:"center",
	    					field: 'inspection_item_list_unit',
	    					title: '单位',
	    					
	    					
	    				},{
	    					valign:"middle",
	                        align:"center",
	    					field: 'inspection_item_list_upper_limt',
	    					title: '参考范围',
	    					formatter : function(value, row, index) {
	                            if (value != null ) {
	                            	value = row['inspection_item_list_lower_limit']+"~"+row['inspection_item_list_upper_limt'];
	                                return  value;
	                                //console.log(row['deparment.deparment_name']);
	                            }else{
	                            	 value = row['inspection_item_list_other_limit'];	
	                            	 return value;
	                            }
	                           
	                       }
	    				},
	                    
	                ],
	              //保存的使用
	                onEditableSave: function (field, row, oldValue, $el) {
	                    //可进行异步操作
						console.log(row.inspection_id);
						if(row.inspection_item_list_lower_limit <= row.inspection_item_result && row.inspection_item_result <= row.inspection_item_list_upper_limt ){
			        		var suggest = null;
							action();
			        	}else if(row.inspection_item_list_upper_limt < row.inspection_item_result){
			        		
			        		var suggest = row.inspection_item_list_name+"偏高提示，"+"数值："+row.inspection_item_result+row.inspection_item_list_unit+"，"
			        		+"参考值："+row.inspection_item_list_lower_limit+"~"+row.inspection_item_list_upper_limt;
			        		action(suggest);
			        		//action1(suggest);
			        	}else if(row.inspection_item_list_lower_limit > row.inspection_item_result){
			        		var suggest = row.inspection_item_list_name+"偏低提示，"+"数值："+row.inspection_item_result+row.inspection_item_list_unit+"，"
			        		+"参考值："+row.inspection_item_list_lower_limit+"~"+row.inspection_item_list_upper_limt;
			        		action(suggest);
			        		//action1(suggest);
			        	}
						function action(suggest){
	                    $.ajax({
	                        type: "post",
	                        url: "/hospital/edit_Inspection_list",
	                        data: {
	                        	
	                        	inspection_item_result : row.inspection_item_result,
                        		inspection_id :	row.inspection_id,
                        		inspection_item_list_id : row.inspection_item_list_id,
                        		inspection_list_suggest : suggest,
	                        },
	                        dataType: 'JSON',
	                        success: function (data, status) {
	                            /* if (data>0) {
	                                alert('提交数据成功');
	                            } */
	                        	$('#tb_patient_message').bootstrapTable('refresh');
	                        },
	                        error: function () {
	                           // alert('编辑失败');
	                        	$('#tb_patient_message').bootstrapTable('refresh');
	                        },
	                        complete: function () {

	                        }

	                    }); 
						}
						
						
	                },
	                /* onPostBody:function () {
	                    //合并页脚
	                   // merge_footer();
	                }, */
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
						$("#btn_zuofei").attr("disabled","disabled");
						$("#btn_print").attr("disabled","disabled");
					}
				},
				onUncheck: function (row, $element) {			
					count = count-1;
					if(count<=1){
						$("#btn_edit").removeAttr("disabled");
						$("#btn_single_submit").removeAttr("disabled");
						$("#btn_zuofei").removeAttr("disabled");
						$("#btn_print").removeAttr("disabled");
					}
					//console.log(count);    
				},
				//当全选行时触发，所需的参数如下
				onCheckAll: function (row) {
					$("#btn_edit").attr("disabled","disabled");
					$("#btn_single_submit").attr("disabled","disabled");
					$("#btn_zuofei").attr("disabled","disabled");
					$("#btn_print").attr("disabled","disabled");
				},
				onUncheckAll: function (row) {
					count = 0;
					$("#btn_edit").removeAttr("disabled");
					$("#btn_single_submit").removeAttr("disabled");
					$("#btn_zuofei").removeAttr("disabled");
					$("#btn_print").removeAttr("disabled");
				},
				//当重置（reset）表的视图时触发
				onResetView: function () {
					count = 0;
					$("#btn_edit").removeAttr("disabled");
					$("#btn_single_submit").removeAttr("disabled");
					$("#btn_zuofei").removeAttr("disabled");
					$("#btn_print").removeAttr("disabled");
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
			function phoneOrPc(){
				var sUserAgent = navigator.userAgent.toLowerCase();  
				var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";  
				var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";  
				var bIsMidp = sUserAgent.match(/midp/i) == "midp";  
				var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";  
				var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";  
				var bIsAndroid = sUserAgent.match(/android/i) == "android";  
				var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";  
				var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";  
				if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {  
					return false;  
				} else {  
				    return true; 
				}  
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
							Inspection_id: "${inspection_id}",
						};
						return param;
				
			};
		return oTableInit;
	};	
	

		var ButtonInit = function() {
		var oInit = new Object();
		//var postdata = {};
		oInit.Init = function() {
			$(document).on('click', "#btn_check",function(){
				
			        //提交
			        btn_check_Pay();
			        function btn_check_Pay(){
			        	$.ajax({
							url: "/hospital/count_action_Inspection_list",
							type:"post",
							data:{
								Inspection_id: "${inspection_id}",
							},
							 success: function (data) {
								 console.log(data);
				               if(data >0 ){
				            	   swal({
				                	   title:"还有"+data+"项未录入",
				                	   text:"",
				                	   type:"warning"
				                   });
				            	   
				               }else{
				            	   $.ajax({
										url: "/hospital/action_Inspection2",
										type:"post",
										data:{
											select_id: "${inspection_id}",
										},
										 success: function (data) {						 
											 swal({
							                	   title:"提交成功",
							                	   text:"",
							                	   type:"success"
							                   });
							                
								         },
								         error:function(){
								        	 swal({
							                	   title:"提交失败",
							                	   text:"",
							                	   type:"success"
							                   });
										 }
									});
				            	   action1();
				            	   function action1(){
					                    $.ajax({
					                        type: "post",
					                        url: "/hospital/add_suggest_Inspection",
					                        data: {
					                        	
					                        	select_id: "${inspection_id}",
					                        	//inspection_suggest : suggest,
					                        	
					                        },
					                        dataType: 'JSON',
					                        success: function (data, status) {
					                            /* if (data>0) {
					                                alert('提交数据成功');
					                            } */
					                        	$('#tb_patient_message').bootstrapTable('refresh');
					                        },
					                        error: function () {
					                           // alert('编辑失败');
					                        	$('#tb_patient_message').bootstrapTable('refresh');
					                        },
					                        complete: function () {

					                        }

					                    }); 
										}
				            	   
				               }
				                
					         },
					         error:function(){
					        	
							 }
						});
			        }
                	
                
						
						
						
					});
		
		};

		return oInit;
	};	
	
	
		</script>
		
	</body>
</html>