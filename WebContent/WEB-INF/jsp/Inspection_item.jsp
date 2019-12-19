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
		.changeColor{
           /*  background-color: #31b0d5  !important; */
            color: #31b0d5;
        }
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
		
		<div id="toolbar" class="btn-group">					
	   		<button id="btn_add" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-pencil" ></span>项目新增
	          	</button>
	         <button id="btn_edit" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-pencil" ></span>项目修改
	          	</button>
	         <!-- <button id="btn_del" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-pencil" ></span>项目删除
	          	</button>  -->	 	
    	</div>
    	<div id="toolbar2" class="btn-group">					
	   		<button id="btn_add2" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-pencil" ></span>项目新增
	          	</button>
	         <button id="btn_edit2" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-pencil" ></span>项目修改
	          	</button>
	         <!-- <button id="btn_del" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-pencil" ></span>项目删除
	          	</button>  -->	 	
    	</div>
   		<div class="col-sm-6"> 
   			<label class="mr-sm-2" for="inlineFormCustomSelect">检验项目信息</label>
   			 <table id="tb_patient_message"></table>
   		</div>
   		<div class="col-sm-6"> 
   		<input type="hidden" id="iiiid" name="iiiid" type="text" class="form-control" >
   		<label class="mr-sm-2" for="inlineFormCustomSelect">项目内容信息</label>
   			 <table id="tb_patient_message2"></table>
   			 <label class="mr-sm-2" for="inlineFormCustomSelect">检验项目说明</label>
   			 <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
   		</div>
   		
   		<div class="modal fade bs-example-modal-sm" id="myModaAdd" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-sm" style=" 
			   
			    width: 70%;">
					
						<div class="modal-content">
							<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							<h4 class="modal-title">检验项目新增</h4>
							</div>
							
							<div class="ibox-content">
	                     
	                     	<!-- <table id="tb_patient_message1"></table> -->
	                     	<form  class="form-horizontal" id="Formadd_payment">
	                        	<div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-3 control-label">项目名称</label>
	                                    <div class="col-sm-4 form-group">
	                                        <input id="Inspection_item_name" name="Inspection_item_name" type="text" class="form-control" >
	                                    </div>
	                                    
	                            </div>	
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-3 control-label">拼音码</label>
	                                    <div class="col-sm-3 form-group">
	                                        <input  id="Inspection_item_py" name="Inspection_item_py" type="text" class="form-control"   >
	                                    </div>
	                            	 <label class="col-sm-3 control-label">价格</label>
										<div class="col-sm-3 form-group" >
											<input  id="Inspection_item_pirce" name="Inspection_item_pirce" type="text"  class="form-control" >
										</div> 
	                            </div>
	                            <div class="form-group">
	                            	<label class="col-sm-3 control-label">采集要求</label>
										<div class="col-sm-5 form-group" >
											<input  id="Inspection_item_demand" name="Inspection_item_demand" type="text"  class="form-control" >
										</div>
	                            </div>                                
	                           
	                           
	                            	
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                                <div class="col-sm-4  ">
	                                    <button id="btn_payment" class="btn btn-primary" type="button" formtarget="_blank">保存</button>
	                                    <button id="btn_cancel1" class="btn btn-white" data-dismiss="modal">取消</button>
	                                </div>
	                            </div>
	                        </form>
	                    </div> 
							
							
						</div>
					</div>
				</div>
		<div class="modal inmodal fade" id="myModaAdd1" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-sm" style=" margin-left: 2%;
			    margin-right: 2%;
			    width: 95%;">
					
						<div class="modal-content">
							<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							<h4 class="modal-title">检验项目内容新增</h4>
							</div>
							
							<div class="ibox-content">
	                     
	                     	<!-- <table id="tb_patient_message1"></table> -->
	                     	<form  class="form-horizontal" id="Formadd_payment1">
	                        	<div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">项目名称</label>
	                                    <div class="col-sm-4 form-group">
	                                        <input id="Inspection_item_list_name" name="Inspection_item_list_name" type="text" class="form-control" >
	                                    </div>
	                                    <div class="col-sm-4 form-group">
	                                        <input type="hidden"  id="Inspection_item_id2" name="Inspection_item_id" type="text" class="form-control" >
	                                    </div>
	                                    
	                            </div>	
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">拼音码</label>
	                                    <div class="col-sm-3 form-group">
	                                        <input  id="Inspection_item_list_py" name="Inspection_item_list_py" type="text" class="form-control"   >
	                                    </div>
	                            	 <label class="col-sm-2 control-label">项目简称</label>
										<div class="col-sm-3 form-group" >
											<input  id="Inspection_item_list_abbr" name="Inspection_item_list_abbr" type="text"  class="form-control" >
										</div>
									 <label class="col-sm-2 control-label">单位</label>
										<div class="col-sm-3 form-group" >
											<input  id="Inspection_item_list_unit" name="Inspection_item_list_unit" type="text"  class="form-control" >
										</div>	 
	                            </div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">参考值上限</label>
										<div class="col-sm-3 form-group" >
											<input  id="Inspection_item_list_upper_limt" name="Inspection_item_list_upper_limt" type="text"  class="form-control" >
										</div>
									<label class="col-sm-2 control-label">参考值下限</label>
										<div class="col-sm-3 form-group" >
											<input  id="Inspection_item_list_lower_limit" name="Inspection_item_list_lower_limit" type="text"  class="form-control" >
										</div>	
									<label class="col-sm-2 control-label">其他参考值</label>
										<div class="col-sm-3 form-group" >
											<input  id="Inspection_item_list_other_limit" name="Inspection_item_list_other_limit" type="text"  class="form-control" >
										</div>		
	                            </div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">项目说明</label>
										<div class="col-sm-5 form-group" >
											<input  id="Inspection_item_list_introduce" name="Inspection_item_list_introduce" type="text"  class="form-control" >
										</div>
	                            </div>                                
	                           
	                           
	                            	
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                                <div class="col-sm-4 col-sm-offset-10 ">
	                                    <button id="btn_payment2" class="btn btn-primary" type="button" formtarget="_blank">保存</button>
	                                    <button id="btn_cancel1" class="btn btn-white" data-dismiss="modal">取消</button>
	                                </div>
	                            </div>
	                        </form>
	                    </div> 
							
							
						</div>
					</div>
				</div>		
				
				
		<div class="modal inmodal fade" id="myModaEdit" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-sm" style=" margin-left: 2%;
			    margin-right: 2%;
			    width: 95%;">
					
						<div class="modal-content">
							<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							<h4 class="modal-title">检验项目修改</h4>
							</div>
							
							<div class="ibox-content">
	                     
	                     	<!-- <table id="tb_patient_message1"></table> -->
	                     	<form  class="form-horizontal" id="Formedit_payment">
	                        	<div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">项目名称</label>
	                                    <div class="col-sm-4 form-group">
	                                        <input id="Inspection_item_name1" name="Inspection_item_name" type="text" class="form-control" >
	                                    </div>
	                                    <div class="col-sm-3 form-group">
	                                        <input type="hidden" id="Inspection_item_id1" name="Inspection_item_id" type="text" class="form-control"   >
	                                    </div>
	                            </div>	
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">拼音码</label>
	                                    <div class="col-sm-3 form-group">
	                                        <input  id="Inspection_item_py1" name="Inspection_item_py" type="text" class="form-control"   >
	                                    </div>
	                            	 <label class="col-sm-2 control-label">价格</label>
										<div class="col-sm-3 form-group" >
											<input  id="Inspection_item_pirce1" name="Inspection_item_pirce" type="text"  class="form-control" >
										</div> 
	                            </div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">采集要求</label>
										<div class="col-sm-5 form-group" >
											<input  id="Inspection_item_demand1" name="Inspection_item_demand" type="text"  class="form-control" >
										</div>
	                            </div>                                
	                           
	                           
	                            	
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                                <div class="col-sm-4 col-sm-offset-10 ">
	                                    <button id="btn_payment_edit" class="btn btn-primary" type="button" formtarget="_blank">保存</button>
	                                    <button id="btn_cancel1" class="btn btn-white" data-dismiss="modal">取消</button>
	                                </div>
	                            </div>
	                        </form>
	                    </div> 
							
							
						</div>
					</div>
				</div>
				
				
				
				<div class="modal inmodal fade" id="myModaEdit2" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-sm" style=" margin-left: 2%;
			    margin-right: 2%;
			    width: 95%;">
					
						<div class="modal-content">
							<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							<h4 class="modal-title">检验项目内容修改</h4>
							</div>
							
							<div class="ibox-content">
	                     
	                     	<!-- <table id="tb_patient_message1"></table> -->
	                     	<form  class="form-horizontal" id="Formedit_payment2">
	                        	<div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">项目名称</label>
	                                    <div class="col-sm-4 form-group">
	                                        <input id="Inspection_item_list_name3" name="Inspection_item_list_name" type="text" class="form-control" >
	                                    </div>
	                                    <div class="col-sm-4 form-group">
	                                        <input type="hidden" id="Inspection_item_id3" name="Inspection_item_id" type="text" class="form-control" >
	                                    </div>
	                                    <div class="col-sm-4 form-group">
	                                        <input type="hidden" id="Inspection_item_list_id3" name="Inspection_item_list_id" type="text" class="form-control" >
	                                    </div>
	                                    
	                            </div>	
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">拼音码</label>
	                                    <div class="col-sm-3 form-group">
	                                        <input  id="Inspection_item_list_py3" name="Inspection_item_list_py" type="text" class="form-control"   >
	                                    </div>
	                            	 <label class="col-sm-2 control-label">项目简称</label>
										<div class="col-sm-3 form-group" >
											<input  id="Inspection_item_list_abbr3" name="Inspection_item_list_abbr" type="text"  class="form-control" >
										</div>
									 <label class="col-sm-2 control-label">单位</label>
										<div class="col-sm-3 form-group" >
											<input  id="Inspection_item_list_unit3" name="Inspection_item_list_unit" type="text"  class="form-control" >
										</div>	 
	                            </div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">参考值上限</label>
										<div class="col-sm-3 form-group" >
											<input  id="Inspection_item_list_upper_limt3" name="Inspection_item_list_upper_limt" type="text"  class="form-control" >
										</div>
									<label class="col-sm-2 control-label">参考值下限</label>
										<div class="col-sm-3 form-group" >
											<input  id="Inspection_item_list_lower_limit3" name="Inspection_item_list_lower_limit" type="text"  class="form-control" >
										</div>	
									<label class="col-sm-2 control-label">其他参考值</label>
										<div class="col-sm-3 form-group" >
											<input  id="Inspection_item_list_other_limit3" name="Inspection_item_list_other_limit" type="text"  class="form-control" >
										</div>		
	                            </div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">项目说明</label>
										<div class="col-sm-5 form-group" >
											<input  id="Inspection_item_list_introduce3" name="Inspection_item_list_introduce" type="text"  class="form-control" >
										</div>
	                            </div>                                
	                           
	                           
	                            	
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                                <div class="col-sm-4 col-sm-offset-10 ">
	                                    <button id="btn_payment_edit2" class="btn btn-primary" type="button" formtarget="_blank">保存</button>
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
    <script type="text/javascript" src="js/bootstrap-table-export.js" ></script>
    <script type="text/javascript" src="js/tableExport.min.js" ></script>
    <script type="text/javascript" src="js/xlsx.core.min.js" ></script>
    <script type="text/javascript" src="js/FileSaver.min.js" ></script>
    <script type="text/javascript" src="js/plugins/sweetalert/sweetalert.min.js"></script>
    <script>
        $(document).ready(function(){$(".i-checks").iCheck({checkboxClass:"icheckbox_square-green",radioClass:"iradio_square-green",})});
    </script>
    <script type="text/javascript">
    
    $(document).ready(function (){
    		
    		$("#Inspection_item_id2").val(1);
    		$("#iiiid").val(1);
    });
    
    
    //记录点选择框次数
    var count = 0;
	var rrrrom_id = 0;
	var bbbbed_id = 0;
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
				url: '/hospital/select_Inspection_item', //请求后台的URL（*）
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
				height: $(window).height()*1,
				/*  //>>>>>>>>>>>>>>导出excel表格设置
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
			      //导出excel表格设置<<<<<<<<<<<<<<<< */			
				columns: [{
					checkbox: true
				}, {
					field: 'inspection_item_id',
					title: '项目编号'
				}, {
					field: 'inspection_item_name',
					title: '项目名'
				}, {
					field: 'inspection_item_pirce',
					title: '价格'
				}, {
					field: 'inspection_item_demand',
					title: '采集要求'
				}],
				//事件处理
				onClickRow:function (row,$element) {
					$('.info').removeClass('info');//移除class
					$($element).addClass('info');//添加class
					  /* if($(checkbox).is(':checked')) {
						$(checkbox).prop("checked",false);
						}else{
						$(checkbox).prop("checked",true);
						} */  
						$("#Inspection_item_id2").val(row.inspection_item_id);
						$("#iiiid").val(row.inspection_item_id);
						$('#tb_patient_message2').bootstrapTable('refresh');
					/* var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
					var row = arrselectedData[0];
					Inspection_item_id
	                 */
					},
				//当选择（check）此行时触发
				onCheck: function (row, $element) {	
					
					var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
					var row = arrselectedData[0];
					//console.log(row);
					
										
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
	
var TableInit2 = function() {
		
		var oTableInit2 = new Object();
		//初始化Table
		oTableInit2.Init = function() {
			$('#tb_patient_message2').bootstrapTable({
				url: '/hospital/select_Inspection_item_list', //请求后台的URL（*）
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
				showColumns: false, //是否显示所有的列
				showRefresh: true, //是否显示刷新按钮
				minimumCountColumns: 2, //最少允许的列数
				clickToSelect: true, //是否启用点击选中行
				height: 400, //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
				uniqueId: "patient_id", //每一行的唯一标识，一般为主键列
				showToggle: false, //是否显示详细视图和列表视图的切换按钮
				cardView: false, //是否显示详细视图
				detailView: false, //是否显示父子表
				/*  //>>>>>>>>>>>>>>导出excel表格设置
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
			      //导出excel表格设置<<<<<<<<<<<<<<<< */			
				columns: [{
					checkbox: true
				}, {
					field: 'inspection_item_list_abbr',
					title: '项目简称'
				}, {
					field: 'inspection_item_list_name',
					title: '项目名'
				}, {
					field: 'inspection_item_list_unit',
					title: '单位'
				}, {
					field: 'inspection_item_list_lower_limit',
					title: '参考值下限'
				}, {
					field: 'inspection_item_list_upper_limt',
					title: '参考值上限'
				}, {
					field: 'inspection_item_list_other_limit',
					title: '其他参考值'
				}],
				//事件处理
				  onClickRow:function (row,$element) {
					  $('.changeColor').removeClass('changeColor');
		                $($element).addClass('changeColor');
					/* if($(checkbox).is(':checked')) {
						$(checkbox).prop("checked",false);
						}else{
						$(checkbox).prop("checked",true);
						} */
		                console.log(row);
						$("#exampleFormControlTextarea1").val(row.inspection_item_list_introduce);
					},
				//当选择（check）此行时触发
				onCheck: function (row, $element) {	
					
					var arrselectedData = $('#tb_patient_message2').bootstrapTable('getSelections');
					var row = arrselectedData[0];
					//console.log(row);
					
										
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
		oTableInit2.queryParams = function(params) {
			
				var param = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
						pageSize: params.pageSize, //页面大小
						pageNumber: params.pageNumber, //页码
						Inspection_item_id : $("#iiiid").val(),
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
			
			
			
			
			$(document).on('click', "#btn_add",function(){													               	               	
                	$("#myModaAdd").modal('show');                	               
				});
			$(document).on('click', "#btn_add2",function(){													               	               	
            	$("#myModaAdd1").modal('show');                	               
			});
			$(document).on('click', "#btn_edit",function(){
				var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
				var row = arrselectedData[0];
				console.log(row);
				if (arrselectedData.length <= 0) {
                    alert("请选中一行");
                }else{
                	
                	$('#Inspection_item_id1').val(row.inspection_item_id);
                	$('#Inspection_item_name1').val(row.inspection_item_name);
                	$('#Inspection_item_py1').val(row.inspection_item_py);
                	$('#Inspection_item_pirce1').val(row.inspection_item_pirce);
                	$('#Inspection_item_demand1').val(row.inspection_item_demand);
                	$("#myModaEdit").modal('show');
                }
				
				
            	               	               
			});
			$(document).on('click', "#btn_edit2",function(){
				var arrselectedData = $('#tb_patient_message2').bootstrapTable('getSelections');
				var row = arrselectedData[0];
				console.log(row);
				if (arrselectedData.length <= 0) {
                    alert("请选中一行");
                }else{
                	
                	$('#Inspection_item_id3').val(row.inspection_item_id);
                	$('#Inspection_item_list_abbr3').val(row.inspection_item_list_abbr);
                	$('#Inspection_item_list_introduce3').val(row.inspection_item_list_introduce);
                	$('#Inspection_item_list_lower_limit3').val(row.inspection_item_list_lower_limit);
                	$('#Inspection_item_list_name3').val(row.inspection_item_list_name);
                	$('#Inspection_item_list_py3').val(row.inspection_item_list_py);
                	$('#Inspection_item_list_unit3').val(row.inspection_item_list_unit);
                	$('#Inspection_item_list_upper_limt3').val(row.inspection_item_list_upper_limt);
                	$('#Inspection_item_list_id3').val(row.inspection_item_list_id);
                	$('#Inspection_item_list_other_limit3').val(row.inspection_item_list_other_limit);
                	$("#myModaEdit2").modal('show');
                }
				
				
            	               	               
			});
			$(document).on('click', "#btn_payment",function(){
				
				if(moneyValidate().form()) {
					var param = $("#Formadd_payment").serializeArray();
					console.log(param);
					$.ajax({
						url: "/hospital/add_Inspection_item",
						type:"post",
						data:param,
						 success: function (data) {
							 swal({title:"添加成功",
		                            text:"",
		                            type:"success",
		                            //timer:2000,
		                            });	
							 
			                	$('#Inspection_item_name').val("");
			                	$('#Inspection_item_py').val("");
			                	$('#Inspection_item_pirce').val("");
			                	$('#Inspection_item_demand').val("");
							 
							 $('#tb_patient_message').bootstrapTable('refresh');	
			                $("#myModaAdd").modal('hide');
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
			
	$(document).on('click', "#btn_payment2",function(){
				
				if(aaValidate().form()) {
					var param = $("#Formadd_payment1").serializeArray();
					console.log(param);
					$.ajax({
						url: "/hospital/add_Inspection_item_list",
						type:"post",
						data:param,
						 success: function (data) {
							 swal({title:"添加成功",
		                            text:"",
		                            type:"success",
		                            //timer:2000,
		                            });	
			                	$('#Inspection_item_list_abbr').val("");
			                	$('#Inspection_item_list_introduce').val("");
			                	$('#Inspection_item_list_lower_limit').val("");
			                	$('#Inspection_item_list_name').val("");
			                	$('#Inspection_item_list_py').val("");
			                	$('#Inspection_item_list_unit').val("");
			                	$('#Inspection_item_list_upper_limt').val("");
			                	$('#Inspection_item_list_other_limit').val("");
			                	
							 $('#tb_patient_message2').bootstrapTable('refresh');	
			                $("#myModaAdd1").modal('hide');
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
			
			$(document).on('click', "#btn_payment_edit",function(){
				
				if(editValidate().form()) {
					var param = $("#Formedit_payment").serializeArray();
					console.log(param);
					$.ajax({
						url: "/hospital/edit_Inspection_item",
						type:"post",
						data:param,
						 success: function (data) {
							 swal({title:"修改成功",
		                            text:"",
		                            type:"success",
		                            //timer:2000,
		                            });	
							 $('#tb_patient_message').bootstrapTable('refresh');	
			                $("#myModaEdit").modal('hide');
				         },
				         error:function(){
				        	 swal({title:"修改失败",
		                            text:"",
		                            type:"error",
		                            //timer:2000,
		                            });
						 }

					});
					
					
					
				}
				
			});
			
			
		$(document).on('click', "#btn_payment_edit2",function(){
				
				if(edit2Validate().form()) {
					var param = $("#Formedit_payment2").serializeArray();
					console.log(param);
					$.ajax({
						url: "/hospital/edit_Inspection_item_list",
						type:"post",
						data:param,
						 success: function (data) {
							 swal({title:"修改成功",
		                            text:"",
		                            type:"success",
		                            //timer:2000,
		                            });	
							 $('#tb_patient_message2').bootstrapTable('refresh');	
			                $("#myModaEdit2").modal('hide');
				         },
				         error:function(){
				        	 swal({title:"修改失败",
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
					    	Inspection_item_name : {
				       		required : true,
				       		},
				       		Inspection_item_py : {
					       		required : true,
					       		},
				       		Inspection_item_pirce : {
					       		required : true,
					       		},
				       		Inspection_item_demand : {
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
				function editValidate(){
					/*关键在此增加了一个return，返回的是一个validate对象，这个对象有一个form方法，返回的是是否通过验证(true,false)*/
						return $("#Formedit_payment").validate({
						    rules: {				    	
						    	Inspection_item_name : {
					       		required : true,
					       		},
					       		Inspection_item_py : {
						       		required : true,
						       		},
					       		Inspection_item_pirce : {
						       		required : true,
						       		},
					       		Inspection_item_demand : {
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
					
					
					function aaValidate(){
						
						jQuery.validator.addMethod("amountLimit", function(value, element) {
							var returnVal = false; 
							var amountStart = $("#Inspection_item_list_lower_limit").val();
							var amountEnd = $("#Inspection_item_list_upper_limt").val();
							if(amountStart=="" && amountEnd==""){
								returnVal = true;
															
							}else if(parseFloat(amountEnd)>parseFloat(amountStart)){
							returnVal = true;
							}
							return returnVal;
							},"参考值上限必须大于参考值下限"); 
						/*关键在此增加了一个return，返回的是一个validate对象，这个对象有一个form方法，返回的是是否通过验证(true,false)*/
							return $("#Formadd_payment1").validate({
							    rules: {				    	
							    	Inspection_item_list_name : {
						       		required : true,
						       		},
						       		Inspection_item_list_abbr : {
							       		required : true,
							       		},
							       		Inspection_item_list_unit : {
							       		required : true,
							       		},
							       		Inspection_item_list_py : {
							       		required : true,
							       		},
							       		Inspection_item_list_upper_limt : {
								       		//required : true,
								       		number:true,
								       		amountLimit:true,
								       		},
								       		Inspection_item_list_lower_limit : {
								       			number:true,
									       		//required : true,
									       		},
									       		Inspection_item_list_introduce : {
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
			
						
						function edit2Validate(){
							
							jQuery.validator.addMethod("amountLimit", function(value, element) {
								var returnVal = false; 
								var amountStart = $("#Inspection_item_list_lower_limit3").val();
								var amountEnd = $("#Inspection_item_list_upper_limt3").val();
								if(amountStart=="" && amountEnd==""){
									returnVal = true;
																
								}else if(parseFloat(amountEnd)>parseFloat(amountStart)){
								returnVal = true;
								}
								return returnVal;
								},"参考值上限必须大于参考值下限"); 						
							/*关键在此增加了一个return，返回的是一个validate对象，这个对象有一个form方法，返回的是是否通过验证(true,false)*/
								return $("#Formedit_payment2").validate({
								    rules: {				    	
								    	Inspection_item_list_name : {
							       		required : true,
							       		},
							       		Inspection_item_list_abbr : {
								       		required : true,
								       		},
								       		Inspection_item_list_unit : {
								       		required : true,
								       		},
								       		Inspection_item_list_py : {
								       		required : true,
								       		},
								       		Inspection_item_list_upper_limt : {
									       		//required : true,
									       		number:true,
									       		amountLimit:true,
									       		},
									       		Inspection_item_list_lower_limit : {
									       			number:true,
										       		//required : true,
										       		},
										       		Inspection_item_list_introduce : {
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
								
		};

		return oInit;
	};
	
 
    </script>
</body>

</html>