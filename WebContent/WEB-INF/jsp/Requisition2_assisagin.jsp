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
	<link rel="stylesheet" href="css/jquery.bootstrap-touchspin.min.css" />
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
 	<script src="js/bootstrap-suggest.js"></script>
    <script src="js/pace.js"></script>
    <script src="js/jquery.bootstrap-touchspin.min.js" ></script>
    <script type="text/javascript" src="js/plugins/sweetalert/sweetalert.min.js"></script>
	<style>
		
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
   				 width: 110px;
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
			.col-sm-1{
				width: 7%;
			}
			.col-sm-2{
				width: 11%;
			}
			.col-sm-3{
				width: 16%;
			}
			.col-sm-4{
				width: 20%;
			}
			.col-sm-5{
				width: 30%;
			}
	</style>
</head>

<body>

	<div style="background: rgb(223,237,255);" id="block1">
			
			
			
	        <div id="block2">
		        <div  class="form-horizontal" style="background: rgb(195,221,255);">
					<div id="seacher" style=" margin-top: 5px; height: 30.7px;" >
					<label class="col-sm-1 control-label">搜索</label>
							<div id="yongyao">
							<div class="col-sm-4 form-group">
                            	<select  id="cate" name="cate" class="selectpicker" data-size="5" >
		    						<option value="0">全部</option>
		    						<option value="1">抗生素类药品 </option>
								    <option value="2">心脑血管用药</option>
								    <option value="3">消化系统用药</option>
								    <option value="4">呼吸系统用药</option>
								    <option value="5">泌尿系统用药</option>
								    <option value="6">血液系统用药</option>
								    <option value="7">五官科用药</option>
								    <option value="8">抗风湿类用药</option>
								    <option value="9">注射剂类用药</option>
								    <option value="10">糖尿病用药</option>
								    <option value="11">激素类药品</option>
								    <option value="12">皮肤科用药</option>
								    <option value="13">妇科用药</option>
								    <option value="14">抗肿瘤用药</option>
								    <option value="15">抗精神病药品</option>
								    <option value="16">清热解毒药品</option>
								    <option value="17">受体激动\阻断药和抗过敏药</option>
								    <option value="18">滋补类药品</option>
								    <option value="19">维生素、矿物质药品</option>
								</select>
							</div>
				          <div class="col-sm-3">
				            <div class="input-group" style=" margin-top: 0px; ">
				            
				              <input style="  background: white;width:250px; height:30.7px" type="text" class="form-control no-padding" id="keeperUserName" value="${keeperUserName}" />
				              <div class="input-group-btn" style="width:1px;">
				                <ul class="dropdown-menu dropdown-menu-right" role="menu"></ul>
				              </div>
					         </div>
					      </div>
					    </div>
					  
					</div>
				</div>
				<form  class="form-horizontal" id="FormYizhuAdd" style="width: 1200px;margin-top: 20px;">
					 <div class="form-group" style="margin-top: 10px; margin-bottom: 10px;">
			        	 
			        	 <label class="col-sm-1 control-label">名称</label>
						    <!-- <font style="font-size: 14px;" color="#000000">名称</font> -->
						    <div class="col-sm-4 form-group">
                                <input id="medicines_name1" readonly="readonly" style="width: 237px; height: 32px; text-align: center;"/>
                            </div>
						<label class="col-sm-1 control-label">规格</label>
						    <!-- font style="font-size: 14px;" color="#000000">规格</font> -->
						    <div class="col-sm-3 form-group">
                                 <input id="medicines_specification1" readonly="readonly" style="width: 150px;  height: 32px; text-align: center;"/>
                            </div>
						<div class="btn-group" style="margin-left: 20px;">
						    <font style="font-size: 14px;" color="#000000">单位</font>
						    <input id="medicines_unit1" readonly="readonly" style="width: 50px;  height: 32px; text-align: center;"/>
						</div>
						<div class="btn-group" style="margin-left: 20px;">
						    <font style="font-size: 14px;" color="#000000">售价</font>
						    <input id="medicines_price1" style="width: 90px;  height: 32px; text-align: center;"/>
						</div>             
						<input type="hidden" id="storage_id" name="storage_id" style="width: 90px;  height: 32px; text-align: center;"/>       
			        </div>
                    <div class="form-group" style="margin-top: 10px;margin-bottom: 0px;">
                        <label class="col-sm-1 control-label">数量</label>
                            <div class="col-sm-1 form-group">
                                <input style="background: white; width: 60px;" id="storage_number" name="storage_number" 
                                	type="text" class="form-control"  value="1" >
                            </div>
                    	<script>
						    $("input[name='storage_number']").TouchSpin({
						      verticalbuttons: true,
						    });
						</script>
						<label class="col-sm-1 control-label">供应商  </label>
                    		 <div class="col-sm-2 form-group">
                            	<select  id="storage_supply" name="storage_supply" class="selectpicker" data-size="5" >
		    						<option value="">&nbsp;</option>
		    						<option value="供应商1">供应商1</option>
								    <option value="供应商2">供应商2</option>
								</select>
							</div>
                        <label class="col-sm-1 control-label">生产日期 </label>
                    		 <div class="col-sm-2 form-group">
                            	<input  id="production_date" name="production_date" type="text" class="form-control" >
							</div>	
							<label class="col-sm-1 control-label">有效期至 </label>
                    		 <div class="col-sm-2 form-group">
                    		 <input  id="expiring_date" name="expiring_date" type="text" class="form-control" >
							</div>
							<div class="col-sm-1 form-group">
								<button id="block2_add" class="btn btn-white" type="button" 
									style="width: 7%;  background: rgb(222,237,255);border-color: rgb(222,237,255);">
									<font color="#000000">保存</font>
								</button>
							</div>
							<div class="col-sm-1 form-group">
                                <button id="block2_cancel" class="btn btn-white" type="button" 
                                	style="width: 7%; background: rgb(222,237,255);border-color: rgb(222,237,255);">
									<font color="#000000">重置</font>
								</button>
							</div>
							<div class="col-sm-1 form-group">
                                <input type="hidden" style="width: 260px;"  id="medicines_id1" name="medicines_id" 
                                	type="text" class="form-control"   >
                            </div>
                            <div class="col-sm-1 form-group">
                                <input type="hidden" style="width: 260px;"  id="storage_price" name="storage_price" 
                                	type="text" class="form-control"   >
                            </div>
                         
						</div>	
						</form>	
						
						
				<form  class="form-horizontal" id="FormYizhuEdit" style="width: 1200px;margin-top: 20px;">
					 <div class="form-group" style="margin-top: 10px; margin-bottom: 10px;">
			        	 
			        	 <label class="col-sm-1 control-label">名称</label>
						    <!-- <font style="font-size: 14px;" color="#000000">名称</font> -->
						    <div class="col-sm-4 form-group">
                                <input id="medicines_name2" readonly="readonly" style="width: 237px; height: 32px; text-align: center;"/>
                            </div>
						<label class="col-sm-1 control-label">规格</label>
						    <!-- font style="font-size: 14px;" color="#000000">规格</font> -->
						    <div class="col-sm-3 form-group">
                                 <input id="medicines_specification2" readonly="readonly" style="width: 150px;  height: 32px; text-align: center;"/>
                            </div>
						<div class="btn-group" style="margin-left: 20px;">
						    <font style="font-size: 14px;" color="#000000">单位</font>
						    <input id="medicines_unit2" readonly="readonly" style="width: 50px;  height: 32px; text-align: center;"/>
						</div>
						<div class="btn-group" style="margin-left: 20px;">
						    <font style="font-size: 14px;" color="#000000">售价</font>
						    <input id="medicines_price2" style="width: 90px;  height: 32px; text-align: center;"/>
						</div>             
						<input type="hidden" id="storage_id2" name="storage_id" style="width: 90px;  height: 32px; text-align: center;"/>       
			        </div>
                    <div class="form-group" style="margin-top: 10px;margin-bottom: 0px;">
                        <label class="col-sm-1 control-label">数量</label>
                            <div class="col-sm-1 form-group">
                                <input style="background: white; width: 60px;" id="storage_number2" name="storage_number" 
                                	type="text" class="form-control"  value="1" >
                            </div>
                    	<script>
						    $("input[name='storage_number']").TouchSpin({
						      verticalbuttons: true,
						    });
						</script>
						<label class="col-sm-1 control-label">供应商  </label>
                    		 <div class="col-sm-2 form-group">
                            	<select  id="storage_supply2" name="storage_supply" class="selectpicker" data-size="5" >
		    						<option value="">&nbsp;</option>
		    						<option value="供应商1">供应商1</option>
								    <option value="供应商2">供应商2</option>
								</select>
							</div>
                        <label class="col-sm-1 control-label">生产日期 </label>
                    		 <div class="col-sm-2 form-group">
                            	<input  id="production_date2" name="production_date" type="text" class="form-control" >
							</div>	
							<label class="col-sm-1 control-label">有效期至 </label>
                    		 <div class="col-sm-2 form-group">
                    		 <input  id="expiring_date2" name="expiring_date" type="text" class="form-control" >
							</div>
							<div class="col-sm-1 form-group">
								<button id="block3_add" class="btn btn-white" type="button" 
									style="width: 7%;  background: rgb(222,237,255);border-color: rgb(222,237,255);">
									<font color="#000000">保存</font>
								</button>
							</div>
							<div class="col-sm-1 form-group">
                                <!-- <button id="block2_cancel" class="btn btn-white" type="button" 
                                	style="width: 7%; background: rgb(222,237,255);border-color: rgb(222,237,255);">
									<font color="#000000">重置</font>
								</button> -->
							</div>
							<div class="col-sm-1 form-group">
                                <input type="hidden" style="width: 260px;"  id="medicines_id2" name="medicines_id" 
                                	type="text" class="form-control"   >
                            </div>
                            <div class="col-sm-1 form-group">
                                <input type="hidden" style="width: 260px;"  id="storage_price2" name="storage_price" 
                                	type="text" class="form-control"   >
                            </div>
                             <div class="col-sm-1 form-group">
                                <input type="hidden" style="width: 260px;"  id="storage_list_id" name="storage_list_id" 
                                	type="text" class="form-control"   >
                            </div>
                         
						</div>	
						</form>			
					
						
					
                        </div>
				</div>

	
		
		   
	       
	       		
    	
    	<div id="block3" style="transform: translateY(-10px);">
    	<div id="toolbar" class="btn-group">
			 <button id="btn_add" type="button" class="btn btn-white" >
	        	<span class="glyphicon glyphicon-pencil"></span>新增
	    	</button> 
	   		<button id="btn_edit" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-remove" ></span>修改
	          	</button>
	          	<button id="btn_del" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-remove" ></span>删除
	          	</button> 
	       </div> 
    	<table id="tb_patient_message"></table>
    	</div>
    	
    	
    	
	
   
    <script type="text/javascript">
   
    
    $().ready(function() {
    	search();
    	$('#storage_id').val("${storage_id}");
    	$('#FormYizhuEdit').hide();
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
    
    function search(){
		$('#keeperUserName').bsSuggest({
			  url: "/hospital/selectMedicines",
		      getDataMethod:'url',
		      effectiveFields:['medicines_id','medicines_name','medicines_form','medicines_unit','medicines_number'],// 有效显示于列表中的字段，非有效字段都会过滤，默认全部有效。
		      effectiveFieldsAlias:{medicines_id:'ID',medicines_name:'项目名称',medicines_form:'规格',medicines_unit:'单位',medicines_number:'库存'},// 有效字段的别名对象，用于 header 的显示
		      showHeader:true,                         //是否显示选择列表的 header。为 true 时，有效字段大于一列则显示表头
		      allowNoKeyword:true,                    // 是否允许无关键字时请求数据
		      multiWord:false,                         //以分隔符号分割的多关键字支持
		      //idField: "room_id",                    //每组数据的哪个字段作为 data-id，优先级高于 indexId 设置（推荐）
		      keyField: "medicines_name",
		      listAlign: "left",
		      showBtn: true,                           //是否显示下拉按钮
		      hideOnSelect: true,            // 鼠标从列表单击选择了值时，是否隐藏选择列表
		      autoDropup: true,              //选择菜单是否自动判断向上展开。设为 true，则当下拉菜单高度超过窗体，且向上方向不会被窗体覆盖，则选择菜单向上弹出
		      showHeader: true,              //是否显示选择列表的 header。为 true 时，有效字段大于一列则显示表头
		      //调整 ajax 请求参数方法，用于更多的请求配置需求。如对请求关键字作进一步处理、修改超时时间等
		        fnAdjustAjaxParam: function(keyword, opts) {
		            //console.log('ajax 请求参数调整：', keyword, opts);
		            return {
		                
		                timeout: 10000,
		                data: {
		                	condition:  keyword,
		                	medicines_category : $('#cate').val()
		                }
		            };
		        },
	            //当从下拉菜单选取值时触发，并传回设置的数据到第二个参数
		    }).on('onSetSelectValue', function (e, keyword, data) {
		      $('#medicines_name1').val(data.medicines_name);
		      $('#medicines_specification1').val(data.medicines_specification);
		      $('#medicines_unit1').val(data.medicines_unit);
		      $('#medicines_price1').val(data.medicines_price);
		      $('#medicines_id1').val(data.medicines_id);
		      $('#storage_price').val(data.medicines_price);
		      console.log(data);
		      
		      
		    });
		 }
    $(document).on('change', "#storage_number",function(){
		
    	$('#storage_price').val($('#storage_number').val()*$('#medicines_price1').val());
    	
		});
 $(document).on('change', "#storage_number2",function(){
		
    	$('#storage_price2').val($('#storage_number2').val()*$('#medicines_price2').val());
    	
		});
	$(document).on('change', "#medicines_price1",function(){
		
    	$('#storage_price').val($('#storage_number').val()*$('#medicines_price1').val());
    	
		});
$(document).on('change', "#medicines_price2",function(){
		
    	$('#storage_price2').val($('#storage_number2').val()*$('#medicines_price2').val());
    	
		});
    $(document).on('click', "#btn_add",function(){
    	
    	$('#FormYizhuEdit').hide();
    	$('#FormYizhuAdd').show();
    	$("#keeperUserName").removeAttr("disabled");
    	//$('#tb_patient_message').bootstrapTable('refresh');
	 });
    
	$(document).on('click', "#btn_del",function(){
		var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
		//var row = arrselectedData[0];
		if (arrselectedData.length <= 0) {
			 swal({
         	   title:"请选中一行",
         	   text:"",
         	   type:"warning"
            });
     }else{
    	//从一个对象中解析出字符串
     	//var select_id = JSON.stringify(arrselectedData);
     	var select_id = '';
     	var row = arrselectedData[0];
     	for (var i = 0; i < arrselectedData.length; i++) {
     		select_id += arrselectedData[i]['storage_list_id'] + ",";
         }
     	//去掉最后的逗号
     	select_id = select_id.substring(0, select_id.length - 1);
     	//console.log(arrselectedData);
     	console.log(select_id);
     	//删除方法
    	check(select_id);
    	function check(select_id){
            swal(
                {title:"您确定要删除吗",
                    text:"",
                    type:"warning",
                    showCancelButton:true,
                    confirmButtonColor:"#DD6B55",
                    confirmButtonText:"确定！",
                    cancelButtonText:"取消",
                    closeOnConfirm:false,
                    closeOnCancel:false
                },
                function(isConfirm)
                {
                    if(isConfirm)
                    {	
                    	 $.ajax({
						url: "/hospital/delStroage_list",
						type:"post",
						data:{
							select_id : select_id
						},
						 success: function (data) {
							 $('#tb_patient_message').bootstrapTable('refresh');
							 swal({title:"删除成功！",
                                 text:"",
                                 type:"success"});
							 
							//重置
								//document.getElementById("FormYizhuAdd").reset();
								$("#keeperUserName").val("");
								$("#medicines_name2").val("");
								$("#medicines_specification2").val("");
								$("#medicines_unit2").val("");
								$("#medicines_price2").val("");
								$("#keeperUserName").val("");
								//$("#group").val(1);
								$("#storage_number2").val(1);
								$("#expiring_date2").val("");
								$("#medicines_id2").val("");
								$("#production_date2").val("");
								$("#storage_price2").val("");
								$('#storage_supply2').selectpicker('val',"");
			                $('#tb_patient_message').bootstrapTable('refresh');
    				         },
    				         
                    	error:function(){
                    		 swal({title:"删除失败",
                                 text:"",
                                 type:"error"});
							 }
    					}); 
                        
                    }
                    else{
                        swal({title:"已取消",
                            text:"您取消了作废操作！",
                            type:"error"});
                    }
                }
            )
        } 
     }
    	
	 });
	 
	 $(document).on('click', "#btn_edit",function(){
		 var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
			var row = arrselectedData[0];
			if (arrselectedData.length <= 0) {
				 swal({
             	   title:"请选中一行",
             	   text:"",
             	   type:"warning"
                });
         }else{
	    	$('#FormYizhuEdit').show();
	    	$('#FormYizhuAdd').hide();
	    	$("#keeperUserName").val("");
	    	$("#keeperUserName").attr("disabled","disabled");
			$("#medicines_name2").val(row.medicines.medicines_name);
			$("#medicines_specification2").val(row.medicines.medicines_specification);
			$("#medicines_unit2").val(row.medicines.medicines_unit);
			$("#medicines_price2").val(row.medicines.medicines_price);
			//$("#group").val(1);
			$("#storage_number2").val(row.storage_number);
			$("#expiring_date2").val(changeDateFormat1(row.expiring_date));
			$("#medicines_id2").val(row.medicines_id);
			$("#production_date2").val(changeDateFormat1(row.production_date));
			$("#storage_price2").val(row.storage_price);
			$('#storage_supply2').selectpicker('val',row.storage_supply);
			$('#storage_list_id').val(row.storage_list_id);
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
	    	
	    	
         }
	    	
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
					  swal({title:"添加成功",
                            text:"",
                            type:"success",
                            //timer:2000,
                            });	 
                           
					 
					 $('#tb_patient_message').bootstrapTable('refresh');		               	                
	              
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
			return $("#FormYizhuAdd").validate({
			    rules: {				    	
			    	storage_supply : {
		       		required : true,
		       		},
		       		production_date : {
			       		required : true,
			       		},	
			       		expiring_date : {
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
		function EditValidate(){
			/*关键在此增加了一个return，返回的是一个validate对象，这个对象有一个form方法，返回的是是否通过验证(true,false)*/
				return $("#FormYizhuEdit").validate({
				    rules: {				    	
				    	storage_supply : {
			       		required : true,
			       		},
			       		production_date : {
				       		required : true,
				       		},	
				       		expiring_date : {
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
		
		$(document).on('click', "#block2_add",function(){
			if(moneyValidate().form()) {
			var param = $("#FormYizhuAdd").serializeArray();
			console.log(param);
			
			    $.ajax({
				url: "/hospital/addStroage_list",
				type:"post",
				data:param,
				 success: function (data) {
					 swal({
	                	   title:"新增成功",
	                	   text:"",
	                	   type:"success"
	                   });
					//重置
						//document.getElementById("FormYizhuAdd").reset();
						$("#keeperUserName").val("");
						$("#medicines_name1").val("");
						$("#medicines_specification1").val("");
						$("#medicines_unit1").val("");
						$("#medicines_price1").val("");
						$("#keeperUserName").val("");
						//$("#group").val(1);
						$("#storage_number").val(1);
						$("#expiring_date").val("");
						$("#medicines_id1").val("");
						$("#production_date").val("");
						$("#storage_price").val("");
						$('#storage_supply').selectpicker('val',"");
	                $('#tb_patient_message').bootstrapTable('refresh');
		         },
		         error:function(){
		        	 swal({
	                	   title:"新增失败",
	                	   text:"",
	                	   type:"error"
	                   });
				 }

			});   
			}
			
			
			    });
		$(document).on('click', "#block3_add",function(){
			if(EditValidate().form()) {
			var param = $("#FormYizhuEdit").serializeArray();
			console.log(param);
			
			     $.ajax({
				url: "/hospital/updateStroage_list",
				type:"post",
				data:param,
				 success: function (data) {
					 swal({
	                	   title:"修改成功",
	                	   text:"",
	                	   type:"success"
	                   });
					//重置
						//document.getElementById("FormYizhuAdd").reset();
						$("#keeperUserName").val("");
						$("#medicines_name2").val("");
						$("#medicines_specification2").val("");
						$("#medicines_unit2").val("");
						$("#medicines_price2").val("");
						$("#keeperUserName").val("");
						//$("#group").val(1);
						$("#storage_number2").val(1);
						$("#expiring_date2").val("");
						$("#medicines_id2").val("");
						$("#production_date2").val("");
						$("#storage_price2").val("");
						$('#storage_supply2').selectpicker('val',"");
	                $('#tb_patient_message').bootstrapTable('refresh');
		         },
		         error:function(){
		        	 swal({
	                	   title:"修改失败",
	                	   text:"",
	                	   type:"error"
	                   });
				 }

			});    
			}
			
			
			    });
    
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
				url: '/hospital/selectStorage_list', //请求后台的URL（*）
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
		    					field: 'medicines.medicines_name',
		    					title: '药名'
		    				},{
		    					valign:"middle",
		                        align:"center",
		                        colspan: 1,
		                        rowspan: 2,
		    					field: 'medicines.medicines_specification',
		    					title: '规格'
		    				},{
		    					valign:"middle",
		                        align:"center",
		                        colspan: 1,
		                        rowspan: 2,
		    					field: 'production_date',
		    					title: '生产日期',
		    					formatter: function (value, row, index) {
				                    return changeDateFormat1(value);
				                },
		    				}, {
		    					valign:"middle",
		                        align:"center",
		                        colspan: 1,
		                        rowspan: 2,
		    					field: 'expiring_date',
		    					title: '有效期至',
		    					formatter: function (value, row, index) {
				                    return changeDateFormat1(value);
				                },
		    				},
		                     {
		                         title: "入库情况",
		                         valign:"middle",
		                         align:"center",
		                         colspan: 4,
		                         rowspan: 1
		                     }
		                ],
		                 [
		                   
		                      {
		                         field: 'storage_number',
		                        title: '数量',
		                         valign:"middle",
		                         align:"center",
		                    },
		                     {
		                         field: 'medicines.medicines_unit',
		                         title: '单位',
		                         valign:"middle",
		                         align:"center",
		                     },
		                     {
		                         field: 'medicines.medicines_price',
		                         title: '单价',
		                         valign:"middle",
		                         align:"center"
		                     },{
		                         field: 'storage_price',
		                         title: '总额',
		                         valign:"middle",
		                         align:"center"
		                     },
		                 ]
		             ],
				
				//事件处理
				//当选择（check）此行时触发
				onDblClickRow: function (row, $element) {
					console.log(row.patient.patient_id);
					
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
					}
				},
				onUncheck: function (row, $element) {			
					count = count-1;
					if(count<=1){
						$("#btn_action").removeAttr("disabled");
						$("#btn_cancel").removeAttr("disabled");
					}
					//console.log(count);    
				},
				//当全选行时触发，所需的参数如下
				onCheckAll: function (row) {
					$("#btn_action").attr("disabled","disabled");
					$("#btn_cancel").attr("disabled","disabled");
				},
				onUncheckAll: function (row) {
					count = 0;
					$("#btn_action").removeAttr("disabled");
					$("#btn_cancel").removeAttr("disabled");
				},
				//当重置（reset）表的视图时触发
				onResetView: function () {
					count = 0;
					$("#btn_action").removeAttr("disabled");
					$("#btn_cancel").removeAttr("disabled");
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
			
				var param = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
						pageSize: params.pageSize, //页面大小
						pageNumber: params.pageNumber, //页码
						storage_id : "${storage_id}",
					};
					return param;
			
			
			
		};
		return oTableInit;
	};
	var ButtonInit = function() {
		var oInit = new Object();
		oInit.Init = function() {
			//初始化页面上面的按钮事件
			
			
			
			
		};

		return oInit;
	};
	$('#production_date').datetimepicker({
		format: 'yyyy-mm-dd',//显示格式
		todayHighlight: 1,//今天高亮
		minView: "month",//设置只显示到月份
		startView:2,
		forceParse: 0,
		showMeridian: 1,
		autoclose: 1//选择后自动关闭
	});
	$('#expiring_date').datetimepicker({
		format: 'yyyy-mm-dd',//显示格式
		todayHighlight: 1,//今天高亮
		minView: "month",//设置只显示到月份
		startView:2,
		forceParse: 0,
		showMeridian: 1,
		autoclose: 1//选择后自动关闭
	});
	$('#production_date2').datetimepicker({
		format: 'yyyy-mm-dd',//显示格式
		todayHighlight: 1,//今天高亮
		minView: "month",//设置只显示到月份
		startView:2,
		forceParse: 0,
		showMeridian: 1,
		autoclose: 1//选择后自动关闭
	});
	$('#expiring_date2').datetimepicker({
		format: 'yyyy-mm-dd',//显示格式
		todayHighlight: 1,//今天高亮
		minView: "month",//设置只显示到月份
		startView:2,
		forceParse: 0,
		showMeridian: 1,
		autoclose: 1//选择后自动关闭
	});
    </script>
</body>

</html>