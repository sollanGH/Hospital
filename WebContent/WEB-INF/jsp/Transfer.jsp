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
							<label class="control-label col-sm-2" for="txt_search_departmentname">科室</label>
								<div class="col-sm-2">
									<select id="txt_search_departmentid" name="deparment_id" style="width: 50px;" class="selectpicker" data-size="5" >
									</select>
									<!-- <input  type="text" class="form-control" id="txt_search_departmentid">  -->
								</div>
							<label class="control-label col-sm-2" for="txt_search_departmentname">住院号</label>
							<div class="col-sm-2">
								<input  type="text" class="form-control" id="txt_search_departmentname"> 
							</div>
							<label class="control-label col-sm-2" for="txt_search_patientname">病人姓名</label>
							<div class="col-sm-2">
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
		<div id="toolbar" class="btn-group">
			<button id="btn_edit" type="button" class="btn btn-white" data-toggle="modal" data-target="#myModaAdd">
	        	<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>更换床位
	    	</button>
	    	
	    <div class="modal inmodal fade" id="myModaEdit" tabindex="-1" role="dialog" aria-hidden="true">
	        
	        
	        <div class="modal-dialog modal-lg" style=" margin-left: 2%;
			    margin-right: 2%;
			    width: 95%;">
						<div class="modal-content">
	                <div class="ibox float-e-margins">
	                    <div class="ibox-title">
	                        <h5>更换床位 </h5>
	                    </div>
	                    
	                     <div class="ibox-content">
	                     
	                     	<table id="tb_patient_message1"></table>
	                     
	                        <form  class="form-horizontal" id="FormEdit">
	                        	<div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-1 control-label">病例号</label>
	                                    <div class="col-sm-2 form-group">
	                                        <input id="case_id1" name="case_id" type="text" class="form-control" readonly="readonly">
	                                    </div>
	                            	<label class="col-sm-1 control-label">姓名</label>
	                                    <div class="col-sm-2 form-group">
	                                        <input disabled="disabled" id="patient_name1" name="patient_name" type="text" class="form-control" readonly="readonly">
	                                    </div>	                                
	                            </div>
	                            <div class="hr-line-dashed"></div>
	                             <div class="form-group"> 	                            	
	                                <label class="col-sm-2 control-label">目前科室 &nbsp;</label>
										<div class="col-sm-2 form-group">
										<select disabled="disabled" id="deparment_id" name="deparment_id" style="width: 50px;" class="selectpicker" data-size="5" >
					    				</select>
					    			</div>
				    				<label class="col-sm-2 control-label">目前房间&nbsp;   </label>
				    					<div class="col-sm-2 form-group">
										<select disabled="disabled" id="room_id" name="room_id" class="selectpicker" data-size="5"  >										
										</select>
										</div>
									<label class="col-sm-2 control-label">目前床位  &nbsp; </label>
										<div class="col-sm-2 form-group">
										<select disabled="disabled" id="bed_id" name="bed_id" class="selectpicker" data-size="5"  >	
										</select>
										</div>
									<label class="col-sm-2 control-label">目前主治医生</label>
	    	                        	<div class="col-sm-2 form-group">
										<select disabled="disabled" id="doctor_id" name="doctor_id" class="selectpicker" data-size="5"  >	
										</select>
										</div>		
	                            </div>
	                            <div class="form-group"> 
	                            <label class="col-sm-2 control-label">入院诊断1</label>
	                                        <div class="col-sm-4 form-group">
	                                            <input disabled="disabled" id="diagnosis_a1" name="diagnosis_a" class="form-control" >
	                                        </div>
	                            <label class="col-sm-2 control-label">入院状态</label>
	                                    	<div class="col-sm-2 form-group">
	                                    	<select disabled="disabled" id="ruyuan_state1" name="ruyuan_state" class="selectpicker" data-size="5" >
					    						<option value="">请选择</option>
					    						<option value="危">危</option>
											    <option value="急">急</option>
											    <option value="一般">一般</option> 
											    <option value="其他">其他</option>  
											</select>
											</div>		          
	                            <label class="col-sm-2 control-label"> &nbsp; &nbsp;护理级别 &nbsp;  </label>
	                            			<div class="col-sm-2 form-group">
	                                    	<select disabled="disabled" id="nurse_level1" name="nurse_level" class="selectpicker " data-size="5" >
					    						<option value="">请选择</option>
					    						<option value="特殊护理">特殊护理</option>
											    <option value="一级护理">一级护理</option>
											    <option value="二级护理">二级护理</option> 
											    <option value="三级护理">三级护理</option>  
											</select>
											</div>
	                            </div>
	                            <div class="form-group"> 
	                            <label class="col-sm-2 control-label">入院诊断2</label>
	                                        <div class="col-sm-4 form-group">
	                                            <input disabled="disabled" id="diagnosis_b1" name="diagnosis_b" class="form-control" >
	                                        </div>	                           
	                  		
									<label class="col-sm-2 control-label">入院日期</label>
										<div class="col-sm-2 form-group">
											<input disabled="disabled" style="width: 100px;" id="ruyuan_time1" name="ruyuan_time"  type="text" class="form-control" >
										</div>									
	                            </div> 	                            
	                            <div class="form-group"> 	                            	
	                                <label class="col-sm-2 control-label">科室 &nbsp;</label>
										<div class="col-sm-2 form-group">
										<select  id="deparment_id2" name="deparment_id" style="width: 50px;" class="selectpicker" data-size="5" >
					    				</select>
					    			</div>
				    				<label class="col-sm-2 control-label">房间&nbsp;   </label>
				    					<div class="col-sm-2 form-group">
										<select  id="room_id2" name="room_id" class="selectpicker" data-size="5"  >										
										</select>
										</div>
									<label class="col-sm-2 control-label">床位  &nbsp; </label>
										<div class="col-sm-2 form-group">
										<select  id="bed_id2" name="bed_id" class="selectpicker" data-size="5"  >	
										</select>
										</div>
									<label class="col-sm-2 control-label">主治医生</label>
	    	                        	<div class="col-sm-2 form-group">
										<select  id="doctor_id2" name="doctor_id" class="selectpicker" data-size="5"  >	
										</select>
										</div>		
	                            </div>                              
	                           
	                           	
	                                    <div class="col-sm-3 form-group">
	                                        <input  id="patient_id3" name="patient_id" type="hidden" class="form-control" >
	                                    </div>
	                            	
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                                <div class="col-sm-4 col-sm-offset-10 ">
	                                    <button id="btn_case" class="btn btn-primary" type="button">提交</button>
	                                    <button id="btn_cancel3" class="btn btn-white" data-dismiss="modal">取消</button>
	                                </div>
	                            </div>
	                        </form>
	                    </div> 
	                </div>
	            </div>
	        </div>
	    </div> 
	    
	   		
	   		
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
    
    $(document).ready(function(){

    	if("${USER.role_id}" == 4){
			$('#txt_search_departmentid').attr("disabled","disabled");
		}
    
    });
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
                
                if("${USER.role_id}" == 4){
        			$('#txt_search_departmentid').selectpicker('val',("${USER.deparment_id}"));
        			$('#tb_patient_message').bootstrapTable('refreshOptions',{pageNumber:1,pageSize:10});
        		}else{
        			 $('#txt_search_departmentid').selectpicker('val',(''));
        		}
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
	var doctorrr_id = 0;
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
				url: '/hospital/selectPatient_Use_messageAll', //请求后台的URL（*）
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
					title: '主治医生',
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
						$("#btn_edit").attr("disabled","disabled");
						$("#btn_add_payment").attr("disabled","disabled");
						$("#btn_assignment").attr("disabled","disabled");
					}
				},
				onUncheck: function (row, $element) {			
					count = count-1;
					if(count<=1){
						$("#btn_edit").removeAttr("disabled");
						$("#btn_add_payment").removeAttr("disabled");
						$("#btn_assignment").removeAttr("disabled");
					}
					//console.log(count);    
				},
				//当全选行时触发，所需的参数如下
				onCheckAll: function (row) {
					$("#btn_edit").attr("disabled","disabled");
					$("#btn_add_payment").attr("disabled","disabled");
					$("#btn_assignment").attr("disabled","disabled");
				},
				onUncheckAll: function (row) {
					count = 0;
					$("#btn_edit").removeAttr("disabled");
					$("#btn_add_payment").removeAttr("disabled");
					$("#btn_assignment").removeAttr("disabled");
				},
				//当重置（reset）表的视图时触发
				onResetView: function () {
					count = 0;
					$("#btn_edit").removeAttr("disabled");
					$("#btn_add_payment").removeAttr("disabled");
					$("#btn_assignment").removeAttr("disabled");
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
						select_deparment_id: $("#txt_search_departmentid").val(),
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
				if("${USER.role_id}" == 4){
					$('#txt_search_departmentid').selectpicker('val',("${USER.deparment_id}"));
				}else{
					 $('#txt_search_departmentid').selectpicker('val',(''));
				}
				
				 $("#txt_search_departmentname").val("");
				 $("#txt_search_patientname").val("");
				 $("#start_ruyuan_time").val("");
				 $("#end_ruyuan_time").val("");
				 $('#tb_patient_message').bootstrapTable('refreshOptions',{pageNumber:1,pageSize:10});
			    });
			//修改按钮					
			$(document).on('click', "#btn_edit",function(){									
				var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
				var row = arrselectedData[0];						
				if (arrselectedData.length <= 0) {
                    alert("请选中一行");
                }else{
                	
                	 /* if(row.room != null){
 						rrrrom_id = row.room.room_id;;
 						bbbbed_id = row.bed.bed_id;
 						var a = row.room.room_id;
 						var b = row.bed.bed_id;
 						var c = row.deparment_id; 
 						//修改时初始化已选中的值
 						getDeparmentlList1(c);
 					}else{
 						getDeparmentlList1(-2);
 						rrrrom_id = -2;
 						bbbbed_id = -2;
 					} */
 					var c = row.deparment.deparment_id;
 					rrrrom_id = row.room.room_id;
 					bbbbed_id = row.bed.bed_id;
 					doctorrr_id = row.doctor_id;
 					getDeparmentlList1(c);
 					getDeparmentlList();
 					$("#myModaEdit").modal('show');	
 					$('#case_id1').val(row.case_id);
 					$('#patient_name1').val(row.patient.patient_name);                	
                	$('#diagnosis_a1').val(row.diagnosis_a);
                	$('#diagnosis_b1').val(row.diagnosis_b);
                	$('#patient_id3').val(row.patient.patient_id);
                	$('#marital_state1').selectpicker('val',(row.patient.marital_state));	//传值过来并且默认选中对应的值 
               		//$('#deparment_id').selectpicker('val',(row.deparment.deparment_id));
               		$('#ruyuan_time1').val(changeDateFormat1(row.ruyuan_time));
               		$('#ruyuan_state1').selectpicker('val',(row.ruyuan_state));
               		$('#nurse_level1').selectpicker('val',(row.nurse_level));               		
                	console.log(row);
                }
				});						
			
				 //模态框取消修改并刷新表格
			/* $(document).on('click', "#btn_cancel1",function(){
				$("#tb_patient_message").bootstrapTable('refresh');	
				});*/
			$(document).on('click', "#btn_cancel3",function(){
				$("#tb_patient_message").bootstrapTable('refresh');
				//$('#doctor_id.selectpicker').selectpicker('val',-1);
				//$('#room_id.selectpicker').selectpicker('val',-1);
				//$('#bed_id.selectpicker').selectpicker('val',-1);
				$('#doctor_id2.selectpicker').selectpicker('val',-1);
				$('#deparment_id2.selectpicker').selectpicker('val','');
				//$('#nurse_level.selectpicker').selectpicker('val',-1);
				});	 					
		};

		return oInit;
	};
	
	
	
	function getDeparmentlList1(c) {//获取下拉科室列表
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
		//$('#deparment_id.selectpicker').append("<option value=-2>未分配</option>");
		$('#deparment_id.selectpicker').append("<option value=-1>请选择科室</option>");
                $.each(data.data, function (total) {
                // alert(i);
                // $("<option value='" + data.data[i].schoolno + "'>" + data.data[i].schoolname + "</option>")
                //    .appendTo("#schoolno.selectpicker");
                    $('#deparment_id.selectpicker').append("<option value=" + data.data[total].deparment_id + ">" + data.data[total].deparment_name + "</option>");
                });	                
              //默认值选中
                $('#deparment_id').selectpicker('val',c);
                $('#deparment_id').selectpicker('refresh');
                $('#deparment_id').selectpicker('render');
            },
            error: function (data) {
                alert("查询失败" + data);
            }
        });				
    };
  
    $(document).on('change', "#deparment_id",function(){
		  //点选之后取自定义属性的值： 
		 var optiona=$("#deparment_id option:selected").val();
		 	//把数据显示到输入框	
		 	getRoomList1(optiona,rrrrom_id);
		 	getDoctorList1(optiona,doctorrr_id);
		 	//getbedList1(-1);		 	
		 	console.log("room_id-----"+rrrrom_id);
	});
    	
  
    function getRoomList1(optiona,a) {
        $.ajax({
            url: "/hospital/selectRoomAllid",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
			// 数据发送方式
            type: "get",
			// 接受数据格式
            dataType: "json",
			// 要传递的数据
            data: {"deparment_id":optiona},
			// 回调函数，接受服务器端返回给客户端的值，即result值
            success: function (data) {
			//清空下拉框数据	
				$('#room_id.selectpicker').empty();
				//$('#room_id.selectpicker').append("<option value=-2>未分配</option>");
				$('#room_id.selectpicker').append("<option value=-1>请选择科室</option>");
                $.each(data.data, function (total) {
                    $('#room_id.selectpicker').append("<option value=" + data.data[total].room_id + ">" + data.data[total].room_name + "</option>");
                });
                
                
                //默认值选中
                $('#room_id').selectpicker('val',a);
                
                $('#room_id').selectpicker('refresh');
                $('#room_id').selectpicker('render');
            },
            error: function (data) {
                alert("查询失败" + data);
            }
        });					
    };
    
    
    
  //获取下拉主治医生列表
	function getDoctorList(optiona) {
        $.ajax({
            url: "/hospital/selectDoctor",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
			// 数据发送方式
            type: "get",
			// 接受数据格式
            dataType: "json",
			// 要传递的数据
            data: {
            	"deparment_id" : optiona,
            	"role_id" : 5,
            },
			// 回调函数，接受服务器端返回给客户端的值，即result值
            success: function (data) {
			//清空下拉框数据	
				$('#doctor_id.selectpicker').empty();
				$('#doctor_id.selectpicker').append("<option value=-1>请选择医生</option>");
                $.each(data.data, function (total) {
                    $('#doctor_id.selectpicker').append("<option value=" + data.data[total].user_work_id + ">" + data.data[total].user_name + "</option>");
                });		                
                $('#doctor_id').selectpicker('refresh');
            },
            error: function (data) {
                alert("查询失败" + data);
            }
        });					
    };
    function getDoctorList1(optiona,d) {
        $.ajax({
            url: "/hospital/selectDoctor",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
			// 数据发送方式
            type: "get",
			// 接受数据格式
            dataType: "json",
			// 要传递的数据
            data: {
            	"deparment_id" : optiona,
            	"role_id" : 5,
            },
			// 回调函数，接受服务器端返回给客户端的值，即result值
            success: function (data) {
			//清空下拉框数据	
				$('#doctor_id.selectpicker').empty();
				$('#doctor_id.selectpicker').append("<option value=-1>请选择医生</option>");
                $.each(data.data, function (total) {
                    $('#doctor_id.selectpicker').append("<option value=" + data.data[total].user_work_id + ">" + data.data[total].user_name + "</option>");
                });
              //默认值选中
                $('#doctor_id').selectpicker('val',d);
                
                $('#doctor_id').selectpicker('refresh');
                $('#doctor_id').selectpicker('render');
            },
            error: function (data) {
                alert("查询失败" + data);
            }
        });					
    };
    $(document).on('change', "#room_id",function(){
		  //点选之后取自定义属性的值： 
		 var optiona=$("#room_id option:selected").val();				 
		 	//获取下拉列表
		 getbedList1(optiona,bbbbed_id);
		 console.log("bed_id-----"+bbbbed_id+"----"+optiona);
	});
    
  //获取下拉床位列表
	function getbedList1(optiona,b) {
        $.ajax({
            url: "/hospital/selectBedAllid",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
			// 数据发送方式
            type: "get",
			// 接受数据格式
            dataType: "json",
			// 要传递的数据
            data: {"room_id":optiona},
			// 回调函数，接受服务器端返回给客户端的值，即result值
            success: function (data) {
			//清空下拉框数据	
				$('#bed_id.selectpicker').empty();
				//$('#bed_id.selectpicker').append("<option value=-2>未分配</option>");
				$('#bed_id.selectpicker').append("<option value=-1>请选择科室</option>");
                $.each(data.data, function (total) {
                    $('#bed_id.selectpicker').append("<option value=" + data.data[total].bed_id + ">" + data.data[total].bed_name + "</option>");
                });		           
                
                //默认值选中
                $('#bed_id').selectpicker('val',b);
                
                $('#bed_id').selectpicker('refresh');
                $('#bed_id').selectpicker('render');
            },
            error: function (data) {
                alert("查询失败" + data);
            }
        });					
    };
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
		//alert(data.data);
		$('#deparment_id2.selectpicker').append("<option value=''>请选择科室</option>");
                $.each(data.data, function (total) {
                // alert(i);
                // $("<option value='" + data.data[i].schoolno + "'>" + data.data[i].schoolname + "</option>")
                //    .appendTo("#schoolno.selectpicker");
                    $('#deparment_id2.selectpicker').append("<option value=" + data.data[total].deparment_id + ">" + data.data[total].deparment_name + "</option>");
                });	                
                $('#deparment_id2').selectpicker('refresh');
            },
            error: function (data) {
                alert("查询失败" + data);
            }
        });				
    };
    $(document).on('change', "#deparment_id2",function(){
		  //点选之后取自定义属性的值： 
		 var optiona=$("#deparment_id2 option:selected").val();
		 //$('.selectpicker').selectpicker('val', '列表id');
		 	//$('#dd').val(optiona);
		 	//把数据显示到输入框
		 	getbedList(-1);
		 	//getbedList1(-1);
		 	getRoomList(optiona);
		 	getDoctorList(optiona);
	});
    function getRoomList(optiona) {
        $.ajax({
            url: "/hospital/selectUseRoomAll",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
			// 数据发送方式
            type: "get",
			// 接受数据格式
            dataType: "json",
			// 要传递的数据
            data: {"deparment_id":optiona},
			// 回调函数，接受服务器端返回给客户端的值，即result值
            success: function (data) {
			//清空下拉框数据	
				$('#room_id2.selectpicker').empty();
				$('#room_id2.selectpicker').append("<option value=''>请选择房间</option>");
                $.each(data.data, function (total) {
                    $('#room_id2.selectpicker').append("<option value=" + data.data[total].room_id + ">" + data.data[total].room_name + "</option>");
                });		                
                $('#room_id2').selectpicker('refresh');
            },
            error: function (data) {
                alert("查询失败" + data);
            }
        });					
    };
    function getDoctorList(optiona) {
        $.ajax({
            url: "/hospital/selectDoctor",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
			// 数据发送方式
            type: "get",
			// 接受数据格式
            dataType: "json",
			// 要传递的数据
            data: {
            	"deparment_id" : optiona,
            	"role_id" : 5,
            },
			// 回调函数，接受服务器端返回给客户端的值，即result值
            success: function (data) {
			//清空下拉框数据	
				$('#doctor_id2.selectpicker').empty();
				$('#doctor_id2.selectpicker').append("<option value=''>请选择医生</option>");
                $.each(data.data, function (total) {
                    $('#doctor_id2.selectpicker').append("<option value=" + data.data[total].user_work_id + ">" + data.data[total].user_name + "</option>");
                });		                
                $('#doctor_id2').selectpicker('refresh');
            },
            error: function (data) {
                alert("查询失败" + data);
            }
        });					
    };
    function getbedList(optiona) {
        $.ajax({
            url: "/hospital/selectUseBedAllid",//写你自己的方法，返回map，我返回的map包含了两个属性：data：集合，total：集合记录数量，所以后边会有data.data的写法。。。
			// 数据发送方式
            type: "get",
			// 接受数据格式
            dataType: "json",
			// 要传递的数据
            data: {"room_id":optiona},
			// 回调函数，接受服务器端返回给客户端的值，即result值
            success: function (data) {
			//清空下拉框数据	
				$('#bed_id2.selectpicker').empty();
				$('#bed_id2.selectpicker').append("<option value=''>请选择房间</option>");
                $.each(data.data, function (total) {
                    $('#bed_id2.selectpicker').append("<option value=" + data.data[total].bed_id + ">" + data.data[total].bed_name + "</option>");
                });		                
                $('#bed_id2').selectpicker('refresh');
                $('#bed_id2').selectpicker('render');
            },
            error: function (data) {
                alert("查询失败" + data);
            }
        });					
    };
    $(document).on('change', "#room_id2",function(){
		  //点选之后取自定义属性的值： 
		 var optiona=$("#room_id2 option:selected").val();				 
		 	//获取下拉列表
		 	getbedList(optiona);
		 	//getbedList1(optiona);
		 	console.log(optiona); 
	});
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
	$(document).on('click', "#btn_case",function(){
		if(phoneValidate().form()) {
			//当属性设置为"disabled"时，提交表单时，select的值无法传递，提交前移除disabled属性
			//$("#patient_id").removeAttr("disabled");
			  //通过表单验证，以下编写自己的代码
			  var param = $("#FormEdit").serializeArray();
				         $.ajax({
							url: "/hospital/updatePatient_message",
							type:"post",
							data:param,
							 success: function (data) {
								 swal({title:"更换成功",
			                            text:"",
			                            type:"success",
			                            //timer:2000,
			                            });
				                $('#tb_patient_message').bootstrapTable('refresh');
				                $('#doctor_id2.selectpicker').selectpicker('val',-1);
								$('#deparment_id2.selectpicker').selectpicker('val','');
				                $("#myModaEdit").modal('hide');
					         },
					         error:function(){
					        	 swal({title:"更换失败",
			                            text:"",
			                            type:"error",
			                            //timer:2000,
			                            });
							 }

						});	   
						console.log(param);
			 } else {
			  //校验不通过，什么都不用做，校验信息已经正常显示在表单上
				console.log("校验不通过");
			 };					
		});	
    //验证
	function phoneValidate(){
	/*关键在此增加了一个return，返回的是一个validate对象，这个对象有一个form方法，返回的是是否通过验证(true,false)*/
		return $("#FormEdit").validate({
		    rules: {
		    	deparment_id : {
		       		 required : true,
		       		},
		       		room_id : {
		       		 required : true,
		       		},
		       		bed_id : {
		       		 required : true,
		       		},	
		       		doctor_id : {
		       		 required : true,
		       		},
		     },
		  /*  messages: {
			    
	  			}, */
			});
	};		    
    </script>  
</body>

</html>