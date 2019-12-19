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
		<meta charset="UTF-8">
		<title></title>
		<style>
		.bootstrap-select:not([class*=col-]):not([class*=form-control]):not(.input-group-btn){
			width: 150px;
			
		}
		.bootstrap-select>.dropdown-toggle.bs-placeholder, .bootstrap-select>.dropdown-toggle.bs-placeholder:active, .bootstrap-select>.dropdown-toggle.bs-placeholder:focus, .bootstrap-select>.dropdown-toggle.bs-placeholder:hover{
			color: #333;
		}
		.col-sm-3{
			width: 18.5%;
		}
		.col-sm-2{
			width: 12.5%;
		}		
		.col-sm-1{
			width: 10.8%;
		}
		.bootstrap-select>.dropdown-toggle{
			width: 55%;
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
								<select id="txt_search_departmentname" name="txt_search_departmentname" class="selectpicker" data-size="5" data-live-search="true" >
								</select>
								<!-- <input  type="text" class="form-control" id="txt_search_departmentname"> -->
							</div>
							<label class="control-label col-sm-2" for="txt_search_statu">床位号</label>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="txt_search_statu">
							</div>
							<div class="col-sm-4" style="text-align:left;">
								<button type="button" style="margin-left:50px" id="btn_query" class="btn btn-primary">查询</button>
								<button type="button" style="margin-left:50px" id="btn_clean" class="btn btn-restore">重置</button>
							</div>
						</div>
						<div class="form-group" style="margin-top:15px">
						<label class="col-sm-2 control-label">房间状态</label>
                                  <div class="col-sm-2 " > 
									<select id="bed_state" name="bed_state" class="selectpicker" data-size="5" >
			    						<option value="">请选择</option>
			    						<option value="true">未分配</option>
									    <option value="false">已分配</option>
									</select>
								</div>
						<label class="control-label col-sm-2" for="txt_search_statu">病人姓名</label>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="patient_name">
							</div>			
						</div>
					</form>
				</div>
			</div>

			<div id="toolbar" class="btn-group">
				<!-- <button  type="button" class="btn btn-white" data-toggle="modal" data-target="#myModaAdd">
                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
            	</button> -->
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
									<label class="col-sm-3 control-label">病房号：</label>
									<div class="col-sm-8">
										<input id="room_name" name="room_name"  type="text" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">所属科室：</label>
									<div class="col-sm-8">
										<input id="deparment_id" name="deparment_id" type="text" class="form-control"  >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">病床数量：</label>
									<div class="col-sm-8">
										<input id="bed_num" name="bed_num" type="text"  class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">负责人：</label>
									<div class="col-sm-8">
										<input id="principal" name="principal"  type="text" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">入院人数：</label>
									<div class="col-sm-8">
										<textarea id="ruyuan_num" name="ruyuan_num" class="form-control" ></textarea>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">出院人数：</label>
									<div class="col-sm-8">
										<input id="chuyuan_num" name="chuyuan_num" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">空床数：</label>
									<div class="col-sm-8">
										<input id="empty_beds" name="empty_beds" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">负责人工号：</label>
									<div class="col-sm-8">
										<input id="duty_officers_id" name="duty_officers_id" class="form-control" >
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
							<input id="room_id1" name="room_id"  type="hidden" class="form-control" >
								<div class="form-group">
									<label class="col-sm-3 control-label">病房号：</label>
									<div class="col-sm-8">
										<input id="room_name1" name="room_name"  type="text" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">所属科室：</label>
									<div class="col-sm-8">
										<select id="deparment_id1" name="deparment_id" class="selectpicker" data-size="5" data-live-search="true" >
										</select>
										<!-- <input id="deparment_id1" name="deparment_id" type="text" class="form-control"  > -->
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">病床数量：</label>
									<div class="col-sm-8">
										<input id="bed_num1" name="bed_num" type="text"  class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">负责人：</label>
									<div class="col-sm-8">
										<input id="principal1" name="principal"  type="text" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">入院人数：</label>
									<div class="col-sm-8">
										<textarea id="ruyuan_num1" name="ruyuan_num" class="form-control" ></textarea>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">出院人数：</label>
									<div class="col-sm-8">
										<input id="chuyuan_num1" name="chuyuan_num" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">空床数：</label>
									<div class="col-sm-8">
										<input id="empty_beds1" name="empty_beds" class="form-control" >
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">负责人工号：</label>
									<div class="col-sm-8">
										<input id="duty_officers_id1" name="duty_officers_id" class="form-control" >
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
				
				<!-- <button id="btn_edit" type="button" class="btn btn-white">
                <span class="glyphicon glyphicon-pencil" ></span>修改
            </button>
				<button id="btn_delete" type="button" class="btn btn-white">
                <span class="glyphicon glyphicon-remove" ></span>删除
            </button> -->
			</div>
			<table id="tb_departments"></table>
		</div>

		<script type="application/javascript">
		
		
		$(document).ready(function(){

	    	if("${USER.role_id}" == 4){
				$('#txt_search_departmentname').attr("disabled","disabled");
			}
	    
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
	            	$('#txt_search_departmentname.selectpicker').append("<option value=''>请选择科室</option>");
	            	
	                $.each(data.data, function (total) {
	               
	                    $('#txt_search_departmentname.selectpicker').append("<option value=" + data.data[total].deparment_id + ">" + data.data[total].deparment_name + "</option>");
	                });	                
	                $('#txt_search_departmentname').selectpicker('refresh');
	                
	                
	                if("${USER.role_id}" == 4){
	        			$('#txt_search_departmentname').selectpicker('val',("${USER.deparment_id}"));
	        			$('#tb_departments').bootstrapTable('refreshOptions',{pageNumber:1,pageSize:10});
	        		}else{
	        			 $('#txt_search_departmentname').selectpicker('val',(''));
	        		}
	            },
	            error: function (data) {
	                alert("查询失败" + data);
	            }
	        });				
	    };
	    
	    
	    
	    function getDeList() {//获取下拉科室列表
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
	            	$('#deparment_id1.selectpicker').append("<option value=-1>请选择科室</option>");
	            	
	                $.each(data.data, function (total) {
	               
	                    $('#deparment_id1.selectpicker').append("<option value=" + data.data[total].deparment_id + ">" + data.data[total].deparment_name + "</option>");
	                });	                
	                $('#deparment_id1').selectpicker('refresh');
	            },
	            error: function (data) {
	                alert("查询失败" + data);
	            }
	        });				
	    };
	    
	    
	    
	    
	    
	    
	    
	    
	    
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
						url: '/hospital/selectBedAll', //请求后台的URL（*）
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
						uniqueId: "bed_id", //每一行的唯一标识，一般为主键列
						showToggle: true, //是否显示详细视图和列表视图的切换按钮
						cardView: false, //是否显示详细视图
						detailView: false, //是否显示父子表
						showFooter: true,
						
						/* rowStyle: function (row, index) {
                            var style = "";
                            if (row.bed_state==true) {style='active';}
                            return { classes: style }
                        }, */
						columns: [{
							checkbox: true
						}, {
							field: 'bed_name',//json数据中rows数组中的属性名
							title: '床位号'
						}, {
							field: 'deparment_name',
							title: '所属科室'
						},{
							field: 'room_name',
							title: '所属病房'
						}, {
							field: 'patient_name',
							title: '病人名字',
							footerFormatter:"总分配数"
						}, {
							field: 'bed_state',
							title: '状态',
							formatter : function(value, row, index) {
	                            if (row['bed_state'] == true) {
	                            	value = '未分配';
	                            	color = 'Black';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';;
	                            }
	                            if (row['bed_state'] == false) {
	                            	value = '已分配';
	                            	color = 'GREEN';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';
	                            }
	                            //return row.userStatus == 0 ? "正常" : row.userStatus == 1 ? "请假" : "离职";
	                            return value;
	                       },
	                       footerFormatter:function(value){
	    						if(value==""){
	    							return "";
	    						}else{
	    							var count = 0;
	    							for(var i in value){
	    								if(value[i].bed_state == false){
	    									count++;
	    								}
	    								//count += value[i].bed_state;
	    								
	    							}
	    							if(count == 0){
	    								return "0";
	    							}
	    							return count;
	    						}
	    					}
						},{
							field: 'bed_expenses',
							title: '床位费  (元/天)'
						},{
							field: 'doctor_name',
							title: '主治医生'
						},],
						//事件处理
						//当选择（check）此行时触发
						onCheck: function (row, $element) {
							var arrselectedData = $('#tb_departments').bootstrapTable('getSelections');
							var row = arrselectedData[0];
							console.log(row);
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

				//得到查询的参数
				oTableInit.queryParams = function(params) {
					var param = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
							 
						deparment_id: $("#txt_search_departmentname").val(),
							
						pageSize: params.pageSize, //页面大小
						pageNumber: params.pageNumber, //页码
						
						bed_name : $("#txt_search_statu").val(),
						bed_state : $("#bed_state").val(),
						patient_name : $("#patient_name").val(),
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
						 //$("#txt_search_departmentname").val(""),
						 $("#txt_search_statu").val("");
						 $("#patient_name").val("");
						 $('#bed_state').selectpicker('val',(''));
						 if("${USER.role_id}" == 4){
			        			$('#txt_search_departmentname').selectpicker('val',("${USER.deparment_id}"));
			        			//$('#tb_departments').bootstrapTable('refreshOptions',{pageNumber:1,pageSize:10});
			        		}else{
			        			 $('#txt_search_departmentname').selectpicker('val',(''));
			        		}
						 $('#tb_departments').bootstrapTable('refreshOptions',{pageNumber:1,pageSize:10});
					    });
					//修改按钮
					getDeList();//先初始化修改表单里的下拉框
					$(document).on('click', "#btn_edit",function(){									
						var arrselectedData = $('#tb_departments').bootstrapTable('getSelections');
						var row = arrselectedData[0];						
						if (arrselectedData.length <= 0) {
	                        alert("请选中一行");
	                    }else{
	                    	//getDeparmentlList1();
	                    	$("#myModaEdit").modal('show');	                    	
	                    	$('#room_id1').val(row.room_id);
	                    	$('#room_name1').val(row.room_name);
	                    	$('#deparment_id1').selectpicker('val',(row.deparment_id));	//传值过来并且默认选中对应的值              
	                		$('#bed_num1').val(row.bed_num);
	                		$('#principal1').val(row.principal);
	                		$('#ruyuan_num1').val(row.ruyuan_num);
	                		$('#chuyuan_num1').val(row.chuyuan_num);
	                		$('#empty_beds1').val(row.empty_beds);
	                		$('#duty_officers_id1').val(row.duty_officers_id);
	                		console.log($("#room_id1").val());
	                    	console.log($("#deparment_id1").val());
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
	                    		select_id += arrselectedData[i]['room_id'] + ",";
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
											url: "/hospital/addRoom",
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
											url: "/hospital/updateRoom",
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
						url: "/hospital/deleteRoomList",
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