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
			width: 65%;
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
							<label class="control-label col-sm-2" for="txt_search_departmentname">科室</label>
								<div class="col-sm-2">
									<select id="txt_search_departmentid" name="deparment_id" style="width: 50px;" class="selectpicker" data-size="5" >
									</select>
									<!-- <input  type="text" class="form-control" id="txt_search_departmentid">  -->
								</div>
							<label class="control-label col-sm-2" for="txt_search_departmentname">项目名称</label>
							<div class="col-sm-2">
							<select id="txt_search_departmentname" name="Inspection_item_name" style="width: 150px;" class="selectpicker" data-size="5" >
									</select>
								
							</div>
							<label class="control-label col-sm-2" for="txt_search_patientname">病人姓名</label>
							<div class="col-sm-2">
								<input  type="text" class="form-control" id="txt_search_patientname"> 
							</div>
						</div>		
						<div class="form-group" style="margin-top:15px">
							<label class="col-sm-2 control-label" for="txt_search_start_ruyuantime">送检日期</label>
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
		<div id="toolbar" class="btn-group">					
	   		<button id="btn_show" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-pencil" ></span>查看检验结果
	          	</button>
	          	<!-- <button id="btn_edit" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-pencil" ></span>修改检验结果
	          	</button> -->
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
    
    getDeparmentlList11();
    function getDeparmentlList11() {//获取下拉科室列表
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
		$('#txt_search_departmentid.selectpicker').append("<option value=''>全部</option>");
                $.each(data.data, function (total) {
                // alert(i);
                // $("<option value='" + data.data[i].schoolno + "'>" + data.data[i].schoolname + "</option>")
                //    .appendTo("#schoolno.selectpicker");
                    $('#txt_search_departmentid.selectpicker').append("<option value=" + data.data[total].deparment_id + ">" + data.data[total].deparment_name + "</option>");
                });	                
                $('#txt_search_departmentid').selectpicker('refresh');
            },
            error: function (data) {
                alert("查询失败" + data);
            }
        });				
    };
    
    getii();
    function getii() {//获取下拉科室列表
        $.ajax({
            url: "/hospital/select_Inspection_item1",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
		// 数据发送方式
            type: "get",
		// 接受数据格式
            dataType: "json",
		// 要传递的数据
            data: 'data',
		// 回调函数，接受服务器端返回给客户端的值，即result值
            success: function (data) {
		//alert(data.data);
		$('#txt_search_departmentname.selectpicker').append("<option value=''>全部</option>");
                $.each(data.data, function (total) {
                // alert(i);
                // $("<option value='" + data.data[i].schoolno + "'>" + data.data[i].schoolname + "</option>")
                //    .appendTo("#schoolno.selectpicker");
                    $('#txt_search_departmentname.selectpicker').append("<option value=" + data.data[total].inspection_item_id + ">" + data.data[total].inspection_item_name + "</option>");
                });	                
                $('#txt_search_departmentname').selectpicker('refresh');
            },
            error: function (data) {
                alert("查询失败" + data);
            }
        });				
    };
    
    
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
				url: '/hospital/select_show_Inspection', //请求后台的URL（*）
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
					field: 'inspection_id',
					title: '单据号'
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
					field: 'inspection_item.inspection_item_name',
					title: '项目名称',
					
				},{
					field: 'inspection_time',
					title: '送检日期',
					formatter: function (value, row, index) {
	                    return changeDateFormat(value)
	                },
					
				},{
					field: 'user1.user_name',
					title: '送检人',
					
				},{
					field: 'deparment.deparment_name',
					title: '科室',
					
				},{
					field: 'acceptance_time',
					title: '检验日期',
					formatter: function (value, row, index) {
	                    return changeDateFormat(value)
	                },
					
				},{
					field: 'user.user_name',
					title: '检验人' 
				},/* {
					field: 'inspection_result',
					title: '检验记录',
					formatter : function(value, row, index) {
                        if (value == 0) {
                        	value = '未出报告';
                            return  value ;;
                        }else if(value == 1){
                        	value = '录入中';
                            return  value ;;
                        }else if(value == 2){
                        	value = '已出报告';
                            return  value ;;
                        }
                        return value;
                   }
					
				}, */],
				//事件处理
				//当选择（check）此行时触发
				onCheck: function (row, $element) {	
					
					var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
					var row = arrselectedData[0];
					console.log(row);
					
										
					count = count+1;
					//console.log(count);
					if(count>1){
						$("#btn_check").attr("disabled","disabled");
					}
				},
				onUncheck: function (row, $element) {			
					count = count-1;
					if(count<=1){
						$("#btn_check").removeAttr("disabled");
					}
					//console.log(count);    
				},
				//当全选行时触发，所需的参数如下
				onCheckAll: function (row) {
					$("#btn_check").attr("disabled","disabled");
				},
				onUncheckAll: function (row) {
					count = 0;
					$("#btn_check").removeAttr("disabled");
				},
				//当重置（reset）表的视图时触发
				onResetView: function () {
					count = 0;
					$("#btn_check").removeAttr("disabled");
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
						select_deparment_id: $("#txt_search_departmentid").val(),
						inspection_item_id: $("#txt_search_departmentname").val(),
						patient_name: $("#txt_search_patientname").val(),
						role_id : "${USER.role_id}",
						user_work_id : "${USER.user_work_id}",
						//start_ruyuan_time : $("#start_ruyuan_time").val(),
						//end_ruyuan_time : $("#end_ruyuan_time").val(),
					};
					return param;
			}else{
				var param = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
						pageSize: params.pageSize, //页面大小
						pageNumber: params.pageNumber, //页码
						select_deparment_id: $("#txt_search_departmentid").val(),
						inspection_item_id: $("#txt_search_departmentname").val(),
						patient_name: $("#txt_search_patientname").val(),
						start_ruyuan_time : $("#start_ruyuan_time").val(),
						end_ruyuan_time : $("#end_ruyuan_time").val(),
						role_id : "${USER.role_id}",
						user_work_id : "${USER.user_work_id}",
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
				 $('#txt_search_departmentid').selectpicker('val',(''));
				 $('#txt_search_departmentname').selectpicker('val',(''));
				 $("#txt_search_patientname").val("");
				 $("#start_ruyuan_time").val("");
				 $("#end_ruyuan_time").val("");
				 $('#tb_patient_message').bootstrapTable('refreshOptions',{pageNumber:1,pageSize:10});
			    });
			
			
			$(document).on('click', "#btn_show",function(){
				 //跳转至执行页面
				 var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
				var row = arrselectedData[0];
            	turnnew();
				function turnnew(){
					page("Inspection_show2?patient_id="+row.patient.patient_id+"&inspection_id="+row.inspection_id
							,row.patient.patient_name+"检验结果");
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
				}
			    });
		};

		return oInit;
	};
	
   
		
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
</body>

</html>