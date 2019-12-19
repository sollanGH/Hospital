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
		<script type="text/javascript" src="js/jquery.min.js"></script>
	 	<script src="js/bootstrap.min.js?v=3.3.5"></script>
		<script type="text/javascript" src="js/bootstrap-table.min.js"></script>
		<script type="text/javascript" src="js/bootstrap-table-zh-CN.min.js"></script>
		<script src="js/content.min.js?v=1.0.0"></script>
		<script type="text/javascript" src="js/bootstrap-datetimepicker.min.js" ></script>
	    <script src="js/plugins/validate/jquery.validate.min.js"></script>
	    <script src="js/plugins/validate/messages_zh.min.js"></script>
	    <script src="js/demo/form-validate-demo.min.js"></script>
	    <script src="js/bootstrap-select.min.js"></script>
		<meta charset="UTF-8">
		<title></title>
	</head>

	 <body>
		<div class="panel-body" style="padding-bottom:0px;">
			<div class="panel panel-default">
				<div class="panel-heading">查询条件</div>
				<div class="panel-body">
					<form id="formSearch" class="form-horizontal">
						<div class="form-group" style="margin-top:15px">
							<label class="control-label col-sm-1" for="txt_search_departmentname">住院号</label>
							<div class="col-sm-3">
								<input  type="text" class="form-control" id="txt_search_departmentname"> 
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
				<button  type="button" class="btn btn-white" data-toggle="modal" data-target="#myModaAdd">
                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
            	</button>
				<div class="modal inmodal fade" id="myModaAdd" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							<h4 class="modal-title">新增数据</h4>
						</div>
						<div class="ibox-content">
							<form class="form-horizontal m-t" id="Formadd">
								<div class="form-group">
									<label class="col-sm-3 control-label">住院号：</label>
									<div class="col-sm-8">
										<input id="patient_id" name="patient_id"  type="text" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">病人姓名：</label>
									<div class="col-sm-8">
										<input id="patient_name" name="patient_name" type="text" class="form-control"  >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">身份证：</label>
									<div class="col-sm-8">
										<input id="id_number" name="id_number" type="text"  class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">手机：</label>
									<div class="col-sm-8">
										<input id="phone" name="phone" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">出生日期：</label>
									<div class="col-sm-8">
										<input id="brith_day" name="brith_day"  type="text" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">年龄：</label>
									<div class="col-sm-8">
										<input id="age" name="age"  type="text" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">联系人姓名：</label>
									<div class="col-sm-8">
										<input id="apatient_name" name="apatient_name"  type="text" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">联系人电话：</label>
									<div class="col-sm-8">
										<input id="aphone" name="aphone"  type="text" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">患者关系：</label>
									<div class="col-sm-8">
										<input id="relation" name="relation"  type="text" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">性别：</label>
									<div class="col-sm-8">
										<input id="patient_meal" name="patient_meal" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">婚姻状况：</label>
									<div class="col-sm-8">
										<input id="marital_state" name="marital_state" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">住址：</label>
									<div class="col-sm-8">
										<textarea id="brith_place" name="brith_place" class="form-control" ></textarea>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
									<button id="btn_add" class="btn btn-primary " type="button">新增</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
				
				<div class="modal inmodal fade" id="myModaEdit" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							<h4 class="modal-title">修改数据</h4>
							</div>
							<div class="ibox-content">
							<form class="form-horizontal m-t" id="FormEdit">
							<div class="form-group">
									<label class="col-sm-3 control-label">住院号：</label>
									<div class="col-sm-8">
										<input id="patient_id1" name="patient_id"  type="text" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">病人姓名：</label>
									<div class="col-sm-8">
										<input id="patient_name1" name="patient_name" type="text" class="form-control"  >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">身份证：</label>
									<div class="col-sm-8">
										<input id="id_number1" name="id_number" type="text"  class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">手机：</label>
									<div class="col-sm-8">
										<input id="phone1" name="phone" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">出生日期：</label>
									<div class="col-sm-8">
										<input id="brith_day1" name="brith_day"  type="text" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">性别：</label>
									<div class="col-sm-8">
										<input id="patient_meal1" name="patient_meal" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">婚姻状况：</label>
									<div class="col-sm-8">
										<input id="marital_state1" name="marital_state" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">住址：</label>
									<div class="col-sm-8">
										<textarea id="brith_place1" name="brith_place1" class="form-control" ></textarea>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
									<button id="btn_update" class="btn btn-primary " type="button">修改</button>
								</div>
							</form>
							</div>
						</div>
					</div>
				</div>	
				
				<button id="btn_edit" type="button" class="btn btn-white">
                	<span class="glyphicon glyphicon-pencil" ></span>修改
            	</button>
				<!-- <button id="btn_delete" type="button" class="btn btn-white">
                	<span class="glyphicon glyphicon-remove" ></span>删除
            	</button> -->
			</div>
			<table id="tb_departments"></table>
		</div>

		<script type="application/javascript">
		$('#brith_day1').datetimepicker({
			format: 'yyyy-mm-dd HH:mm:ss',//显示格式
			todayHighlight: 1,//今天高亮
			minView: "0",//设置只显示到月份
			startView:2,
			forceParse: 0,
			showMeridian: 1,
			autoclose: 1//选择后自动关闭
		});
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
					$('#tb_departments').bootstrapTable({
						url: '/hospital/selectPatientAll', //请求后台的URL（*）
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
						columns: [{
							checkbox: true
						}, {
							field: 'patient_id',
							title: '住院号'
						}, {
							field: 'patient_name',
							title: '病人姓名'
						}, {
							field: 'id_number',
							title: '身份证'
						}, {
							field: 'phone',
							title: '手机'
						}, {
							field: 'brith_day',
							title: '出生日期',
							formatter: function (value, row, index) {
			                    return changeDateFormat(value)
			                },
						},{
							field: 'age',
							title: '年龄'
						},{
							field: 'apatient_name',
							title: '联系人姓名'
						},{
							field: 'aphone',
							title: '联系人电话'
						},{
							field: 'relation',
							title: '患者关系'
						},{
							field: 'brith_place',
							title: '出生地'
						},{
							field: 'patient_meal',
							title: '性别'
						},{
							field: 'marital_state',
							title: '婚姻状况'
						},{
							field: 'brith_place',
							title: '住址'
						},],
						//事件处理
						//当选择（check）此行时触发
						onCheck: function (row, $element) {							
							count = count+1;
							//console.log(count);
							if(count>1){
								$("#btn_edit").attr("disabled","disabled");
							}
						},
						onUncheck: function (row, $element) {
							count = count-1;
							if(count<=1){
								$("#btn_edit").removeAttr("disabled");
							}
							//console.log(count);    
						},
						//当全选行时触发，所需的参数如下
						onCheckAll: function (row) {
							$("#btn_edit").attr("disabled","disabled");
						},
						onUncheckAll: function (row) {
							count = 0;
							$("#btn_edit").removeAttr("disabled");
						},
						//当重置（reset）表的视图时触发
						onResetView: function () {
							count = 0;
							$("#btn_edit").removeAttr("disabled");
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

				        return date.getFullYear() + "-" + month + "-" + currentDate + " " + hours + ":" + minutes + ":" + seconds;
				    }
				};
				//得到查询的参数
				oTableInit.queryParams = function(params) {
					var param = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
						pageSize: params.pageSize, //页面大小
						pageNumber: params.pageNumber, //页码
						patient_id: $("#txt_search_departmentname").val(),	
					};
					return param;
				};
				return oTableInit;
			};

			var ButtonInit = function() {
				var oInit = new Object();
				var postdata = {};
				oInit.Init = function() {
					//初始化页面上面的按钮事件
					
					//查询按钮
					$(document).on('click', "#btn_query",function(){
						  //查询之后重新从第一页算起
						  $('#tb_departments').bootstrapTable('refreshOptions',{pageNumber:1,pageSize:10});
						  //$('#tb_departments').bootstrapTable('refresh');
						  console.log($("#txt_search_departmentname").val());
						  console.log(typeof $("#txt_search_departmentname").val());
						});
					//重置按钮
					$(document).on('click', "#btn_clean",function(){
						 $("#txt_search_departmentname").val("");		
					    });
					//修改按钮					
					$(document).on('click', "#btn_edit",function(){									
						var arrselectedData = $('#tb_departments').bootstrapTable('getSelections');
						var row = arrselectedData[0];						
						if (arrselectedData.length <= 0) {
	                        alert("请选中一行");
	                    }else{
	                    	//getDeparmentlList1();
	                    	$("#myModaEdit").modal('show');	                    	
	                    	$('#patient_name1').val(row.patient_name);
	                    	$('#brith_day1').val(changeDateFormat(row.brith_day));
	                    	$('#marital_state1').val(row.marital_state);       
	                		$('#patient_meal1').val(row.patient_meal);
	                		$('#principal1').val(row.principal);
	                		$('#brith_place1').val(row.brith_place);
	                		$('#id_number1').val(row.id_number);
	                		$('#phone1').val(row.phone);
	                		$('#work_place1').val(row.work_place1);
	                		$('#patient_id1').val(row.patient_id);
	                		$('#patient_meal1').val(row.patient_meal);
	                    	console.log(row);
	                    }
						});
					//删除按钮
					$(document).on('click', "#btn_delete",function(){
						var arrselectedData = $('#tb_departments').bootstrapTable('getSelections');
						if (arrselectedData.length <= 0) {
	                        alert("请选中一行");
	                    }else{
	                    	//从一个对象中解析出字符串
	                    	//var select_id = JSON.stringify(arrselectedData);
	                    	var select_id = '';
	                    	for (var i = 0; i < arrselectedData.length; i++) {
	                    		select_id += arrselectedData[i]['patient_id'] + ",";
	                        }
	                    	//去掉最后的逗号
	                    	select_id = select_id.substring(0, select_id.length - 1);
	                    	//console.log(arrselectedData);
	                    	console.log(select_id);
	                    	//调用删除方法
	                    	deleteUser(select_id);
	                    }
					    });
					//模态框添加按钮
					$(document).on('click', "#btn_add",function(){

						if(phoneValidate().form()) {
							  //通过表单验证，以下编写自己的代码
							  var param = $("#Formadd").serializeArray();
								        $.ajax({
											url: "/hospital/addPatient",
											type:"post",
											data:param,
											 success: function (data) {
								                alert("新增成功");
								                $('#tb_departments').bootstrapTable('refresh');
								                document.getElementById("Formadd").reset();
								                $("#myModaAdd").modal('hide');
									         },
									         error:function(){
									        	 alert("新增失败");
											 }

										});	   
							 } else {
							  //校验不通过，什么都不用做，校验信息已经正常显示在表单上
								console.log("校验不通过");
							 }					
						});
					//模态框修改按钮
					$(document).on('click', "#btn_update",function(){

						if(phoneValidate().form()) {
							  //通过表单验证，以下编写自己的代码
							  var param = $("#FormEdit").serializeArray();
							  console.log(param);
								        $.ajax({
											url: "/hospital/updatePatient",
											type:"post",
											data:param,
											 success: function (data) {
								                alert("更新成功");
								                count = 0;
												console.log(count);
												$("#btn_edit").removeAttr("disabled");
								                $('#tb_departments').bootstrapTable('refresh');
								                document.getElementById("FormEdit").reset();
								                $("#myModaEdit").modal('hide');
									         },
									         error:function(){
									        	 alert("更新失败");
											 }

										});	   
							 } else {
							  //校验不通过，什么都不用做，校验信息已经正常显示在表单上
								console.log("校验不通过");
							 }					
						});
				};

				return oInit;
			};
			//删除方法
			function deleteUser(select_id){
				var msg = "您真的确定要删除吗？";
				if (confirm(msg) == true) {
					$.ajax({
						url: "/hospital/deletePatientList",
						type:"post",
						data:{
							room_id:select_id
						},
						 success: function (data) {
							count = 0;
							console.log(count);
							$("#btn_edit").removeAttr("disabled");
			                alert("删除成功");
			                $('#tb_departments').bootstrapTable('refresh');
				         }
					});
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

			        return date.getFullYear() + "-" + month + "-" + currentDate + " " + hours + ":" + minutes + ":" + seconds;
			    }
			};
			//验证
			function phoneValidate(){
			/*关键在此增加了一个return，返回的是一个validate对象，这个对象有一个form方法，返回的是是否通过验证(true,false)*/
				return $("#Formadd").validate({
				    rules: {
				    	room_name : {  
				            required : true,  
				            minlength : 1, 				             
				       		}, 
				     },
				   messages: {
					   user_work_id : {  
					       required : "请输入手机号",  
					       minlength : "不能小于1个字符",  					    
					  		}
			  			},
					});
				}
		</script>
	</body>
</html>