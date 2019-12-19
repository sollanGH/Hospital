<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title></title>
 
    <link href="css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap-table.min.css" />
    <link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min.css?v=4.0.0" rel="stylesheet">
	<link rel="stylesheet" href="css/bootstrap-select.min.css" />
	<link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css" />
	<link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
	<style>
		
		.bootstrap-select:not([class*=col-]):not([class*=form-control]):not(.input-group-btn){
			width: 150px;
			
		}
		.bootstrap-select>.dropdown-toggle.bs-placeholder, .bootstrap-select>.dropdown-toggle.bs-placeholder:active, .bootstrap-select>.dropdown-toggle.bs-placeholder:focus, .bootstrap-select>.dropdown-toggle.bs-placeholder:hover{
			color: #333;
		}
		.btn-default{
			background-color :  white;
			color : #2f4050;
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
	<div class="panel-body" style="padding-bottom:0px;">
		<div class="panel panel-default">
				<div class="panel-heading">查询条件</div>
				<div class="panel-body">
					<form id="formSearch" class="form-horizontal">
						<div class="form-group" style="margin-top:15px">
							<label class="control-label col-sm-2" for="txt_search_departmentname">住院号</label>
							<div class="col-sm-3">
								<input  type="text" class="form-control" id="txt_search_departmentname"> 
							</div>
							<label class="control-label col-sm-2" for="txt_search_patientname">病人姓名</label>
							<div class="col-sm-3">
								<input  type="text" class="form-control" id="txt_search_patientname"> 
							</div>
						</div>		
						<div class="form-group" style="margin-top:15px">
							<label class="col-sm-2 control-label" for="txt_search_start_ruyuantime">入院日期</label>
							<div class="col-sm-3">
								<input  id="start_ruyuan_time" type="text" class="form-control" >
								<!-- value="2019-02-27 23:30:57" -->
							</div>
							<div style="transform: translateX(-6.5%);;">
							<label class="col-sm-1 control-label">至</label>
							<div class="col-sm-3">
								<input  id="end_ruyuan_time" type="text" class="form-control" >
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
			</div>
			
			<div class="modal fade bs-example-modal-sm" id="myModaAdd" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-sm" style=" 
			   
			    width: 77%;">
					
						<div class="modal-content">
							<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							<h4 class="modal-title">出院结算</h4>
							</div>
							
							<div class="ibox-content">
	                     
	                     	<!-- <table id="tb_patient_message1"></table> -->
	                     	<form  class="form-horizontal" id="Formadd_payment">
	                        	<div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">住院号</label>
	                                    <div class="col-sm-3 form-group">
	                                        <input readonly="readonly" id="patient_id" name="patient_id" type="text" class="form-control" >
	                                    </div>
	                                <label class="col-sm-2 control-label">姓名</label>
	                                    <div class="col-sm-3 form-group">
	                                        <input readonly="readonly" id="patient_name" name="patient_name" type="text" class="form-control" >
	                                    </div> 
	                                <label class="col-sm-2 control-label">主治医生</label>
	                                    <div class="col-sm-3 form-group">
	                                        <input readonly="readonly" id="user_name" name="user_name" type="text" class="form-control" >
	                                    </div>       
	                                    
	                            </div>	
	                            <!-- <div class="hr-line-dashed"></div> -->
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">出院科室</label>
	                                    <div class="col-sm-3 form-group">
	                                        <input readonly="readonly" id="deparment_name" name="deparment_name" type="text" class="form-control"   >
	                                    </div>
	                            	 <label class="col-sm-2 control-label">出院病房</label>
										<div class="col-sm-3 form-group" >
											<input readonly="readonly"  id="room_name" name="room_name" type="text"  class="form-control" >
										</div>
										<label class="col-sm-2 control-label">床位号</label>
										<div class="col-sm-3 form-group" >
											<input readonly="readonly" id="bed_name" name="churuan_room" type="text"  class="form-control" >
										</div>  
	                            </div>
	                            <div class="form-group">
	                            	<label class="col-sm-3 control-label">入院日期</label>
										<div class="col-sm-4 form-group" >
											<input readonly="readonly" id="ruyuan_time" name="ruyuan_time" type="text"  class="form-control" >
										</div>
										<label class="col-sm-3 control-label">出院日期</label>
										<div class="col-sm-4 form-group" >
											<input readonly="readonly" id="chuyuan_time" name="churuan_time" type="text"  class="form-control" >
										</div>
	                            </div>                                
	                           <div class="form-group">
	                            	<label class="col-sm-2 control-label">预交总额</label>
	                                    <div class="col-sm-3 form-group">
	                                        <input readonly="readonly" id="sum_advance_payment" name="sum_advance_payment" type="text" class="form-control"   >
	                                    </div>
	                            	 <label class="col-sm-2 control-label">已用金额</label>
										<div class="col-sm-3 form-group" >
											<input readonly="readonly" id="sum_price" name="sum_price" type="text"  class="form-control" >
										</div>
										<label class="col-sm-2 control-label">发票号</label>
										<div class="col-sm-3 form-group" >
											<input readonly="readonly" id="fapiao_id" name="payment_id" type="text"  class="form-control" >
										</div>  
										<input type="hidden" id="advance_payment_time"  name="advance_payment_time" type="text"  class="form-control" >
										  <input type="hidden" id="patient_message_id" name="patient_message_id" type="text"  class="form-control" >
	                            </div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">补款</label>
	                                    <div class="col-sm-3 form-group">
	                                        <input readonly="readonly" id="bukuan" name="bukuan" type="text" class="form-control"   >
	                                    </div>
	                            	 <label class="col-sm-2 control-label">退款</label>
										<div class="col-sm-3 form-group" >
											<input readonly="readonly" id="return_money" name="refunds" type="text"  class="form-control" >
										</div>
										  <input type="hidden" id="phone" name="phone" type="text"  class="form-control" >
										  <input type="hidden" id="payee" name="payee" type="text"  class="form-control" >
										  <input type="hidden"  name="payment_name" type="text"  class="form-control"  value="退款">
										  <input type="hidden"  name="advance_payment" type="text"  class="form-control"  value="0">
										  
	                            </div>
	                           
	                            	
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                                <div class="col-sm-4  ">
	                                    <button id="btn_payment" class="btn btn-primary" type="button" formtarget="_blank">结算</button>
	                                    <button id="btn_cancel1" class="btn btn-white" data-dismiss="modal">取消</button>
	                                </div>
	                            </div>
	                        </form>
	                    </div> 
							
							
						</div>
					</div>
				</div>
			
			
		<div id="toolbar" class="btn-group">					
	   		<button id="btn_show" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-pencil" ></span>出院结算
	          	</button>
    </div>
    <table id="tb_patient_message"></table>
</div>
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.5"></script>
    <script type="text/javascript" src="js/bootstrap-table.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-table-zh-CN.min.js"></script>
    <script src="js/content.min.js?v=1.0.0"></script>
    <script src="js/plugins/iCheck/icheck.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-datetimepicker.min.js" ></script>
    <script type="text/javascript" src="js/plugins/validate/jquery.validate.min.js" ></script>
    <script type="text/javascript" src="js/plugins/validate/messages_zh.min.js" ></script>
    <script type="text/javascript" src="js/demo/form-validate-demo.min.js" ></script>
    <script type="text/javascript" src="js/bootstrap-select.min.js" ></script>
    <script type="text/javascript" src="js/bootstrap-table-export.js" ></script>
    <script type="text/javascript" src="js/tableExport.min.js" ></script>
    <script type="text/javascript" src="js/xlsx.core.min.js" ></script>
    <script type="text/javascript" src="js/FileSaver.min.js" ></script>
    <script type="text/javascript" src="js/plugins/sweetalert/sweetalert.min.js"></script>
    <script>
        $(document).ready(function(){$(".i-checks").iCheck({checkboxClass:"icheckbox_square-green",radioClass:"iradio_square-green",})});
    </script>
    <script type="text/javascript">
    //记录点选择框次数
    var count = 0;
	var rrrrom_id = 0;
	var bbbbed_id = 0;
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
				url: '/hospital/selectPatient_messageAll', //请求后台的URL（*）
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
				uniqueId: "patient_id", //每一行的唯一标识，一般为主键列
				showToggle: true, //是否显示详细视图和列表视图的切换按钮
				cardView: false, //是否显示详细视图
				detailView: false, //是否显示父子表
				 //>>>>>>>>>>>>>>导出excel表格设置
			      showExport: phoneOrPc(),              //是否显示导出按钮(此方法是自己写的目的是判断终端是电脑还是手机,电脑则返回true,手机返回falsee,手机不显示按钮)
			      exportDataType: "basic",              //basic', 'all', 'selected'.
			      exportTypes:['excel','xlsx'],	    //导出类型
			      //exportButton: $('#btn_export'),     //为按钮btn_export  绑定导出事件  自定义导出按钮(可以不用)
			      exportOptions:{  
			          //ignoreColumn: [0,0],            //忽略某一列的索引  
			          fileName: '数据导出',              //文件名称设置  
			          worksheetName: 'Sheet1',          //表格工作区名称  
			          tableName: '商品数据表',  
			          excelstyles: ['background-color', 'color', 'font-size', 'font-weight'],  
			          //onMsoNumberFormat: DoOnMsoNumberFormat  
			      },
			      //导出excel表格设置<<<<<<<<<<<<<<<<			
				columns: [{
					checkbox: true
				}, {
					field: 'patient.patient_id',
					title: '住院号'
				}, {
					field: 'patient.patient_name',
					title: '病人姓名'
				}, {
					field: 'patient.patient_meal',
					title: '性别'
				}, {
					field: 'patient.age',
					title: '年龄'
				}, {
					field: 'ruyuan_time',
					title: '入院日期',
					formatter: function (value, row, index) {
	                    return changeDateFormat(value)
	                },
				},{
					field: 'sum_advance_payment',
					title: '预交款总额',
					 formatter : function(value, row, index) {
                        if (value == null) {
                        	value = '未缴纳预交金';
                        	color = 'Red';
                            return '<div  style="color: ' + color + '">' + value + '</div>';;
                            //console.log(row['deparment.deparment_name']);
                        }
                        return value;
                   } 
				},{
					field: 'sum_price',
					title: '已用总额',
					formatter : function(value, row, index) {
                        if (value == null) {
                        	value = 0;
                        	color = 'grey';
                            return '<div  style="color: ' + color + '">' + value + '</div>';;
                            //console.log(row['deparment.deparment_name']);
                        }
                        return value;
                   }
				},{
					field: 'after_expenses',
					title: '余额',
					formatter : function(value, row, index) {
                        if (value == null && row['sum_advance_payment'] !=null) {
                        	value = row['sum_advance_payment'];
                        	color = 'grey';
                            return '<div  style="color: ' + color + '">' + value + '</div>';;
                            //console.log(row['deparment.deparment_name']);
                        }
                        return value;
                   }
				},{
					field: 'deparment.deparment_name',
					title: '科室',
					formatter : function(value, row, index) {
                        if (row['deparment_id'] == null) {
                        	value = '未分配';
                        	color = 'Black';
                            return '<div  style="color: ' + color + '">' + value + '</div>';;
                            //console.log(row['deparment.deparment_name']);
                        }
                        return value;
                   }
				},{
					field: 'room.room_name',
					title: '病房号',
					formatter : function(value, row, index) {
                        if (row['room_id'] == null) {
                        	value = '未分配';
                        	color = 'Black';
                            return '<div  style="color: ' + color + '">' + value + '</div>';;
                            //console.log(row['deparment.deparment_name']);
                        }
                        return value;
                   }
				},{
					field: 'bed.bed_name',
					title: '病床号',
					formatter : function(value, row, index) {
                        if (row['bed_id'] == null) {
                        	value = '未分配';
                        	color = 'Black';
                            return '<div  style="color: ' + color + '">' + value + '</div>';;
                            //console.log(row['deparment.deparment_name']);
                        }
                        return value;
                   }
				},{
					field: 'diagnosis_a',
					title: '入院诊断' 
				},{
					field: 'user.user_name',
					title: '医生id',
					formatter : function(value, row, index) {
                        if (value == null) {
                        	value = '未分配';
                        	color = 'Black';
                            return '<div  style="color: ' + color + '">' + value + '</div>';;
                            //console.log(row['deparment.deparment_name']);
                        }
                        return value;
                   }
				},],
				//事件处理
				//当选择（check）此行时触发
				onCheck: function (row, $element) {	
					
					var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
					var row = arrselectedData[0];
					console.log(row);
					
										
					count = count+1;
					//console.log(count);
					if(count>1){
						$("#btn_show").attr("disabled","disabled");
					}
				},
				onUncheck: function (row, $element) {			
					count = count-1;
					if(count<=1){
						$("#btn_show").removeAttr("disabled");
					}
					//console.log(count);    
				},
				//当全选行时触发，所需的参数如下
				onCheckAll: function (row) {
					$("#btn_show").attr("disabled","disabled");
				},
				onUncheckAll: function (row) {
					count = 0;
					$("#btn_show").removeAttr("disabled");
				},
				//当重置（reset）表的视图时触发
				onResetView: function () {
					count = 0;
					$("#btn_show").removeAttr("disabled");
				},
			});
			
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
			if($("#start_ruyuan_time").val()==''){
				var param = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
						pageSize: params.pageSize, //页面大小
						pageNumber: params.pageNumber, //页码
						patient_id: $("#txt_search_departmentname").val(),
						patient_name: $("#txt_search_patientname").val(),
						//start_ruyuan_time : $("#start_ruyuan_time").val(),
						//end_ruyuan_time : $("#end_ruyuan_time").val(),
					};
					return param;
			}else{
				var param = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
						pageSize: params.pageSize, //页面大小
						pageNumber: params.pageNumber, //页码
						patient_id: $("#txt_search_departmentname").val(),
						patient_name: $("#txt_search_patientname").val(),
						start_ruyuan_time : $("#start_ruyuan_time").val(),
						end_ruyuan_time : $("#end_ruyuan_time").val(),
					};
					return param;
			}
			
		};
		return oTableInit;
	};
		
	var ButtonInit = function() {
		var oInit = new Object();
		//var postdata = {};
		oInit.Init = function() {
			//初始化页面上面的按钮事件
			//新增按钮
			$(document).on('click', "#btn_myModaAdd",function(){
					//随机生成id
					randompatient();
					function randompatient(){
						let str = '';
				        for(var i = 1;i<=3;i++){
				            str = str + String.fromCharCode(Math.floor(Math.random()*24+65));
				        }
				        for(var i = 1;i<=3;i++){
				            str = str + Math.floor(Math.random()*10);
				        }
				        
						document.getElementById("patient_id").value = [0].innerText = str;
					};
				});
			//查询按钮
			$(document).on('click', "#btn_query",function(){
				  //查询之后重新从第一页算起
				  $('#tb_patient_message').bootstrapTable('refreshOptions',{pageNumber:1,pageSize:10});
				  //$('#tb_patient_message').bootstrapTable('refresh');
				  console.log($("#txt_search_departmentname").val());
				  console.log(typeof $("#txt_search_departmentname").val());
				});
			//重置按钮
			$(document).on('click', "#btn_clean",function(){
				 $("#txt_search_departmentname").val("");
				 $("#txt_search_patientname").val("");
				 $("#start_ruyuan_time").val("");
				 $("#end_ruyuan_time").val("");
				 $('#tb_patient_message').bootstrapTable('refreshOptions',{pageNumber:1,pageSize:10});
			    });
			//出院申请					
			$(document).on('click', "#btn_show",function(){									
				var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
				var row = arrselectedData[0];						
				if (arrselectedData.length <= 0) {
					swal({
		            	   title:"请选择病人",
		            	   text:"",
		            	   type:"warning"
		               });
                }else{                	                	
                	//随机生成id
					randompatient();
					function randompatient(){
						let str = '';
				        for(var i = 1;i<=3;i++){
				            str = str + String.fromCharCode(Math.floor(Math.random()*24+65));
				        }
				        for(var i = 1;i<=3;i++){
				            str = str + Math.floor(Math.random()*10);
				        }
				        
						document.getElementById("fapiao_id").value = [0].innerText = str;
					};
					$("#patient_id").val(row.patient.patient_id);
					$("#patient_name").val(row.patient.patient_name);
					$("#user_name").val(row.user.user_name);
					$("#deparment_name").val(row.deparment.deparment_name);
					$("#bed_name").val(row.bed.bed_name);
					$("#room_name").val(row.room.room_name);
					$("#user_name").val(row.user.user_name);
					$("#ruyuan_time").val(changeDateFormat(row.ruyuan_time));
					var timestamp = (new Date()).getTime();
					$("#chuyuan_time").val(changeDateFormat(timestamp));	
					$("#advance_payment_time").val(changeDateFormat(timestamp));
					$("#sum_advance_payment").val(row.sum_advance_payment);
					$("#sum_price").val(row.sum_price);
					$("#payee").val("${USER.user_work_id}");
					$("#phone").val(row.patient.phone);
					$("#patient_message_id").val(row.patient_message_id);
					if(row.sum_advance_payment>row.sum_price){
						$("#bukuan").val(0.00);
						$("#return_money").val(row.sum_advance_payment-row.sum_price);
					}
					
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
                	$("#myModaAdd").modal('show');   
                	
                	
                	
                	
                	
                	console.log(row);
                }
				});		
			
			
			
			$(document).on('click', "#btn_payment",function(){
				
				
					  //通过表单验证，以下编写自己的代码
					  var param = $("#Formadd_payment").serializeArray();
					  //var insurance21 = document.getElementById("insurance2").value;
					  console.log(param);
					  /* var payment_id = param[1].value;
					  var payment_name = param[9].value;
					  var advance_payment = param[8].value;
					  var patient_id = param[0].value;
					  var payee = param[2].value;
					  var phonea = param[5].value; */
					  $.ajax({
							url: "/hospital/update_chuyuan_Patient_message",
							type:"post",
							data:param,
							 success: function (data) {
				                //alert("新增成功");
				               // $('#tb_departments').bootstrapTable('refresh');
				                
					         },
					         error:function(){
					        	
							 }

						});	
					  
					  
					  
					  
					  
						            $.ajax({
									url: "/hospital/addPayment_message",
									type:"post",
									data:param,
									 success: function (data) {
										 swal(
								                {title:"缴纳成功",
								                    text:"是否进入打印预览页面",
								                    type:"success",
								                    showCancelButton:true,
								                    confirmButtonColor:"#DD6B55",
								                    confirmButtonText:"确定！",
								                    cancelButtonText:"取消",
								                    closeOnConfirm:false,
								                    closeOnCancel:false
								                },
								                function(isConfirm)
								                {
								                	var advance_payment = param[14].value;
								                	var payment_id = param[0].value;
								                	var patient_name = param[1].value;
								                	var phonea = param[15].value;
								                	var advance_payment_time = param[7].value;
								                	var payee = "${USER.user_name}";
								                	/* if(insurance21 == 1){
								                		var insurance211 = "自费";
								                	} */
								                	var ada = ToString(advance_payment);
								                		function ToString(n) {

								                	    if (!/^(0|[1-9]\d*)(\.\d+)?$/.test(n)){
								                	        return "数据非法";  //判断数据是否大于0
								                	    }

								                	    var unit = "千百拾亿千百拾万千百拾元角分", str = "";
								                	    n += "00";  

								                	    var indexpoint = n.indexOf('.');  // 如果是小数，截取小数点前面的位数

								                	    if (indexpoint >= 0){

								                	        n = n.substring(0, indexpoint) + n.substr(indexpoint+1, 2);   // 若为小数，截取需要使用的unit单位
								                	    }

								                	    unit = unit.substr(unit.length - n.length);  // 若为整数，截取需要使用的unit单位
								                	    for (var i=0; i < n.length; i++){
								                	        str += "零壹贰叁肆伍陆柒捌玖".charAt(n.charAt(i)) + unit.charAt(i);  //遍历转化为大写的数字
								                	    }

								                	    return str.replace(/零(千|百|拾|角)/g, "零").replace(/(零)+/g, "零").replace(/零(万|亿|元)/g, "$1").replace(/(亿)万|壹(拾)/g, "$1$2").replace(/^元零?|零分/g, "").replace(/元$/g, "元整"); // 替换掉数字里面的零字符，得到结果

								                	}; 
								                	console.log(payee);
								                    if(isConfirm)								                      
								                    {	 swal({title:"确定 ",
							                            text:"",
							                            type:"success",
							                            timer:2000,
							                            });
								                    	printLodop(advance_payment,payment_id,patient_name,
								                    			phonea,advance_payment_time,payee,ada); 
								                    	console.log(param[0].value);    
								                    }
								                    else{
								                        swal({title:"已取消",
								                            text:"",
								                            type:"warning",});
								                    }
								                }
								            )
										 //alert("缴纳成功");
						                
						                $('#tb_patient_message').bootstrapTable('refresh');						                
						                document.getElementById("Formadd_payment").reset();
						                $("#myModaAdd").modal('hide');
							         },
							         error:function(){
							        	 alert("缴纳失败");
									 }

								});      
					 				
				});
			function printLodop(advance_payment,payment_id,patient_name,
        			phonea,advance_payment_time,payee,ada) {
			     var LODOP = getLodop();
			     //设置打印机的名称
			     LODOP.SET_PRINTER_INDEX("TSC TTP-342E Pro");
			     //打印内容
				LODOP.PRINT_INITA(10,10,762,533,"");
				LODOP.SET_PRINT_STYLE("FontColor","#0000FF");
				LODOP.ADD_PRINT_SHAPE(2,117,-2,655,174,0,1,"#800000");
				LODOP.ADD_PRINT_SHAPE(1,145,-1,653,1,0,1,"#800000");
				LODOP.ADD_PRINT_SHAPE(1,173,-1,653,1,0,1,"#800000");
				LODOP.ADD_PRINT_SHAPE(0,117,98,1,56,0,1,"#800000");
				LODOP.ADD_PRINT_SHAPE(0,117,443,1,56,0,1,"#800000");
				LODOP.ADD_PRINT_SHAPE(0,117,529,1,206,0,1,"#800000");
				LODOP.ADD_PRINT_SHAPE(0,289,-1,1,34,0,1,"#800000");
				LODOP.ADD_PRINT_SHAPE(0,173,370,1,151,0,1,"#800000");
				LODOP.ADD_PRINT_SHAPE(1,324,-1,653,1,0,1,"#800000");
				LODOP.ADD_PRINT_SHAPE(0,291,83,1,34,0,1,"#800000");
				LODOP.ADD_PRINT_SHAPE(0,290,652,1,34,0,1,"#800000");
				LODOP.ADD_PRINT_SHAPE(3,22,255,147,75,0,3,"#FF0000");
				LODOP.ADD_PRINT_SHAPE(3,27,262,132,65,0,1,"#FF0000");
				LODOP.ADD_PRINT_TEXT(34,147,408,30,"医院住院住院部专用发票");
				LODOP.SET_PRINT_STYLEA(0,"FontSize",15);
				LODOP.SET_PRINT_STYLEA(0,"FontColor","#800000");
				LODOP.SET_PRINT_STYLEA(0,"Alignment",2);
				LODOP.ADD_PRINT_TEXT(69,281,100,25,"发 票 联");
				LODOP.SET_PRINT_STYLEA(0,"FontSize",11);
				LODOP.SET_PRINT_STYLEA(0,"FontColor","#800000");
				LODOP.SET_PRINT_STYLEA(0,"Alignment",2);
				LODOP.ADD_PRINT_TEXT(125,13,68,20,"姓名");
				LODOP.SET_PRINT_STYLEA(0,"FontColor","#800000");
				LODOP.SET_PRINT_STYLEA(0,"Alignment",2);
				LODOP.ADD_PRINT_TEXT(153,13,68,20,"手机号码");
				LODOP.SET_PRINT_STYLEA(0,"FontColor","#800000");
				LODOP.SET_PRINT_STYLEA(0,"Alignment",2);
				LODOP.ADD_PRINT_TEXT(220,7,88,20,"  补缴金额：");
				LODOP.SET_PRINT_STYLEA(0,"FontColor","#800000");
				LODOP.SET_PRINT_STYLEA(0,"Alignment",2);
				//LODOP.ADD_PRINT_TEXT(127,451,68,20,"医保类型");
				LODOP.SET_PRINT_STYLEA(0,"FontColor","#800000");
				LODOP.SET_PRINT_STYLEA(0,"Alignment",2);
				LODOP.ADD_PRINT_TEXT(301,9,68,20,"大写金额");
				LODOP.SET_PRINT_STYLEA(0,"FontColor","#800000");
				LODOP.SET_PRINT_STYLEA(0,"Alignment",2);
				LODOP.ADD_PRINT_TEXT(303,449,104,20,"小写金额    ￥: ");
				LODOP.SET_PRINT_STYLEA(0,"FontColor","#800000");
				LODOP.SET_PRINT_STYLEA(0,"Alignment",3);
				LODOP.ADD_PRINT_TEXT(192,2,85,20,"退费金额：");
				LODOP.SET_PRINT_STYLEA(0,"FontColor","#800000");
				LODOP.SET_PRINT_STYLEA(0,"Alignment",3);
				LODOP.ADD_PRINT_TEXT(98,21,48,20,"日期：");
				LODOP.SET_PRINT_STYLEA(0,"FontColor","#800000");
				LODOP.SET_PRINT_STYLEA(0,"Alignment",3);
				LODOP.ADD_PRINT_TEXT(98,455,71,20,"发票号码：");
				LODOP.SET_PRINT_STYLEA(0,"FontColor","#800000");
				LODOP.SET_PRINT_STYLEA(0,"Alignment",3);
				LODOP.ADD_PRINT_TEXT(333,435,83,20,"收款人号");
				LODOP.SET_PRINT_STYLEA(0,"FontColor","#800000");
				LODOP.SET_PRINT_STYLEA(0,"Alignment",3);
				LODOP.ADD_PRINT_TEXT(162,662,27,121,"第二联发票联");
				LODOP.SET_PRINT_STYLEA(0,"FontColor","#800000");
				LODOP.SET_PRINT_STYLEA(0,"Alignment",2);
				LODOP.ADD_PRINT_TEXT(127,105,100,20,patient_name);
				LODOP.ADD_PRINT_TEXT(152,105,100,20,phonea);
				LODOP.ADD_PRINT_TEXT(219,98,99,20,"");
				LODOP.ADD_PRINT_TEXT(304,93,198,20,ada);
				LODOP.ADD_PRINT_TEXT(303,542,70,20,advance_payment);
				LODOP.ADD_PRINT_TEXT(333,546,59,20,payee);
				LODOP.ADD_PRINT_TEXT(190,95,150,20,advance_payment);
				LODOP.ADD_PRINT_TEXT(102,86,150,20,advance_payment_time);
				//LODOP.ADD_PRINT_TEXT(127,540,103,20,insurance211);
				LODOP.ADD_PRINT_TEXT(96,526,112,20,payment_id);
				LODOP.SET_PRINT_STYLEA(0,"FontName","System");
				LODOP.ADD_PRINT_TEXT(250,6,81,20,"预交金额：");
				LODOP.SET_PRINT_STYLEA(0,"FontColor","#800000");
				LODOP.SET_PRINT_STYLEA(0,"Alignment",3);
				LODOP.ADD_PRINT_TEXT(253,97,112,20,"");
				LODOP.SET_PRINT_STYLEA(0,"FontName","System");
				LODOP.SET_PRINT_STYLEA(0,"FontColor","#FF0000");
				
					     //打印预览
			     LODOP.PREVIEW();
			     //打印
			     //LODOP.PRINT();
			};
			
			
			
		};

		return oInit;
	};
	
   
    	$('#brith_day').datetimepicker({
			format: 'yyyy-mm-dd hh:ii:ss',//显示格式
			todayHighlight: 1,//今天高亮
			minView: "2",//设置只显示到月份
			startView:2,
			forceParse: 0,
			showMeridian: 1,
			autoclose: 1//选择后自动关闭
		});
    	$('#brith_day1').datetimepicker({
			format: 'yyyy-mm-dd hh:ii:ss',//显示格式
			todayHighlight: 1,//今天高亮
			minView: "2",//设置只显示到月份
			startView:2,
			forceParse: 0,
			showMeridian: 1,
			autoclose: 1//选择后自动关闭
		});
		$('#ruyuan_time').datetimepicker({
			format: 'yyyy-mm-dd hh:ii:ss',//显示格式
			todayHighlight: 1,//今天高亮
			minView: "0",//设置只显示到月份
			startView:2,
			forceParse: 0,
			showMeridian: 1,
			autoclose: 1//选择后自动关闭
		});
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
  //转换日期格式(时间戳转换为datetime格式)
	function changeDateFormat1(cellval) {
	    var dateVal = cellval + "";
	    if (cellval != null) {
	        var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
	        var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
	        var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();

	        var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
	        var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
	        var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();

	        return date.getFullYear() + "-" + month + "-" + currentDate + " " + hours + ":" + minutes + ":" + seconds;
	    }
	};
    </script>
    	<script type="text/javascript" src="js/LodopFuncs.js"></script>
    <object  id="LODOP_OB" classid="clsid:2105C259-1E0C-4534-8141-A753534CB4CA" width=0 height=0> 
	       <embed id="LODOP_EM" type="application/x-print-lodop" width=0 height=0></embed>
	</object>
</body>

</html>