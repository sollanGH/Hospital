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
		.col-sm-2{
			width: 12.5%;
		}
		
		.col-sm-3{
			width: 18.5%;
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
								<label class="control-label col-sm-2" for="txt_search_departmentname">验收情况</label>
								<div class="col-sm-2">
								<select  id="storage_status" name="storage_status" class="selectpicker" data-size="5" >
		    						<option value="">全部</option>
		    						<option value="0">未验收 </option>
								    <option value="1">已验收</option>
								    <option value="2">已作废</option>
								</select>
								</div>
						</div>		
						<div class="form-group" style="margin-top:15px">
							<label class="col-sm-2 control-label" for="txt_search_start_ruyuantime">入库日期</label>
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
							<!-- <div style="transform: translateX(-6.5%);;">
							<label class="col-sm-1 control-label">至</label>
							<div class="col-sm-3">
								<input  id="end_ruyuan_time" type="text" class="form-control" >
								value="2019-03-14 03:03:07"
							</div>
							</div> -->
							<div class="col-sm-4" style="text-align:left;">
								<button type="button" style="margin-left:50px" id="btn_query" class="btn btn-primary">查询</button>
								<button type="button" style="margin-left:50px" id="btn_clean" class="btn btn-restore">重置</button>
							</div>
							<div class="col-sm-1 form-group">
                                <input style="width: 260px;" type="hidden" id="time1" name="time1" 
                                	type="text" class="form-control"   >
                            </div>
						</div>
					</form>
				</div>
			</div>
		 <div id="toolbar" class="btn-group">
			 <button id="btn_add" type="button" class="btn btn-white" >
	        	<span class="glyphicon glyphicon-plus"></span>新增
	    	</button> 
	   		<button id="btn_edit" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-pencil" ></span>修改
	          	</button>
	          	<button id="btn_action" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-pencil" ></span>验收
	          	</button>
	          	<button id="btn_select" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-ok" ></span>查看
	          	</button>  
	        <button id="btn_zuofei" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-remove" ></span>作废
	          	</button> 	 
    	</div> 
    	
    	<table id="tb_patient_message"></table>
    	
    	
    	
    	<div class="modal fade bs-example-modal-sm" id="myModaAdd" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-sm" style=" 
			   
			    width: 50%;">
					
						<div class="modal-content">
							<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							<h4 class="modal-title">入库新增</h4>
							</div>
							
							<div class="ibox-content">
	                     
	                     	<!-- <table id="tb_patient_message1"></table> -->
	                     	<form  class="form-horizontal" id="Formadd_payment">
	                        	<div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-4 control-label">选择药房</label>
	                                    <div class="col-sm-4 form-group">
	                                       <select  id="storage_location" name="storage_location" class="selectpicker" data-size="5" >
		    						<option value="">请选择</option>
		    						<option value="住院药房 ">住院药房 </option>
								</select>
	                                    </div>
	                                     <input type="hidden" id="storage_id" name="storage_id" type="text" class="form-control" >
	                                      <input type="hidden" id="storage_make_pharmacist" name="storage_make_pharmacist" type="text" class="form-control" >
	                                       <input type="hidden" id="storage_date" name="storage_date" type="text" class="form-control" >
	                            </div>	
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-4 control-label">入库方式</label>
	                                    <div class="col-sm-4 form-group">
	                                        <select  id="storage_type" name="storage_type" class="selectpicker" data-size="5" >
		    						<option value="">请选择</option>
		    						<option value="采购入库">采购入库 </option>
								</select>
	                                    </div>
	                            </div>
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            <div class="col-sm-4">
	                                </div>
	                                <div class="col-sm-8 ">
	                                    <button id="btn_payment" class="btn btn-primary" type="button" formtarget="_blank">保存</button>
	                                    <button id="btn_cancel1" class="btn btn-white" data-dismiss="modal">取消</button>
	                                </div>
	                            </div>
	                        </form>
	                    </div> 
							
							
						</div>
					</div>
				</div>
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
    <script type="text/javascript" src="js/plugins/sweetalert/sweetalert.min.js"></script>
    <script type="text/javascript">
    //getDeparmentlList11();
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
    
    $().ready(function() {
    	
    	var todayYear=(new Date()).getFullYear();
        var todayMonth=(new Date()).getMonth();
        var todayDay=(new Date()).getDate();
        var todayTime=(new Date(todayYear,todayMonth,todayDay,'00','00','00')).getTime();//毫秒
        var a = changeDateFormat(todayTime);
        var time2 = new Date(a).getTime();
		//console.log(time2);
		var time3 = (time2/1000 + 86400)*1000;
		var time4 = changeDateFormat(time3);
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
		$('#start_time').val(a);
		var start_time = $("#start_time").val() + " " + '00' + ":" + '00' + ":" + '00';
		$('#time1').val(start_time);
		$('#start_time').datetimepicker({
    		format: 'yyyy-mm-dd',//显示格式
    		todayHighlight: 1,//今天高亮
    		minView: "month",//设置只显示到月份
    		startView:2,
    		endDate:time4,
    		forceParse: 0,
    		showMeridian: 1,
    		autoclose: 1//选择后自动关闭
    	});
    	
    });
    //查询
    $(document).on('click', "#btn_query",function(){
    	var start_time = $("#start_time").val() + " " + '00' + ":" + '00' + ":" + '00';  	   	
    	$('#time1').val(start_time);
    	console.log(start_time);
    	$('#tb_patient_message').bootstrapTable('refresh');
	 });
    
    //修改
    $(document).on('click', "#btn_edit",function(){
    	var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
		var row = arrselectedData[0];
		if (arrselectedData.length <= 0) {
			 swal({
            	   title:"请选中一行",
            	   text:"",
            	   type:"warning"
               });
        }else if(row.storage_status == 1){
        	swal({
         	   title:"已验收",
         	   text:"无法修改",
         	   type:"warning"
            });
        }else{
    	
    	//跳转至执行页面
    	turnnew();
		function turnnew(){
			page("Requisition2_assisagin?storage_id="+row.storage_id,"药房入库单");
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
		
        }
	 });
    
    //查看
    $(document).on('click', "#btn_select",function(){
    	var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
		var row = arrselectedData[0];
		if (arrselectedData.length <= 0) {
			 swal({
            	   title:"请选中一行",
            	   text:"",
            	   type:"warning"
               });
        }else{
    	
    	//跳转至执行页面
    	turnnew();
		function turnnew(){
			page("Requisition2_assisagin?storage_id="+row.storage_id,"药房入库单");
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
		
        }
	 });
    //重置
    $(document).on('click', "#btn_clean",function(){
    	var start_time = $("#start_time").val() + " " + '00' + ":" + '00' + ":" + '00';  	   	
    	$('#time1').val(start_time);
    	console.log(start_time);
    	//$('#txt_search_departmentname').val("");
		 //$('#txt_search_patientname').val("");
		 //$('#txt_search_departmentid').selectpicker('val',(''));
		 $('#storage_status').selectpicker('val',(''));
		 $("#start_ruyuan_time").val("");
		 $("#end_ruyuan_time").val("");
		 $('#tb_patient_message').bootstrapTable('refresh');
	 });
    $(document).on('click', "#btn_add",function(){
    	var todayYear=(new Date()).getFullYear();
        var todayMonth=(new Date()).getMonth();
        var todayDay=(new Date()).getDate();
        var todayTime=(new Date(todayYear,todayMonth,todayDay,'00','00','00')).getTime();//毫秒
        var todayTime1=(new Date()).getTime();
        var a = changeDateFormat(todayTime);
        var b = changeDateFormat1(todayTime1);
        function changeDateFormat(cellval) {
		    var dateVal = cellval + "";
		    if (cellval != null) {
		        var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
		        var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
		        var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
		        return date.getFullYear()  + month   + currentDate  ;
		    };
		};
		function changeDateFormat1(cellval) {
		    var dateVal = cellval + "";
		    if (cellval != null) {
		        var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
		        var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
		        var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();

		        var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
		        var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
		        var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();

		        return date.getFullYear() + "-" + month  + "-" + currentDate + " " + hours + ":" + minutes + ":" + seconds  ;
		    };
		};
		var randnum=rand(1000,9999);
		function rand(min,max) {
	        return Math.floor(Math.random()*(max-min))+min;
	    }
		var aa = "RK"+a+randnum;
		$("#storage_id").val(aa);
		$("#storage_date").val(b);
		$("#storage_make_pharmacist").val("${USER.user_work_id}");
		
		
		$("#myModaAdd").modal('show');        
    	console.log(aa);
    	
    	//$('#tb_patient_message').bootstrapTable('refresh');
	 });
    
    $(document).on('click', "#btn_payment",function(){
		
		if(moneyValidate().form()) {
			var param = $("#Formadd_payment").serializeArray();
			console.log(param);
			//var storage_id = param[1].value;
			//console.log(storage_id);
			$.ajax({
				url: "/hospital/addStroage",
				type:"post",
				data:param,
				 success: function (data) {
					  /* swal({title:"添加成功",
                            text:"",
                            type:"success",
                            //timer:2000,
                            }); */	 
                            $('#storage_location').selectpicker('val',(''));
                            $('#storage_type').selectpicker('val',(''));
					 
					 $('#tb_patient_message').bootstrapTable('refresh');	
	                $("#myModaAdd").modal('hide');
	                
	              
	                var storage_id = param[1].value;
	                
	                
	                
	              //跳转至执行页面
                	turnnew();
					function turnnew(){
						page("Requisition2_assisagin?storage_id="+storage_id,"药房入库单");
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
					
					
	                
		         },
		         error:function(){
		        	 swal({title:"添加失败",
                            text:"",
                            type:"error",
                            //timer:2000,
                            });
				 }

			});
			
			
			
		}
		
	});
    function moneyValidate(){
		/*关键在此增加了一个return，返回的是一个validate对象，这个对象有一个form方法，返回的是是否通过验证(true,false)*/
			return $("#Formadd_payment").validate({
			    rules: {				    	
			    	storage_location : {
		       		required : true,
		       		},
		       		storage_type : {
			       		required : true,
			       		},		       		
			     },
			     messages: {
			    	 /* advance_payment : {  
					       required : "请输入金额",  							      					    
					  		}, */						  		
			  			},
				});
		};
    
    //记录点选择框次数
    var count = 0;
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
				url: '/hospital/selectStorage', //请求后台的URL（*）
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
				showColumns: false, //是否显示所有的列
				showRefresh: true, //是否显示刷新按钮
				minimumCountColumns: 2, //最少允许的列数
				clickToSelect: true, //是否启用点击选中行
				//height: 500, //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
				uniqueId: "patient_id", //每一行的唯一标识，一般为主键列
				showToggle: false, //是否显示详细视图和列表视图的切换按钮
				cardView: false, //是否显示详细视图
				detailView: false, //是否显示父子表
				columns:[
		                 [  {
		     					checkbox: true,
		     					valign:"middle",
		                        align:"center",
		                        colspan: 1,
		                        rowspan: 2,
		     				},
		     				{  valign:"middle",
		                        align:"center",
		                        colspan: 1,
		                        rowspan: 2,
		    					field: 'storage_id',
		    					title: '入库单号',
		    					
		    				},{
		    					valign:"middle",
		                        align:"center",
		                        colspan: 1,
		                        rowspan: 2,
		    					field: 'storage_type',
		    					title: '入库方式'
		    				},{
		    					valign:"middle",
		                        align:"center",
		                        colspan: 1,
		                        rowspan: 2,
		    					field: 'storage_location',
		    					title: '入库药房'
		    				},{
		    					valign:"middle",
		                        align:"center",
		                        colspan: 1,
		                        rowspan: 2,
		    					field: 'storage_list.storage_supply',
		    					title: '供应商'
		    				}, {
		    					valign:"middle",
		                        align:"center",
		                        colspan: 1,
		                        rowspan: 2,
		    					field: 'sum_price',
		    					title: '金额'
		    				},
		                     {
		                         title: "验收情况",
		                         valign:"middle",
		                         align:"center",
		                         colspan: 2,
		                         rowspan: 1
		                     },{
		                         title: "制单情况",
		                         valign:"middle",
		                         align:"center",
		                         colspan: 2,
		                         rowspan: 1
		                     },{
		                         title: "",
		                         valign:"middle",
		                         align:"center",
		                         colspan: 1,
		                         rowspan: 1
		                     }
		                ],
		                 [
		                   
		                      {
		                         field: 'storage_check_date',
		                        title: '验收时间',
		                         valign:"middle",
		                         align:"center",
		                         formatter: function (value, row, index) {
					                    return changeDateFormat(value);
					                },
		                    },
		                     {
		                         field: 'user.user_name',
		                         title: '验收人',
		                         valign:"middle",
		                         align:"center"
		                     },
		                     {
		                         field: 'storage_date',
		                         title: '入库日期',
		                         valign:"middle",
		                         align:"center",
		                         formatter: function (value, row, index) {
					                    return changeDateFormat(value);
					                },
		                     },
		                     {
		                         field: 'user1.user_name',
		                         title: '制单人',
		                         valign:"middle",
		                         align:"center"
		                     },{
		                         field: 'storage_status',
		                         title: '是否作废',
		                         valign:"middle",
		                         align:"center",
		                         formatter: function (value, row, index) {
		                        	 
		                        	 if(value == 2){
		                        		 value="是";
		                        		 color = 'Red';
	                            		return '<div  style="color: ' + color + '">' + value + '</div>';;
		                        	 }else{
		                        		 
		                        		 value="否";
		                        		 return value;
		                        	 }
		                        	 
					                    
					                },
		                     },
		                 ]
		             ],
				
				//事件处理
				//当选择（check）此行时触发
				onDblClickRow: function (row, $element) {
					
				},
				onCheck: function (row, $element) {	
					
					var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
					var row = arrselectedData[0];
					//修改时初始化已选中的值					
					console.log(row);
					
										
					count = count+1;
					//console.log(count);
					if(count>1){
						$("#btn_action").attr("disabled","disabled");
						$("#btn_cancel").attr("disabled","disabled");
						$("#btn_select").attr("disabled","disabled");
						$("#btn_edit").attr("disabled","disabled");
					}
				},
				onUncheck: function (row, $element) {			
					count = count-1;
					if(count<=1){
						$("#btn_action").removeAttr("disabled");
						$("#btn_cancel").removeAttr("disabled");
						$("#btn_edit").removeAttr("disabled");
						$("#btn_select").removeAttr("disabled");
					}
					//console.log(count);    
				},
				//当全选行时触发，所需的参数如下
				onCheckAll: function (row) {
					$("#btn_action").attr("disabled","disabled");
					$("#btn_cancel").attr("disabled","disabled");
					$("#btn_select").attr("disabled","disabled");
					$("#btn_edit").attr("disabled","disabled");
				},
				onUncheckAll: function (row) {
					count = 0;
					$("#btn_action").removeAttr("disabled");
					$("#btn_cancel").removeAttr("disabled");
					$("#btn_edit").removeAttr("disabled");
					$("#btn_select").removeAttr("disabled");
				},
				//当重置（reset）表的视图时触发
				onResetView: function () {
					count = 0;
					$("#btn_action").removeAttr("disabled");
					$("#btn_cancel").removeAttr("disabled");
					$("#btn_edit").removeAttr("disabled");
					$("#btn_select").removeAttr("disabled");
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

		        return date.getFullYear() + "-" + month + "-" + currentDate  + " " + hours + ":" + minutes + ":" + seconds ;
		    }
		};
		function changeDateFormat1(cellval) {
		    var dateVal = cellval + "";
		    if (cellval != null) {
		        var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
		        var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
		        var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
		        var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
		        var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
		        var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();

		        return date.getFullYear() + "-" + month + "-" + currentDate /*  + " " + hours + ":" + minutes + ":" + seconds */;
		    }
		};
		//得到查询的参数
		oTableInit.queryParams = function(params) {
			if($("#start_ruyuan_time").val()==''||$("#end_ruyuan_time").val()==''){
				var param = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
						pageSize: params.pageSize, //页面大小
						pageNumber: params.pageNumber, //页码
						storage_status : $("#storage_status").val(),
						//role_id :"${USER.role_id}",
						//start_time : $('#time1').val(),
						//patient_id : $('#txt_search_departmentname').val(),
						//patient_name : $('#txt_search_patientname').val(),
						//deparment_id : $('#txt_search_departmentid').val(),
						//requisition_status : $('#requisition_status').val(),
					};
					return param;
			}else{
				var param = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
						pageSize: params.pageSize, //页面大小
						pageNumber: params.pageNumber, //页码
						storage_status : $("#storage_status").val(),
						//role_id :"${USER.role_id}",
						//start_time : $('#time1').val(),
						//patient_id : $('#txt_search_departmentname').val(),
						//patient_name : $('#txt_search_patientname').val(),
						//deparment_id : $('#txt_search_departmentid').val(),
						//requisition_status : $('#requisition_status').val(),
						start_time : $("#start_ruyuan_time").val(),
						end_time : $("#end_ruyuan_time").val(),
					};
					return param;
			}
			
			
		};
		return oTableInit;
	};
	var ButtonInit = function() {
		var oInit = new Object();
		oInit.Init = function() {
			//初始化页面上面的按钮事件
			
			//作废
			$(document).on('click', "#btn_zuofei",function(){
				var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
				var row = arrselectedData[0];
				var select_id = '';
            	for (var i = 0; i < arrselectedData.length; i++) {
            		select_id += arrselectedData[i]['storage_id'] + ",";
                }
            	//去掉最后的逗号
            	select_id = select_id.substring(0, select_id.length - 1);
            	//console.log(arrselectedData);
				if (arrselectedData.length <= 0) {
					 swal({
	                	   title:"请选中一行",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else if(row.storage_check_date!=null ){
                	
                	var a = (row.storage_check_date/1000) + 60 * 60 * 24 * 5;
                	var timestamp = (Date.parse(new Date()))/1000;
                	console.log(a);
                	console.log(timestamp);
                	if(a < timestamp){
                		 swal({
  	                	   title:"无法做废",
  	                	   text:"验收已超过五天",
  	                	   type:"error"
  	                   });
                	}else{
                		console.log(select_id);
                		$.ajax({
            				url: "/hospital/zuofei1Stroage",
            				type:"post",
            				data:{
            					select_id : select_id,
            				},
            				 success: function (data) {
            					 swal({
            	                	   title:"作废成功",
            	                	   text:"",
            	                	   type:"success"
            	                   });
            					
            	                $('#tb_patient_message').bootstrapTable('refresh');
            		         },
            		         error:function(){
            		        	 swal({
            	                	   title:"作废失败",
            	                	   text:"",
            	                	   type:"error"
            	                   });
            				 }

            			}); 
                	}
                	
                }else{                	
                	
                	$.ajax({
        				url: "/hospital/zuofei2Stroage",
        				type:"post",
        				data:{
        					select_id : select_id,
        				},
        				 success: function (data) {
        					 swal({
        	                	   title:"作废成功",
        	                	   text:"",
        	                	   type:"success"
        	                   });
        					
        	                $('#tb_patient_message').bootstrapTable('refresh');
        		         },
        		         error:function(){
        		        	 swal({
        	                	   title:"作废失败",
        	                	   text:"",
        	                	   type:"error"
        	                   });
        				 }

        			});
                	
                }
			    });
			
			//验收
			$(document).on('click', "#btn_action",function(){
				var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
				var row = arrselectedData[0];
				if (arrselectedData.length <= 0) {
					 swal({
	                	   title:"请选中一行",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else if(row.storage_status == 2){
                	swal({
	                	   title:"该单据已作废",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else{                	
                	var select_id = '';
                	for (var i = 0; i < arrselectedData.length; i++) {
                		select_id += arrselectedData[i]['storage_id'] + ",";
                    }
                	//去掉最后的逗号
                	select_id = select_id.substring(0, select_id.length - 1);
                	console.log(select_id);
                	var todayTime1=(new Date()).getTime();
                    var b = changeDateFormat1(todayTime1);
            		function changeDateFormat1(cellval) {
            		    var dateVal = cellval + "";
            		    if (cellval != null) {
            		        var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
            		        var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
            		        var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();

            		        var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
            		        var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
            		        var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();

            		        return date.getFullYear() + "-" + month  + "-" + currentDate + " " + hours + ":" + minutes + ":" + seconds  ;
            		    };
            		};
                	$.ajax({
        				url: "/hospital/actionStroage",
        				type:"post",
        				data:{
        					select_id : select_id,
        					storage_check_pharmacist : "${USER.user_work_id}",
        					storage_check_date : b,
        				},
        				 success: function (data) {
        					 swal({
        	                	   title:"验收成功",
        	                	   text:"",
        	                	   type:"success"
        	                   });
        					
        	                $('#tb_patient_message').bootstrapTable('refresh');
        		         },
        		         error:function(){
        		        	 swal({
        	                	   title:"验收失败",
        	                	   text:"",
        	                	   type:"error"
        	                   });
        				 }

        			});    
                	
                	
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
    </script>
</body>

</html>