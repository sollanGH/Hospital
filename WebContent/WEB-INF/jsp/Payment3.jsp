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
	    <link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css" />
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
	    <script type="text/javascript" src="js/bootstrap-datetimepicker.min.js" ></script>
	    <script type="text/javascript" src="js/bootstrap-table-export.js" ></script>
	    <script type="text/javascript" src="js/tableExport.min.js" ></script>
	    <script type="text/javascript" src="js/xlsx.core.min.js" ></script>
	    <script type="text/javascript" src="js/FileSaver.min.js" ></script>
	    <script src="js/plugins/sweetalert/sweetalert.min.js"></script>
		<meta charset="UTF-8">
		<title></title>
		<style type="text/css">
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
				background: rgb(222,237,255);
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
		        </div>     
		        
		        <div class="form-group" style="margin-top: 10px; height: 37px;">
		        	<div class="btn-group" style="margin-left: 20px;">
					    <font style="font-size: 14px;" color="#000000">初步诊断</font>
					    <input id="diagnosis_a1" readonly="readonly" style="width: 150px; "/>
					</div>
					<div class="btn-group" style="margin-left: 20px;">
					   <!--  <font style="font-size: 14px;" color="#000000">medical_orders_id</font> -->
					    <input id="requisition_id" type="hidden" style="width: 150px; "/>
					</div>
					<!-- <div class="btn-group" style="margin-left: 20px;">
					    <font style="font-size: 14px;" color="#000000">初步诊断2</font>
					    <input readonly="readonly" style="width: 150px; "/>
					</div> -->
		        </div>
	        </div>
		
		
		
		</div>	
							
		<div style="z-index:2;" class="btn-group">
			  <!-- <button id="dropdown1" type="button" class="btn btn-white" >
	        	<span class="glyphicon glyphicon-pencil"></span>费用明细
	    	</button>  -->
	    	<!-- <div class="btn-group" >
				    <a id="dropdown1" class="btn btn-white  dropdown-toggle" data-toggle="dropdown" >
				      	 
				      	 <font color="#000000">费用明细</font> <span class="caret"></span>
				    </a>
				     <ul class="dropdown-menu">
				        <li>
					        <button id="btn_export" type="button" class="btn btn-white"  style="width: 130px;"
					    	onClick="$('#tablea table').tableExport({type:'excel',escape:'false',
					    		fileName:'费用明细',ignoreColumn: [0,0]})">
					        	导出
					    	</button>
				    	</li>		        
				    </ul> 			 		    
				</div> -->
	    	<!-- <div class="btn-group" >
				    <a id="dropdown2" class="btn btn-white  dropdown-toggle" data-toggle="dropdown" >
				      	
				      	 <font color="#000000">药品医嘱明细</font> <span class="caret"></span>
				    </a>
				    <ul class="dropdown-menu">
				        <li>
					        <button id="btn_export" type="button" class="btn btn-white"  style="width: 130px;"
					    	onClick="$('#tableb table').tableExport({type:'excel',escape:'false',
					    		fileName:'药品医嘱明细',ignoreColumn: [0,0]})">
					        	导出
					    	</button>
				    	</li>		        
				    </ul>			 		    
				</div> -->
				<!-- <div class="btn-group" >
				    <a id="dropdown3" class="btn btn-white  dropdown-toggle" data-toggle="dropdown" >
				      	 
				      	 <font color="#000000">按条件汇总</font> <span class="caret"></span>
				    </a>
				    <ul class="dropdown-menu">
				        <li>
					        <button id="btn_export" type="button" class="btn btn-white"  style="width: 130px;"
					    	onClick="$('#tablec table').tableExport({type:'excel',escape:'false',
					    		fileName:'按条件汇总',ignoreColumn: [0,0]})">
					        	导出
					    	</button>
				    	</li>		        
				    </ul>			 		    
				</div> -->
	   		<!-- <button id="btn_check_cancel" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-remove" ></span>药品医嘱明细
          	</button> -->
    	</div>
        
        <div style="transform:translateY(-50px); "id = "tablea">
        	<table  id="tb_patient_message"></table>
        </div>
        <div style="transform:translateY(-50px); "id = "tableb">
        	<table  id="tb_patient_message1"></table>
        </div>
        <div id="condiction1" class="panel panel-default">
				<div class="panel-heading">查询条件</div>
				<div style="z-index:3;" class="panel-body">
					<form  id="formSearch" class="form-horizontal">
						<div class="form-group" style="margin-top:15px">
							<label class="control-label col-sm-2" for="txt_search_patientname">项目名</label>
							<div class="col-sm-3">
								<input  type="text" class="form-control" id="txt_search_patientname"> 
							</div>
						</div>		
						<div class="form-group" style="margin-top:15px">
							<label class="col-sm-2 control-label" for="txt_search_start_ruyuantime">日期</label>
							<div class="col-sm-3">
								<input  id="start_time" type="text" class="form-control" >
								<!-- value="2019-02-27 23:30:57" -->
							</div>
							<div style="transform: translateX(-6.5%);;">
							<label class="col-sm-1 control-label">至</label>
							<div class="col-sm-3">
								<input  id="end_time" type="text" class="form-control" >
								<!-- value="2019-03-14 03:03:07" -->
							</div>
							</div>
							<div class="col-sm-4" style="text-align:left;">
								<button type="button" style="margin-left:50px" id="btn_query" class="btn btn-primary">查询</button>
								<button type="button" style="margin-left:50px" id="btn_clean" class="btn btn-restore">重置</button>
							</div>
						</div>
					</form>
				</div>
				 <div style="transform:translateY(-50px); z-index:1;"id = "tablec">
		        	<table  id="tb_patient_message2"></table>
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
			var oTable1 = new TableInit1();
			oTable1.Init();
			var oTable2 = new TableInit2();
			oTable2.Init();
			//2.初始化Button的点击事件
			var oButtonInit = new ButtonInit();
			oButtonInit.Init();
			$("#tablea").hide();
			$("#condiction1").hide();
		});
		var TableInit = function() {
		
		var oTableInit = new Object();
		//初始化Table
		oTableInit.Init = function() {
			$('#tb_patient_message').bootstrapTable({
				url: '/hospital/select_Patient_Payment', //请求后台的URL（*）
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
				showFooter: true,
				height: $(window).height()*0.83,
				//>>>>>>>>>>>>>>导出excel表格设置
			      showExport: phoneOrPc(),              //是否显示导出按钮(此方法是自己写的目的是判断终端是电脑还是手机,电脑则返回true,手机返回falsee,手机不显示按钮)
			      exportDataType: "basic",              //basic', 'all', 'selected'.
			      exportTypes:['excel','xlsx'],	    //导出类型
			      //exportButton: $('#btn_export'),     //为按钮btn_export  绑定导出事件  自定义导出按钮(可以不用)
			      exportOptions:{  
			          ignoreColumn: [0,0],            //忽略某一列的索引  
			          fileName: '数据导出',              //文件名称设置  
			          worksheetName: 'Sheet1',          //表格工作区名称  
			          tableName: '商品数据表',  
			          excelstyles: ['background-color', 'color', 'font-size', 'font-weight'],  
			          //onMsoNumberFormat: DoOnMsoNumberFormat  
			      },
			      //导出excel表格设置<<<<<<<<<<<<<<<<
				columns:
	                 [  {
	     					checkbox: true,
	     					valign:"middle",
	                        align:"center",
	                        
	     				},
	                     {
	                        valign:"middle",
	                        align:"center",
	                        field: 'payment_id',
	    					title: '单据号',
	    					
	                     }, {
	                    	valign:"middle",
	                        align:"center",
	     					field: 'patient_id',
	    					title: '住院号',
	    					footerFormatter:"总预交费"
	    				},  {
	    					valign:"middle",
	                        align:"center",
	    					field: 'advance_payment',
	    					title: '交款金额',
	    					footerFormatter:function(value){
	    						if(value==""){
	    							return "";
	    						}else{
	    							var count = 0.0;
	    							for(var i in value){
	    								count += value[i].advance_payment;
	    								
	    							}
	    							return count;
	    						}
	    					}
	    					/* formatter : function(value, row, index) {
	                            if (row['advance_payment'] == null) {
	                            	value = row['sum_expenses'];
	                                return  value;
	                                //console.log(row['deparment.deparment_name']);
	                            }
	                            return value;
	                       } */
	    				},{
	    					valign:"middle",
	                        align:"center",
	    					field: 'advance_payment_time',
	    					title: '交款时间',
	    					formatter: function (value, row, index) {
	    	                    return changeDateFormat(value)
	    	                },
	    				},{
	    					valign:"middle",
	                        align:"center",
	    					field: 'user.user_name',
	    					title: '收款员'
	    				},{
	    					valign:"middle",
	                        align:"center",
	    					field: '',
	    					title: '结算日期'
	    				},
	                    
	                ],
	                 
	                onPostBody:function () {
	                    //合并页脚
	                   // merge_footer();
	                },
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
					patient_id: "${patient_id}",	
				};
				return param;
			};
		return oTableInit;
	};	
	var TableInit1 = function() {
		
		var oTableInit1 = new Object();
		//初始化Table
		oTableInit1.Init = function() {
			$('#tb_patient_message1').bootstrapTable({
				url: '/hospital/select_Singel_Patient_medical_Payment', //请求后台的URL（*）
				method: 'get', //请求方式（*）
				toolbar: '#toolbar', //工具按钮用哪个容器
				striped: true, //是否显示行间隔色
				cache: false, //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
				pagination: true, //是否显示分页（*）
				sortable: true, //是否启用排序
				sortOrder: "asc", //排序方式
				queryParams: oTableInit1.queryParams, //传递参数（*）
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
				showFooter: true,
				height: $(window).height()*0.83,
				
				columns:
	                 [  {
	     					checkbox: true,
	     					valign:"middle",
	                        align:"center",
	                        
	     				},
	                     {
	                        valign:"middle",
	                        align:"center",
	                        field: 'medicines.medicines_name',
	    					title: '项目名',
	    					
	                     }, {
	                    	valign:"middle",
	                        align:"center",
	     					field: 'medicines.medicines_specification',
	    					title: '规格',
	    					footerFormatter:"总数量"
	    				}, {
	    					valign:"middle",
	                        align:"center",
	    					field: 'number',
	    					title: '数量',
	    					footerFormatter:function(value){
	    						if(value==""){
	    							return "";
	    						}else{
	    							var count = 0.0;
	    							for(var i in value){
	    								count += value[i].number;
	    								
	    							}
	    							return count;
	    						}
	    					}
	    				},{
	    					valign:"middle",
	                        align:"center",
	    					field: 'medicines.medicines_unit',
	    					title: '单位'
	    				},{
	    					valign:"middle",
	                        align:"center",
	    					field: 'single_expenses',
	    					title: '售价',
	    					footerFormatter:"总费用"
	    				},{
	    					valign:"middle",
	                        align:"center",
	    					field: 'sum_expenses',
	    					title: '总额',
	    					footerFormatter:function(value){
	    						if(value==""){
	    							return "";
	    						}else{
	    							var count = 0.0;
	    							for(var i in value){
	    								count += value[i].sum_expenses;
	    								
	    							}
	    							return count;
	    						}
	    					}
	    				},{
	    					valign:"middle",
	                        align:"center",
	    					field: 'user.user_name',
	    					title: '执行药房人员'
	    				},{
	    					valign:"middle",
	                        align:"center",
	    					field: 'advance_payment_time',
	    					title: '执行时间',
	    					formatter: function (value, row, index) {
	    	                    return changeDateFormat(value)
	    	                },
	    				}
	                    
	                ],
	                 
	             
				//事件处理
				//当选择（check）此行时触发
				onDblClickRow: function (row, $element) {
					
				},
				onCheck: function (row, $element) {	
					
					var arrselectedData = $('#tb_patient_message1').bootstrapTable('getSelections');
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
			oTableInit1.queryParams = function(params) {
				var param = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
					pageSize: params.pageSize, //页面大小
					pageNumber: params.pageNumber, //页码
					patient_id: "${patient_id}",	
				};
				return param;
			};
		return oTableInit1;
	};
var TableInit2 = function() {
		
		var oTableInit2 = new Object();
		//初始化Table
		oTableInit2.Init = function() {
			$('#tb_patient_message2').bootstrapTable({
				url: '/hospital/select_Singel_Patient_condiction_Payment', //请求后台的URL（*）
				method: 'get', //请求方式（*）
				toolbar: '#toolbar', //工具按钮用哪个容器
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
				showFooter: true,
				height: $(window).height()*0.83,
				
				columns:
	                 [  {
	     					checkbox: true,
	     					valign:"middle",
	                        align:"center",
	                        
	     				},
	                     {
	                        valign:"middle",
	                        align:"center",
	                        field: 'medicines.medicines_name',
	    					title: '项目名',
	    					
	                     }, {
	                    	valign:"middle",
	                        align:"center",
	     					field: 'medicines.medicines_specification',
	    					title: '规格',
	    					footerFormatter:"总数量"
	    				}, {
	    					valign:"middle",
	                        align:"center",
	    					field: 'number',
	    					title: '数量',
	    					footerFormatter:function(value){
	    						if(value==""){
	    							return "";
	    						}else{
	    							var count = 0.0;
	    							for(var i in value){
	    								count += value[i].number;
	    								
	    							}
	    							return count;
	    						}
	    					}
	    				},{
	    					valign:"middle",
	                        align:"center",
	    					field: 'medicines.medicines_unit',
	    					title: '单位'
	    				},{
	    					valign:"middle",
	                        align:"center",
	    					field: 'single_expenses',
	    					title: '售价',
	    					footerFormatter:"总售额"
	    				},{
	    					valign:"middle",
	                        align:"center",
	    					field: 'sum_expenses',
	    					title: '售额',
	    					footerFormatter:function(value){
	    						if(value==""){
	    							return "";
	    						}else{
	    							var count = 0.0;
	    							for(var i in value){
	    								count += value[i].sum_expenses;
	    								
	    							}
	    							return count;
	    						}
	    					}
	    				},{
	    					valign:"middle",
	                        align:"center",
	    					field: 'user.user_name',
	    					title: '执行药房人员'
	    				},{
	    					valign:"middle",
	                        align:"center",
	    					field: 'advance_payment_time',
	    					title: '执行时间',
	    					formatter: function (value, row, index) {
	    	                    return changeDateFormat(value)
	    	                },
	    				}
	                    
	                ],
	                 
	             
				//事件处理
				//当选择（check）此行时触发
				onDblClickRow: function (row, $element) {
					
				},
				onCheck: function (row, $element) {	
					
					var arrselectedData = $('#tb_patient_message2').bootstrapTable('getSelections');
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
			oTableInit2.queryParams = function(params) {
				if($("#start_time").val()==''){
					var param = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
							pageSize: params.pageSize, //页面大小
							pageNumber: params.pageNumber, //页码
							patient_id: "${patient_id}",
							payment_name: $("#txt_search_patientname").val(),
							//start_ruyuan_time : $("#start_ruyuan_time").val(),
							//end_ruyuan_time : $("#end_ruyuan_time").val(),
						};
						return param;
				}else{
					var param = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
							pageSize: params.pageSize, //页面大小
							pageNumber: params.pageNumber, //页码
							patient_id: "${patient_id}",
							payment_name: $("#txt_search_patientname").val(),
							start_time : $("#start_time").val(),
							end_time : $("#end_time").val(),
						};
						return param;
				}
			};
		return oTableInit2;
	};
		var ButtonInit = function() {
		var oInit = new Object();
		//var postdata = {};
		oInit.Init = function() {
			//查询按钮
			$(document).on('click', "#btn_query",function(){
				  //查询之后重新从第一页算起
				  $('#tb_patient_message2').bootstrapTable('refreshOptions',{pageNumber:1,pageSize:10});
				  $('#tb_patient_message2').bootstrapTable('refresh');
				  console.log($("#txt_search_departmentname").val());
				  console.log(typeof $("#txt_search_departmentname").val());
				});
			//重置按钮
			$(document).on('click', "#btn_clean",function(){
				 $("#txt_search_patientname").val("");
				 $("#start_time").val("");
				 $("#end_time").val("");
				 $('#tb_patient_message2').bootstrapTable('refreshOptions',{pageNumber:1,pageSize:10});
				  $('#tb_patient_message2').bootstrapTable('refresh');
			    });
		};

		return oInit;
	};	
	$('#start_time').datetimepicker({
		format: 'yyyy-mm-dd hh:ii:ss',//显示格式
		todayHighlight: 1,//今天高亮
		minView: "0",//设置只显示到月份
		startView:2,
		forceParse: 0,
		showMeridian: 1,
		autoclose: 1//选择后自动关闭
	});
	$('#end_time').datetimepicker({
		format: 'yyyy-mm-dd hh:ii:ss',//显示格式
		todayHighlight: 1,//今天高亮
		minView: "0",//设置只显示到月份
		startView:2,
		forceParse: 0,
		showMeridian: 1,
		autoclose: 1//选择后自动关闭
	});
	//初始化页面上面的按钮事件
	$(document).on('click', "#dropdown1",function(){
		$("#tablea").show();
		$("#tableb").hide();
		$("#condiction1").hide();
		$('#tb_patient_message').bootstrapTable('refresh');
		});
	$(document).on('click', "#dropdown2",function(){
		$("#tablea").hide();
		$("#tableb").show();
		$("#condiction1").hide();
		$('#tb_patient_message1').bootstrapTable('refresh');
		});
	$(document).on('click', "#dropdown3",function(){
		$("#tablea").hide();
		$("#tableb").hide();
		$("#condiction1").show();
		$('#tb_patient_message2').bootstrapTable('refresh');
		});
		</script>
		
		
	</body>
</html>