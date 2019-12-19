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
	      			<span class="glyphicon glyphicon-pencil"></span>费用结算
	    	</button>	        
			</div>
			<div class="btn-group" style="margin-left: 20px;">
		      <button id="btn_deduct" type="button" class="btn btn-white" >
	      			<span class="glyphicon glyphicon-pencil"></span>费用冲减(作废)
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
				url: '/hospital/select_Singel_Patient_today_Payment', //请求后台的URL（*）
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
				//height: $(window).height()*0.83,
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
	    					title: '收费编号',
	    					formatter: function (value, row, index) {
	    						if(row.payment_status == 3){
	    							
	                                //console.log(row.project.project_name);
	                                color = 'Red';
                            		return '<div  style="color: ' + color + '">' + value + '</div>';;
	                            }
	    						
	    	                    return value;
	    	                },
	    					footerFormatter:"总费用"
	    					
	                     }, /* {
	                    	valign:"middle",
	                        align:"center",
	     					field: 'patient_id',
	    					title: '住院号'
	    				}, */{
	                    	valign:"middle",
	                        align:"center",
	     					field: 'payment_category',
	    					title: '费用类别',
	    					formatter: function (value, row, index) {
	    						if(row.payment_status == 3){
	    							
	                                //console.log(row.project.project_name);
	                                color = 'Red';
                            		return '<div  style="color: ' + color + '">' + value + '</div>';;
	                            }
	    						
	    	                    return value;
	    	                },
	    					footerFormatter:function(value){
	    						if(value==""){
	    							return "";
	    						}else{
	    							var count = 0.0;
	    							for(var i in value){
	    								
   									count += value[i].sum_expenses;
   									if(value[i].payment_status==3){
       									count -= value[i].sum_expenses;
       								}
	    							}
	    							
	    							count = count.toFixed(2); 
	    							return count;
	    						}
	    					}
	    				}, {
	                    	valign:"middle",
	                        align:"center",
	     					field: 'payment_name',
	    					title: '费用名',
	    					footerFormatter:"已结算",
	    					formatter: function (value, row, index) {
	    						if(row.payment_status == 3){
	    							
	                                //console.log(row.project.project_name);
	                                color = 'Red';
                            		return '<div  style="color: ' + color + '">' + value + '</div>';;
	                            }
	    						
	    	                    return value;
	    	                },
	    				}, {
	    					valign:"middle",
	                        align:"center",
	    					field: 'sum_expenses',
	    					title: '收费金额',
	    					formatter: function (value, row, index) {
	    						if(row.payment_status == 3){
	    							
	                                //console.log(row.project.project_name);
	                                color = 'Red';
                            		return '<div  style="color: ' + color + '">' + value + '</div>';;
	                            }
	    						
	    	                    return value;
	    	                },
	    					footerFormatter:function(value){
	    						if(value==""){
	    							return "";
	    						}else{
	    							var count = 0.0;
	    							for(var i in value){
	    								if(value[i].payment_status==true){
	    									count += value[i].sum_expenses;
	    								}
	    								 
	    							}
	    							count = count.toFixed(2);
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
	    					title: '记账时间',
	    					formatter: function (value, row, index) {
	    						if(row.payment_status == 3){
	    							
	                                //console.log(row.project.project_name);
	                                color = 'Red';
                            		return '<div  style="color: ' + color + '">' + changeDateFormat(value) + '</div>';;
	                            }
	    						
	    	                    return changeDateFormat(value);
	    	                },footerFormatter:"未结算"
	    					
	    				},{
	    					valign:"middle",
	                        align:"center",
	    					field: 'settle_accounts_time',
	    					title: '结算时间',
	    					formatter: function (value, row, index) {
									if(row.payment_status == 3){
	    							
	                                //console.log(row.project.project_name);
	                                color = 'Red';
                            		return '<div  style="color: ' + color + '">' + changeDateFormat(value) + '</div>';;
	                            }
									return changeDateFormat(value);
	    	                },
	    	                footerFormatter:function(value){
	    						if(value==""){
	    							return "";
	    						}else{
	    							var count = 0.0;
	    							for(var i in value){
	    								if(value[i].payment_status==false){
	    									count += value[i].sum_expenses;
	    								}
	    								
	    								
	    							}
	    							count = count.toFixed(2); 
	    							return count;
	    						}
	    					}
	    					
	    				},{
	    					valign:"middle",
	                        align:"center",
	    					field: 'user.user_name',
	    					title: '操作员',
	    					formatter: function (value, row, index) {
								if(row.payment_status == 3){
    							
                                //console.log(row.project.project_name);
                                color = 'Red';
                        		return '<div  style="color: ' + color + '">' + value + '</div>';;
                            }
								return value;
    	                },
	    				},{
	    					valign:"middle",
	                        align:"center",
	    					field: 'payment_status',
	    					title: '结算情况',
	    					formatter : function(value, row, index) {
	    						
	                            if (value == 0) {
	                            	value = "未结算";
	                                //console.log(row.project.project_name);
	                                color = 'Red';
                            		return '<div  style="color: ' + color + '">' + value + '</div>';;
	                                return  value ;
	                                
	                            } else if(value == 1){
	                            	value = "已结算";
	                                //console.log(row.project.project_name);
	                                color = 'Black';
                            		return '<div  style="color: ' + color + '">' + value + '</div>';;
	                            } else if(value == 2){
	                            	value = "未冲减";
	                                //console.log(row.project.project_name);
	                                color = 'Red';
                            		return '<div  style="color: ' + color + '">' + value + '</div>';;
	                            }else if(value == 3){
	                            	value = "已冲减";
	                                //console.log(row.project.project_name);
	                                color = 'Red';
                            		return '<div  style="color: ' + color + '">' + value + '</div>';;
	                            }
	                            
                                //console.log(row.project['project_name']);
	                            return value;
	                       }
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
				var start = "${start_time}" ;
				var time1 = new Date(start).getTime();
				var time2 = changeDateFormat(time1);
				var end1 = time2  + " " + '23' + ":" + '59' + ":" + '59';
				console.log("${start_time}");
				console.log(end1);
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
				    };
				};
					var param = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
							pageSize: params.pageSize, //页面大小
							pageNumber: params.pageNumber, //页码
							patient_id: "${patient_id}",
							start_time : "${start_time}",
							end_time : end1,
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
				
				var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
				var row = arrselectedData[0];						
				if (arrselectedData.length <= 0) {
					swal({
	                	   title:"请选中一行",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else if(arrselectedData.length > 0){
                	var select_id = '';
	               	for (var i = 0; i < arrselectedData.length; i++) {
	               		select_id += "'"+arrselectedData[i]['payment_id']+"'" + ",";
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
			        //结算费用
			        btn_check_Pay(select_id,time);
			        function btn_check_Pay(select_id,time){
			        	$.ajax({
							url: "/hospital/jiesuan_Payment",
							type:"post",
							data:{
								select_id : select_id,
								payee : "${USER.user_work_id}",
								settle_accounts_time : time,
							},
							 success: function (data) {						 
				                $('#tb_patient_message').bootstrapTable('refresh');
				                swal({
				                	   title:"已结算"+data+"项",
				                	   text:"",
				                	   type:"warning"
				                   });
					         },
					         error:function(){
					        	
							 }
						});
			        }
                	
                }
						
						
						
					});
		$(document).on('click', "#btn_deduct",function(){
				
				var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
				var row = arrselectedData[0];						
				if (arrselectedData.length <= 0) {
					swal({
	                	   title:"请选中一行",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else if(arrselectedData.length > 0){
                	var select_id = '';
	               	for (var i = 0; i < arrselectedData.length; i++) {
	               		select_id += "'"+arrselectedData[i]['payment_id']+"'" + ",";
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
			        //结算费用
			        btn_check_Pay(select_id,time);
			        function btn_check_Pay(select_id,time){
			        	$.ajax({
							url: "/hospital/update_chongjian_Payment",
							type:"post",
							data:{
								select_id : select_id,
								payee : "${USER.user_work_id}",
								settle_accounts_time : time,
							},
							 success: function (data) {						 
				                $('#tb_patient_message').bootstrapTable('refresh');
				                swal({
				                	   title:"已冲减"+data+"项",
				                	   text:"",
				                	   type:"warning"
				                   });
					         },
					         error:function(){
					        	
							 }
						});
			        }
                	
                }
						
						
						
					});
		};

		return oInit;
	};	
	
	
		</script>
		
	</body>
</html>