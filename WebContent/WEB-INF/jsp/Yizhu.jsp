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
	    <link rel="stylesheet" href="css/jquery.bootstrap-touchspin.min.css" />
	    <link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
	    <link href="css/pace-theme-loading-bar.css" rel="stylesheet">
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/date.format.js"></script>		
	 	<script src="js/bootstrap.min.js?v=3.3.5"></script>
		<script type="text/javascript" src="js/bootstrap-table.min.js"></script>
		<script type="text/javascript" src="js/bootstrap-table-zh-CN.min.js"></script>
		<script src="js/content.min.js?v=1.0.0"></script>
		<script type="text/javascript" src="js/bootstrap-datetimepicker.min.js" ></script>
	    <script src="js/plugins/validate/jquery.validate.min.js"></script>
	    <script src="js/plugins/validate/messages_zh.min.js"></script>
	    <script src="js/demo/form-validate-demo.min.js"></script>
	    <script src="js/bootstrap-select.min.js"></script>
	    <script src="js/bootstrap-suggest.js"></script>
	    <script src="js/jquery.dropdown.js" ></script>
	    <script src="js/jquery.bootstrap-touchspin.min.js" ></script>
	    <script src="js/bootstrap-suggest.js"></script>
        <script src="js/plugins/sweetalert/sweetalert.min.js"></script>
        <script src="js/pace.js"></script>
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
				width: 6%;
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
			/* #FormEdit input{
				text-align: center;
			} */
	    </style>
		<meta charset="UTF-8">
		<title></title>
	</head>
			
	 <body>
		<div style="background: rgb(223,237,255);" id="block1">
			<div class="form-group" style="background: rgb(195,221,255);">
				<!-- <div class="btn-group" style="margin-left: 20px;">
				    <font style="font-size: 14px;" color="#000000">选择科室</font>
				    
				</div>
				<div class="btn-group" style="margin-left: 7px;">
				    <select id="deparmrntselect" name="deparmrntselect" class="selectpicker" data-size="5" data-live-search="true" >			
					</select>   
				</div>	 -->		
				<div class="btn-group" style="margin-left: 20px;">
					<button  type="button" class="btn btn-white" data-toggle="modal" data-target="#myModaAdd">
			        	<span class="glyphicon glyphicon-import" aria-hidden="true"></span>调病人
			    	</button>
					<div class="modal inmodal fade" id="myModaAdd" tabindex="-1" role="dialog" aria-hidden="true">
				        <div class="modal-dialog modal-lg" style=" margin-left: 5%;
						    margin-right: 5%;
						    width: 90%;">
									<div class="modal-content">
				                <div class="ibox float-e-margins">
				                    <div class="ibox-title">
				                        <h5>病人信息导入 </h5>
				                    </div>
				                    
				                     <div class="ibox-content">
				                     
				                     	 <table id="tb_patient_message1"></table> 
				                     
				                    </div> 
				                </div>
				            </div>
				        </div>
				    </div>	
				</div>
			</div>
			
			<div id="row1">
	        <div  class="form-group" style="margin-top: 10px; margin-bottom: 10px;">
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
				    <input id="doctor_name1"  readonly="readonly" style="width: 90px; "/>
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
	        </div>     
	        
	        <div class="form-group" style="margin-top: 10px; height: 5px;">
	        	<!-- <div class="btn-group" style="margin-left: 20px;">
				    <font style="font-size: 14px;" color="#000000">初步诊断</font>
				    <input id="diagnosis_a1" readonly="readonly" style="width: 150px; "/>
				</div> -->
				<!-- <div class="btn-group" style="margin-left: 20px;">
				    <font style="font-size: 14px;" color="#000000">初步诊断2</font>
				    <input readonly="readonly" style="width: 150px; "/>
				</div> -->
	        </div>
	        </div>
	        
	        
	        <div id="block2">
		        <div  class="form-horizontal" style="background: rgb(195,221,255);">
					<div id="seacher" style=" margin-top: 5px; height: 30.7px;" >
					<label class="col-sm-1 control-label">搜索</label>
					<div class="col-sm-4 form-group">
                            	<select  id="cate1" name="cate1" class="selectpicker" data-size="5" >
		    						<option value="0">请选择医嘱类型</option>
		    						<option value="1">用药医嘱 </option>
								    <option value="2">非用药医嘱</option>
								</select>
							</div>
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
					    <div id="feiyongyao">
							<div class="col-sm-4 form-group">
                            	<select  id="cate3" name="cate3" class="selectpicker" data-size="5" >
		    						<option value="0">请选择</option>
		    						<option value="1">护理 </option>
								    <option value="2">检验</option>
								    <option value="3">检查</option>
								    <option value="4">治疗</option>
								    <option value="5">手术</option>							    
								</select>
							</div>
				          <div class="col-sm-3">
				            <div  id="huli" class="input-group" style=" margin-top: 0px; ">
				            
				              <input style="  background: white;width:250px; height:30.7px" type="text" class="form-control no-padding" id="keeperUserName1" value="${keeperUserName1}" />
				              <div class="input-group-btn" style="width:1px;">
				                <ul class="dropdown-menu dropdown-menu-right" role="menu"></ul>
				              </div>
					         </div>
					         <div id="huayan"  class="input-group" style=" margin-top: 0px; ">
				            
				              <input style="  background: white;width:250px; height:30.7px" type="text" class="form-control no-padding" id="keeperUserName2" value="${keeperUserName2}" />
				              <div class="input-group-btn" style="width:1px;">
				                <ul class="dropdown-menu dropdown-menu-right" role="menu"></ul>
				              </div>
					         </div>
					      </div>
					    </div>
						<%-- <div class="input-group">
						
			              <input type="text" class="form-control no-padding" id="keeperUserName" value="${keeperUserName}" />
			              <div class="input-group-btn" style="width:1px;">
			                <ul class="dropdown-menu dropdown-menu-right" role="menu"></ul>
			              </div>
				         </div>  --%>
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
						    <font style="font-size: 14px;" color="#000000">收费单价</font>
						    <input id="medicines_price1" readonly="readonly" style="width: 90px;  height: 32px; text-align: center;"/>
						</div> 
                       <!-- <label class="col-sm-3 control-label">规格</label>
                        <div class="col-sm-2 form-group">
                            <input style="width: 200px;" readonly="readonly" id="medicines_specification1" name="medicines_specification1" 
                            	type="text" class="form-control"   >
                        </div>
                        <label class="col-sm-2 control-label">单位</label>
                        <div class="col-sm-1 form-group">
                            <input style="width: 50px;" readonly="readonly" id="medicines_unit1" name="medicines_unit1" 
                            	type="text" class="form-control"   >
                        </div>
                        <label class="col-sm-2 control-label">收费单价</label>
                        <div class="col-sm-2 form-group">
                            <input style="width: 60px;" readonly="readonly" id="medicines_price1" name="medicines_price1" 
                            	type="text" class="form-control"   >
                        </div> -->
			        </div>
                    <div class="form-group" style="margin-top: 10px;margin-bottom: 0px;">
                    	<label class="col-sm-1 control-label">分组</label>
                            <div class="col-sm-1 form-group">
                                <input style="background: white; width: 60px;" id="group" name="group" 
                                	type="text" class="form-control"  value="1" >
                            </div>
                    	<script>
						    $("input[name='group']").TouchSpin({
						      verticalbuttons: true,
						    });
						</script>
                        <label class="col-sm-1 control-label">数量</label>
                            <div class="col-sm-1 form-group">
                                <input style="background: white; width: 60px;" id="number" name="number" 
                                	type="text" class="form-control"  value="1" >
                            </div>
                    	<script>
						    $("input[name='number']").TouchSpin({
						      verticalbuttons: true,
						    });
						</script>
						<label class="col-sm-1 control-label">  &nbsp;&nbsp;滴速  </label>
                    		 <div class="col-sm-2 form-group">
                            	<select  id="speed" name="speed" class="selectpicker" data-size="5" >
		    						<option value="">&nbsp;</option>
		    						<option value="45滴/分">45滴/分</option>
								    <option value="65滴/分">65滴/分</option>
								</select>
							</div>
                        <label class="col-sm-1 control-label">  &nbsp;&nbsp;途径  </label>
                    		 <div class="col-sm-2 form-group">
                            	<select  id="ways" name="ways" class="selectpicker " data-dropup-auto="false" data-size="5" >
		    						<option value="">&nbsp;</option>
		    						<option value="I.d 皮内注射">I.d 皮内注射</option>
								    <option value="I.v.gtt 静脉滴注">I.v.gtt 静脉滴注</option>
								    <option value="p.o. 口服">p.o. 口服</option> 
								    <option value="I.m 肌肉注射">I.m 肌肉注射</option>
								    <option value="I.h 皮下注射">I.h 皮下注射</option>  
								</select>
							</div>	
							<label class="col-sm-1 control-label">用法  </label>
                    		 <div class="col-sm-3 form-group">
                    		 <select  id="direction" name="direction" class="selectpicker " data-dropup-auto="false" data-size="5" >
		    						<option value="">&nbsp;</option>
		    						<option value="ac">ac</option>
								    <option value="pc">pc</option>
								    <option value="am">am</option> 
								    <option value="pm">pm</option>
								    <option value="qd">qd</option>
								    <option value="Bid">Bid</option> 
								    <option value="tid">tid</option> 
								    <option value="Qid">Qid</option> 
								    <option value="sos">sos</option>   
								    <option value="Q6h">Q6h</option>
								</select>
                            	<!-- <input style="width: 162px; height:33px" id="direction" name="direction"></input> -->
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
									<font color="#000000">取消</font>
								</button>
							</div>
							<div class="col-sm-1 form-group">
                                <input style="width: 260px;" type="hidden" id="medicines_id1" name="medicined_id" 
                                	type="text" class="form-control"   >
                            </div>
                            <div class="col-sm-1 form-group">
                                <input style="width: 260px;" type="hidden" id="medical_orders_id1" name="medical_orders_id" 
                                	type="text" class="form-control"   >
                            </div>
                            <div class="col-sm-1 form-group">
                                <input value="${USER.user_work_id}" type="hidden" style="width: 260px;" id="doctor_id1" name="doctor_id" 
                                	type="text" class="form-control"   >
                            </div>
                            <div class="col-sm-1 form-group">
                             <input value="1" type="hidden" style="width: 260px;" id="medical_orders_list_type" name="medical_orders_list_type" 
                                	type="text" class="form-control"   >                              
                            </div>
                            <div class="col-sm-1 form-group">
                             <input  type="hidden" style="width: 260px;" id="times" name="times" 
                                	type="text" class="form-control"   >                              
                            </div>
                            <div class="col-sm-1 form-group">
                             <input type="hidden"  style="width: 260px;" id="types" name="types" 
                                	type="text" class="form-control"   >                              
                            </div>
                            <div class="col-sm-1 form-group">
                             <input  type="hidden" style="width: 260px;" id="sum_number" name="sum_number" 
                                	type="text" class="form-control"   >                              
                            </div>
						</div>	
						</form>	
						
						
					<form  class="form-horizontal" id="FormYizhuAdd2" style="width: 1200px;margin-top: 20px;">
					 <div class="form-group" style="margin-top: 10px; margin-bottom: 10px;">
			        	 
			        	 <label class="col-sm-1 control-label">名称</label>
						    <!-- <font style="font-size: 14px;" color="#000000">名称</font> -->
						    <div class="col-sm-4 form-group">
                                <input id="project_name" readonly="readonly" style="width: 237px; height: 32px; text-align: center;"/>
                            </div>					
						<div class="btn-group" style="margin-left: 25px;">
						    <font style="font-size: 14px;" color="#000000">单位</font>
						    <input id="project_unit" readonly="readonly" style="width: 50px;  height: 32px; text-align: center;"/>
						</div>
						<div class="btn-group" style="margin-left: 20px;">
						    <font style="font-size: 14px;" color="#000000">收费单价</font>
						    <input id="project_price" readonly="readonly" style="width: 90px;  height: 32px; text-align: center;"/>
						</div> 
                       <!-- <label class="col-sm-3 control-label">规格</label>
                        <div class="col-sm-2 form-group">
                            <input style="width: 200px;" readonly="readonly" id="medicines_specification1" name="medicines_specification1" 
                            	type="text" class="form-control"   >
                        </div>
                        <label class="col-sm-2 control-label">单位</label>
                        <div class="col-sm-1 form-group">
                            <input style="width: 50px;" readonly="readonly" id="medicines_unit1" name="medicines_unit1" 
                            	type="text" class="form-control"   >
                        </div>
                        <label class="col-sm-2 control-label">收费单价</label>
                        <div class="col-sm-2 form-group">
                            <input style="width: 60px;" readonly="readonly" id="medicines_price1" name="medicines_price1" 
                            	type="text" class="form-control"   >
                        </div> -->
			        </div>
                    <div class="form-group" style="margin-top: 10px;margin-bottom: 0px;">
                    	<label class="col-sm-1 control-label">分组</label>
                            <div class="col-sm-1 form-group">
                                <input style="background: white; width: 60px;" id="project_group" name="group" 
                                	type="text" class="form-control"  value="1" >
                            </div>
                    	<script>
						    $("input[name='group']").TouchSpin({
						      verticalbuttons: true,
						    });
						</script>
                        <label class="col-sm-1 control-label">数量</label>
                            <div class="col-sm-1 form-group">
                                <input style="background: white; width: 60px;" id="project_number" name="number" 
                                	type="text" class="form-control"  value="1" >
                            </div>
                    	<script>
						    $("input[name='number']").TouchSpin({
						      verticalbuttons: true,
						    });
						</script>							
							<label class="col-sm-1 control-label">用法  </label>
                    		 <div class="col-sm-3 form-group">
                    		 <select  id="project_direction" name="direction" class="selectpicker " data-dropup-auto="false" data-size="5" >
		    						<option value="">&nbsp;</option>
		    						<option value="ac">ac</option>
								    <option value="pc">pc</option>
								    <option value="am">am</option> 
								    <option value="pm">pm</option>
								    <option value="qd">qd</option>
								    <option value="Bid">Bid</option> 
								    <option value="tid">tid</option> 
								    <option value="Qid">Qid</option> 
								    <option value="sos">sos</option>   
								    <option value="Q6h">Q6h</option>
								</select>
                            	<!-- <input style="width: 162px; height:33px" id="direction" name="direction"></input> -->
							</div>
							<div class="col-sm-1 form-group">
								<button id="block2_project_add" class="btn btn-white" type="button" 
									style="width: 7%;  background: rgb(222,237,255);border-color: rgb(222,237,255);">
									<font color="#000000">保存</font>
								</button>
							</div>
							<div class="col-sm-1 form-group">
                                <button id="block2_project_cancel" class="btn btn-white" type="button" 
                                	style="width: 7%; background: rgb(222,237,255);border-color: rgb(222,237,255);">
									<font color="#000000">取消</font>
								</button>
							</div>
							<div id="project" class="col-sm-1 form-group">
                                <input type="hidden" style="width: 260px;"  id="project_id" name="project_id" 
                                	type="text" class="form-control"   >
                            </div>
                            <div id="Inspection_item" class="col-sm-1 form-group">
                                <input type="hidden" style="width: 260px;"  id="Inspection_item_id" name="Inspection_item_id" 
                                	type="text" class="form-control"   >
                            </div>
                            <div class="col-sm-1 form-group">
                                <input style="width: 260px;" type="hidden" id="medical_orders_id4" name="medical_orders_id" 
                                	type="text" class="form-control"   >
                            </div>
                            <div class="col-sm-1 form-group">
                                <input value="${USER.user_work_id}" type="hidden" style="width: 260px;" id="doctor_id2" name="doctor_id" 
                                	type="text" class="form-control"   >
                            </div>
                            <div class="col-sm-1 form-group">
                             <input type="hidden" value="1"  style="width: 260px;" id="medical_orders_list_type2" name="medical_orders_list_type" 
                                	type="text" class="form-control"   >                              
                            </div>
                            <div class="col-sm-1 form-group">
                             <input type="hidden"  style="width: 260px;" id="times3" name="times" 
                                	type="text" class="form-control"   >                              
                            </div>
                            <div class="col-sm-1 form-group">
                             <input type="hidden"  style="width: 260px;" id="types3" name="types" 
                                	type="text" class="form-control"   >                              
                            </div>
                            <div class="col-sm-1 form-group">
                             <input  type="hidden" style="width: 260px;" id="sum_number3" name="sum_number" 
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
                            <div id="edit_specification">
						<label class="col-sm-1 control-label">规格</label>
						    <!-- font style="font-size: 14px;" color="#000000">规格</font> -->
						    <div class="col-sm-3 form-group">
                                 <input id="medicines_specification2" readonly="readonly" style="width: 150px;  height: 32px; text-align: center;"/>
                            </div>
                            </div>
						<div class="btn-group" style="margin-left: 25px;">
						    <font style="font-size: 14px;" color="#000000">单位</font>
						    <input id="medicines_unit2" readonly="readonly" style="width: 50px;  height: 32px; text-align: center;"/>
						</div>
						<div class="btn-group" style="margin-left: 20px;">
						    <font style="font-size: 14px;" color="#000000">收费单价</font>
						    <input id="medicines_price2" readonly="readonly" style="width: 90px;  height: 32px; text-align: center;"/>
						</div> 
                       <!-- <label class="col-sm-3 control-label">规格</label>
                        <div class="col-sm-2 form-group">
                            <input style="width: 200px;" readonly="readonly" id="medicines_specification1" name="medicines_specification1" 
                            	type="text" class="form-control"   >
                        </div>
                        <label class="col-sm-2 control-label">单位</label>
                        <div class="col-sm-1 form-group">
                            <input style="width: 50px;" readonly="readonly" id="medicines_unit1" name="medicines_unit1" 
                            	type="text" class="form-control"   >
                        </div>
                        <label class="col-sm-2 control-label">收费单价</label>
                        <div class="col-sm-2 form-group">
                            <input style="width: 60px;" readonly="readonly" id="medicines_price1" name="medicines_price1" 
                            	type="text" class="form-control"   >
                        </div> -->
			        </div>
                    <div class="form-group" style="margin-top: 10px;margin-bottom: 0px;">
                    	<label class="col-sm-1 control-label">分组</label>
                            <div class="col-sm-1 form-group">
                                <input style="background: white; width: 60px;" id="group2" name="group" 
                                	type="text" class="form-control"  value="1" >
                            </div>
                    	<script>
						    $("input[name='group']").TouchSpin({
						      verticalbuttons: true,
						    });
						</script>
                        <label class="col-sm-1 control-label">数量</label>
                            <div class="col-sm-1 form-group">
                                <input style="background: white; width: 60px;" id="number2" name="number" 
                                	type="text" class="form-control"  value="1" >
                            </div>
                    	<script>
						    $("input[name='number']").TouchSpin({
						      verticalbuttons: true,
						    });
						</script>
						<div id="edit_speed">
						<label class="col-sm-1 control-label">  &nbsp;&nbsp;滴速  </label>
                    		 <div class="col-sm-2 form-group">
                            	<select  id="speed2" name="speed" class="selectpicker" data-size="5" >
		    						<option value="">&nbsp;</option>
		    						<option value="45滴/分">45滴/分</option>
								    <option value="65滴/分">65滴/分</option>
								</select>
							</div>
						</div>
						<div id="edit_ways">
                        <label class="col-sm-1 control-label">  &nbsp;&nbsp;途径  </label>
                    		 <div class="col-sm-2 form-group">
                            	<select  id="ways2" name="ways" class="selectpicker " data-dropup-auto="false" data-size="5" >
		    						<option value="">&nbsp;</option>
		    						<option value="I.d 皮内注射">I.d 皮内注射</option>
								    <option value="I.v.gtt 静脉滴注">I.v.gtt 静脉滴注</option>
								    <option value="p.o. 口服">p.o. 口服</option> 
								    <option value="I.m 肌肉注射">I.m 肌肉注射</option>
								    <option value="I.h 皮下注射">I.h 皮下注射</option>  
								</select>
							</div>
						</div>			
							<label class="col-sm-1 control-label">用法  </label>
                    		 <div class="col-sm-3 form-group">
                    		 	<select  id="direction2" name="direction" class="selectpicker " data-dropup-auto="false" data-size="5" >
		    						<option value="">&nbsp;</option>
		    						<option value="ac">ac</option>
								    <option value="pc">pc</option>
								    <option value="am">am</option> 
								    <option value="pm">pm</option>
								    <option value="qd">qd</option>
								    <option value="Bid">Bid</option> 
								    <option value="tid">tid</option> 
								    <option value="Qid">Qid</option> 
								    <option value="sos">sos</option>   
								    <option value="Q6h">Q6h</option>
								</select>
                            	<!-- <input style="width: 162px; height:33px" id="direction2" name="direction"></input> -->
							</div>
							<div class="col-sm-1 form-group">
								<button id="btn_update" class="btn btn-white" type="button" 
									style="width: 7%;  background: rgb(222,237,255);border-color: rgb(222,237,255);">
									<font color="#000000">保存</font>
								</button>
							</div>
							<div class="col-sm-1 form-group">
                                <button id="block2_cancel" class="btn btn-white" type="button" 
                                	style="width: 7%; background: rgb(222,237,255);border-color: rgb(222,237,255);">
									<font color="#000000">取消</font>
								</button>
							</div>
							<div class="col-sm-1 form-group">
                                <input style="width: 260px;" type="hidden" id="medical_orders_list_id2" name="medical_orders_list_id" 
                                	type="text" class="form-control"   >
                            </div>
                            <div class="col-sm-1 form-group">
                             <input type="hidden" style="width: 260px;" id="times2" name="times" 
                                	type="text" class="form-control"   >                              
                            </div>
                            <div class="col-sm-1 form-group">
                             <input type="hidden"  style="width: 260px;" id="types2" name="types" 
                                	type="text" class="form-control"   >                              
                            </div>
                            <div class="col-sm-1 form-group">
                             <input type="hidden"  style="width: 260px;" id="sum_number2" name="sum_number" 
                                	type="text" class="form-control"   >                              
                            </div>
							<%-- <div class="col-sm-1 form-group">
                                <input style="width: 260px;" type="hidden" id="medicines_id1" name="medicined_id" 
                                	type="text" class="form-control"   >
                            </div>
                            <div class="col-sm-1 form-group">
                                <input style="width: 260px;" type="hidden" id="medical_orders_id1" name="medical_orders_id" 
                                	type="text" class="form-control"   >
                            </div>
                            <div class="col-sm-1 form-group">
                                <input value="${USER.user_work_id}" type="hidden" style="width: 260px;" id="doctor_id1" name="doctor_id" 
                                	type="text" class="form-control"   >
                            </div>
                            <div class="col-sm-1 form-group">
                             <input value="1" type="hidden" style="width: 260px;" id="medical_orders_list_type" name="medical_orders_list_type" 
                                	type="text" class="form-control"   >                              
                            </div> --%>
						</div>	
						</form>	
                        </div>
				</div>
								
		<div id="toolbar" class="btn-group" >
			<div class="btn-group" >
				    <a id="dropdown1" class="btn btn-white  dropdown-toggle" data-toggle="dropdown" >
				      	 <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
				      	 <font color="#000000">医嘱编辑</font> <span class="caret"></span>
				    </a>
				    <ul class="dropdown-menu">
				        <li><button id="btn_addzhizhu" class="btn btn-white" type="button" style="width: 130px;">添加医嘱</button></li>		        
				        <li class="divider"></li>
				        <li><button id="btn_edit" class="btn btn-white" type="button" style="width: 130px;">修改医嘱</button></li>
				         <li class="divider"></li>
				        <li><button id="btn_delete" class="btn btn-white" type="button" style="width: 130px;">作废医嘱</button></li>
				    </ul>			 		    
				</div>
				<div class="btn-group" style="margin-left: 20px;">
				    <a id="dropdown2" class="btn btn-white  dropdown-toggle" data-toggle="dropdown" >
				      	 <span class="glyphicon glyphicon-check" aria-hidden="true"></span>
				      	 <font color="#000000">医嘱提交</font> <span class="caret"></span>
				    </a>
				    <ul class="dropdown-menu">
				        <li><button id="btn_all_submit" class="btn btn-white" type="button" style="width: 130px;">未提交医嘱提交</button></li>		        
				        <li class="divider"></li>
				        <li><button id="btn_single_submit" class="btn btn-white" type="button" style="width: 130px;">单行提交</button></li>
				         <li class="divider"></li>
				        <li><button id="btn_group_submit" class="btn btn-white" type="button" style="width: 130px;">同组提交</button></li>
				    </ul>			    
				</div>
				<div class="btn-group" style="margin-left: 20px;">
				        <button id="btn_edit_time" class="btn btn-white" type="button" style="width: 100.69px;">
				        	<span class="glyphicon glyphicon-time" aria-hidden="true"></span>		修改时间
				        </button>	        
				</div>	    
			<!-- <button id='new_tag' onclick="page('toPatientList','选项卡名称')">打开新选项卡</button>此处就是点击，触发事件 -->
				<div class="btn-group" style="margin-left: 20px;">
                       	<select  id="type" name="type" class="selectpicker " data-dropup-auto="false" data-size="5" >
	  						<option value="1">临时医嘱</option>
	  						<option value="2">长期医嘱</option>
						</select>
					</div>

        </div>
        <div id="toolbar2" class="btn-group" >
			<div class="btn-group" >
				    <a id="dropdown1" class="btn btn-white  dropdown-toggle" data-toggle="dropdown" >
				      	 <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
				      	 <font color="#000000">医嘱编辑</font> <span class="caret"></span>
				    </a>
				    <ul class="dropdown-menu">
				        <li><button id="btn_addzhizhu2" class="btn btn-white" type="button" style="width: 130px;">添加医嘱</button></li>		        
				        <li class="divider"></li>
				        <li><button id="btn_edit2" class="btn btn-white" type="button" style="width: 130px;">修改医嘱</button></li>
				         <li class="divider"></li>
				        <li><button id="btn_delete2" class="btn btn-white" type="button" style="width: 130px;">作废医嘱</button></li>
				    </ul>			 		    
				</div>
				<div class="btn-group" style="margin-left: 20px;">
				    <a id="dropdown2" class="btn btn-white  dropdown-toggle" data-toggle="dropdown" >
				      	 <span class="glyphicon glyphicon-check" aria-hidden="true"></span>
				      	 <font color="#000000">医嘱提交</font> <span class="caret"></span>
				    </a>
				    <ul class="dropdown-menu">
				        <li><button id="btn_all_submit2" class="btn btn-white" type="button" style="width: 130px;">未提交医嘱提交</button></li>		        
				        <li class="divider"></li>
				        <li><button id="btn_single_submit2" class="btn btn-white" type="button" style="width: 130px;">单行提交</button></li>
				         <li class="divider"></li>
				        <li><button id="btn_group_submit2" class="btn btn-white" type="button" style="width: 130px;">同组提交</button></li>
				    </ul>			    
				</div>
				<div class="btn-group" style="margin-left: 20px;">
				    <a id="dropdown4" class="btn btn-white  dropdown-toggle" data-toggle="dropdown" >
				      	 <span class="glyphicon glyphicon-ban-circle" aria-hidden="true"></span>
				      	 <font color="#000000">医嘱停止</font> <span class="caret"></span>
				    </a>
				    <ul class="dropdown-menu">
				        <li><button id="btn_all_stop_submit" class="btn btn-white" type="button" style="width: 130px;">未提交医嘱停止</button></li>		        
				        <li class="divider"></li>
				        <li><button id="btn_single_stop_submit" class="btn btn-white" type="button" style="width: 130px;">单行停止</button></li>
				         <li class="divider"></li>
				        <li><button id="btn_group_stop_submit" class="btn btn-white" type="button" style="width: 130px;">同组停止</button></li>
				    </ul>			    
				</div>
				<div class="btn-group" style="margin-left: 20px;">
				        <button id="btn_edit_time2" class="btn btn-white" type="button" style="width: 100.69px;">
				         <span class="glyphicon glyphicon-time" aria-hidden="true"></span>		修改时间
		        		</button>	        
				</div>	    
			<!-- <button id='new_tag' onclick="page('toPatientList','选项卡名称')">打开新选项卡</button>此处就是点击，触发事件 -->
				<div class="btn-group" style="margin-left: 20px;">
                       	<select  id="type2" name="type2" class="selectpicker " data-dropup-auto="false" data-size="5" >
	  						<option value="1">临时医嘱</option>
	  						<option value="2">长期医嘱</option>
						</select>
					</div>

        </div> 	
        
        
        
        
		<div id="block3" style="transform: translateY(-10px);">
				<table id="tb_patient_message"></table>
			</div>
			
		<div id="block4" style="transform: translateY(-10px);">
				<table id="tb_patient_message2"></table>
			</div>	
			
		 <!-- <div class="modal inmodal fade" id="myModaEdit" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-lg" style=" margin-left: 5%;
			    margin-right: 5%;
			    width: 90%;">
					
						<div class="modal-content">
							<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							<h4 class="modal-title">修改数据</h4>
							</div>
							
							<div class="ibox-content">
	                     
	                     	<table id="tb_patient_message1"></table>
	                     
	                        <form  class="form-horizontal" id="FormEdit">
	                        	<div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">项目名称</label>
	                                    <div class="col-sm-4 form-group">
	                                        <input disabled="disabled" id="medicines_name2" name="medicines_name" type="text" class="form-control" >
	                                    </div>
	                            </div>	
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">规格</label>
	                                    <div class="col-sm-4 form-group">
	                                        <input disabled="disabled" id="medicines_specification2" name="medicines_specification" type="text" class="form-control"   >
	                                    </div>
	                            	
	                                <label class="col-sm-2 control-label">单位</label>
		                                <div class="col-sm-4 form-group">
	                                        <input disabled="disabled" id="medicines_unit2" name="medicines_unit" type="text" class="form-control"   >
	                                    </div>
		                             <label class="col-sm-2 control-label">收费单价</label>
		                                <div class="col-sm-4 form-group">
	                                        <input disabled="disabled" id="medicines_price2" name="medicines_price" type="text" class="form-control"   >
	                                    </div>
	                                    <div class="col-sm-1 form-group">
			                                <input style="width: 260px;" type="hidden" id="medicines_id2" name="medicined_id" 
			                                	type="text" class="form-control"   >
			                            </div>
			                            <div class="col-sm-1 form-group">
			                                <input style="width: 260px;" type="hidden" id="medical_orders_id2" name="medical_orders_id" 
			                                	type="text" class="form-control"   >
			                            </div>
			                             <div class="col-sm-1 form-group">
			                                <input style="width: 260px;" type="hidden" id="medical_orders_list_id2" name="medical_orders_list_id" 
			                                	type="text" class="form-control"   >
			                            </div>
	                            </div>
								<div class="hr-line-dashed"></div>
									<div class="form-group" style="margin-top: 20px;margin-bottom: 0px;">
				                    	<label class="col-sm-2 control-label">分组</label>
				                            <div class="col-sm-1 form-group">
				                                <input style="background: white; width: 60px;" id="group2" name="group" 
				                                	type="text" class="form-control"  value="1" >
				                            </div>
				                    	<script>
										    $("input[name='group']").TouchSpin({
										      verticalbuttons: true,
										    });
										</script>
				                        <label class="col-sm-2 control-label">数量</label>
				                            <div class="col-sm-2 form-group">
				                                <input style="background: white; width: 60px;" id="number2" name="number" 
				                                	type="text" class="form-control"  value="1" >
				                            </div>
				                    	<script>
										    $("input[name='number']").TouchSpin({
										      verticalbuttons: true,
										    });
										</script>
										<label class="col-sm-2 control-label">  &nbsp;&nbsp;滴速  </label>
				                    		 <div class="col-sm-3 form-group">
				                            	<select  id="speed2" name="speed" class="selectpicker" data-size="5" >
						    						<option value="">&nbsp;</option>
						    						<option value="45滴/分">45滴/分</option>
												    <option value="65滴/分">65滴/分</option>
												</select>
											</div>
				                        <label class="col-sm-2 control-label">  &nbsp;&nbsp;途径  </label>
				                    		 <div class="col-sm-3 form-group">
				                            	<select  id="ways2" name="ways" class="selectpicker " data-dropup-auto="false" data-size="5" >
						    						<option value="">&nbsp;</option>
						    						<option value="I.d 皮内注射">I.d 皮内注射</option>
												    <option value="I.v.gtt 静脉滴注">I.v.gtt 静脉滴注</option>
												    <option value="p.o. 口服">p.o. 口服</option> 
												    <option value="I.m 肌肉注射">I.m 肌肉注射</option>
												    <option value="I.h 皮下注射">I.h 皮下注射</option>  
												</select>
											</div>
										</div>
										<div class="form-group" style="margin-top: 20px;margin-bottom: 0px;">	
												<label class="col-sm-2 control-label">用法  </label>
					                    		 <div class="col-sm-3 form-group" style="margin-left: 2px;">
					                            	<textarea style="width:300px" id="direction2" name="direction"></textarea>
												</div>
											</div>		
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                                <div class="col-lg-7 col-sm-offset-9 ">
	                                    <button id="btn_update" class="btn btn-primary" type="button">修改</button>
	                                    <button id="btn_cancel1" class="btn btn-white" data-dismiss="modal">取消</button>
	                                </div>
	                            </div>
	                        </form>
	                    </div> 
							
							
						</div>
					</div>
				</div>  -->
				<div class="modal inmodal fade" id="myModaEdit_time" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-lg" style=" margin-left: 5%;
			    margin-right: 5%;
			    width: 90%;">
					
						<div class="modal-content">
							<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							<h4 class="modal-title">修改时间</h4>
							</div>
							
							<div class="ibox-content">
	                     
	                     	<table id="tb_patient_message1"></table>
	                     
	                        <form  class="form-horizontal" id="FormEdit_time">
	                        	<div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">项目名称</label>
	                                    <div class="col-sm-4 form-group">
	                                        <input disabled="disabled" id="medicines_name3" name="medicines_name" type="text" class="form-control" >
	                                    </div>
	                                    <div id="medicines_specificationa">
	                                <label  class="col-sm-2 control-label">规格</label>
	                                    <div class="col-sm-5 form-group">
	                                        <input disabled="disabled" id="medicines_specification3" name="medicines_specification" type="text" class="form-control"   >
	                                    </div> 
	                                    </div>   
	                            </div>	
	                           <!--  <div class="hr-line-dashed"></div> -->
	                            <div class="form-group">
	                            <label class="col-sm-2 control-label">分组</label>
				                            <div class="col-sm-1 form-group">
				                                <input disabled="disabled" style=" width: 42px;" id="group3" name="group" 
				                                	type="text" class="form-control"  value="1" >
				                            </div>
				                    	<!-- <script>
										    $("input[name='group']").TouchSpin({
										      verticalbuttons: true,
										    });
										</script> -->
				                        <label class="col-sm-2 control-label">数量</label>
				                            <div class="col-sm-2 form-group">
				                                <input disabled="disabled" style=" width: 42px;" id="number3" name="number" 
				                                	type="text" class="form-control"  value="1" >
				                            </div>
				                    	<!-- <script>
										    $("input[name='number']").TouchSpin({
										      verticalbuttons: true,
										    });
										</script> -->
	                                <label class="col-sm-2 control-label">单位</label>
		                                <div class="col-sm-4 form-group">
	                                        <input disabled="disabled" id="medicines_unit3" name="medicines_unit" type="text" class="form-control"   >
	                                    </div>
		                             <label class="col-sm-2 control-label">收费单价</label>
		                                <div class="col-sm-4 form-group">
	                                        <input disabled="disabled" id="medicines_price3" name="medicines_price" type="text" class="form-control"   >
	                                    </div>
	                                    <!-- <div class="col-sm-1 form-group">
			                                <input style="width: 260px;" type="hidden" id="medicines_id3" name="medicined_id" 
			                                	type="text" class="form-control"   >
			                            </div>
			                            <div class="col-sm-1 form-group">
			                                <input style="width: 260px;" type="hidden" id="medical_orders_id3" name="medical_orders_id" 
			                                	type="text" class="form-control"   >
			                            </div> -->
			                             <div class="col-sm-1 form-group">
			                                <input style="width: 260px;" type="hidden" id="medical_orders_list_id3" name="medical_orders_list_id" 
			                                	type="text" class="form-control"   >
			                            </div>
			                            <div class="col-sm-1 form-group">
			                                <input style="width: 260px;" type="hidden" id="check_status3" name="check_status" 
			                                	type="text" class="form-control"   >
			                            </div>
			                            <div class="col-sm-1 form-group">
			                                <input style="width: 260px;" type="hidden" id="medical_orders_id3" name="medical_orders_id" 
			                                	type="text" class="form-control"   >
			                            </div>			                            
			                            <div class="col-sm-1 form-group">
			                                <input style="width: 260px;" type="hidden" id="medical_orders_list_type3" name="medical_orders_list_type" 
			                                	type="text" class="form-control"   >
			                            </div>
			                            <div class="col-sm-1 form-group">
			                                <input style="width: 260px;" type="hidden" id="end_ruyuan_time3" name="end_time" 
			                                	type="text" class="form-control"   >
			                            </div>
	                            </div>
								<!-- <div class="hr-line-dashed"></div> -->
									<div class="form-group" style="margin-top: 20px;margin-bottom: 0px;">
										<div id="speed3a"> 
										<label class="col-sm-2 control-label">  &nbsp;&nbsp;滴速  </label>
				                    		 <div  class="col-sm-3 form-group">
				                            	<select disabled="disabled" id="speed3" name="speed" class="selectpicker" data-size="5" >
						    						<option value="">&nbsp;</option>
						    						<option value="45滴/分">45滴/分</option>
												    <option value="65滴/分">65滴/分</option>
												</select>
											</div>
										</div>
										<div  id="ways3a">	
				                        <label class="col-sm-2 control-label">  &nbsp;&nbsp;途径  </label>
				                    		 <div  class="col-sm-3 form-group">
				                            	<select disabled="disabled" id="ways3" name="ways" class="selectpicker " data-dropup-auto="false" data-size="5" >
						    						<option value="">&nbsp;</option>
						    						<option value="I.d 皮内注射">I.d 皮内注射</option>
												    <option value="I.v.gtt 静脉滴注">I.v.gtt 静脉滴注</option>
												    <option value="p.o. 口服">p.o. 口服</option> 
												    <option value="I.m 肌肉注射">I.m 肌肉注射</option>
												    <option value="I.h 皮下注射">I.h 皮下注射</option>  
												</select>
											</div>
										</div>	
											<label class="col-sm-2 control-label">用法  </label>
					                    		 <div class="col-sm-5 form-group" style="margin-left: 2px;">
					                            	<input disabled="disabled"  id="direction3" name="direction" type="text" class="form-control"></input>
												</div>
										</div>
										<div class="form-group" style="margin-top: 20px;margin-bottom: 0px;">	
												<label class="col-sm-2 control-label" for="txt_search_start_ruyuantime">开始日期</label>
												<div class="col-sm-5">
													<input  id="start_ruyuan_time3" type="text" class="form-control" name="start_time">
													<!-- value="2019-02-27 23:30:57" -->
												</div>
											</div>		
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                                <div class="col-sm-offset-7">
	                                    <button id="btn_update_singel_time" class="btn btn-primary" type="button">修改单条时间</button>
	                                   <button id="btn_update_group_time" class="btn btn-primary" type="button">修改同组时间</button>
	                                    <button id="btn_cancel1" class="btn btn-white" data-dismiss="modal">取消</button>
	                                </div>
	                            </div>
	                        </form>
	                    </div> 
							
							
						</div>
					</div>
				</div>
				
				 
				<div class="modal inmodal fade" id="myModaEdit_time2" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-lg" style=" margin-left: 5%;
			    margin-right: 5%;
			    width: 90%;">
					
						<div class="modal-content">
							<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							<h4 class="modal-title">修改时间</h4>
							</div>
							
							<div class="ibox-content">
	                     
	                     	<table id="tb_patient_message1"></table>
	                     
	                        <form  class="form-horizontal" id="FormEdit_time2">
	                        	<div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">项目名称</label>
	                                    <div class="col-sm-4 form-group">
	                                        <input disabled="disabled" id="medicines_name4" name="medicines_name" type="text" class="form-control" >
	                                    </div>
	                                    <div id="medicines_specification4a">
	                                <label class="col-sm-2 control-label">规格</label>
	                                    <div class="col-sm-5 form-group">
	                                        <input disabled="disabled" id="medicines_specification4" name="medicines_specification" type="text" class="form-control"   >
	                                    </div> 
	                                    </div>   
	                            </div>	
	                           <!--  <div class="hr-line-dashed"></div> -->
	                            <div class="form-group">
	                            <label class="col-sm-2 control-label">分组</label>
				                            <div class="col-sm-1 form-group">
				                                <input disabled="disabled" style=" width: 42px;" id="group4" name="group" 
				                                	type="text" class="form-control"  value="1" >
				                            </div>
				                    	<!-- <script>
										    $("input[name='group']").TouchSpin({
										      verticalbuttons: true,
										    });
										</script> -->
				                        <label class="col-sm-2 control-label">数量</label>
				                            <div class="col-sm-2 form-group">
				                                <input disabled="disabled" style=" width: 42px;" id="number4" name="number" 
				                                	type="text" class="form-control"  value="1" >
				                            </div>
				                    	<!-- <script>
										    $("input[name='number']").TouchSpin({
										      verticalbuttons: true,
										    });
										</script> -->
	                                <label class="col-sm-2 control-label">单位</label>
		                                <div class="col-sm-4 form-group">
	                                        <input disabled="disabled" id="medicines_unit4" name="medicines_unit" type="text" class="form-control"   >
	                                    </div>
		                             <label class="col-sm-2 control-label">收费单价</label>
		                                <div class="col-sm-4 form-group">
	                                        <input disabled="disabled" id="medicines_price4" name="medicines_price" type="text" class="form-control"   >
	                                    </div>
	                                    <!-- <div class="col-sm-1 form-group">
			                                <input style="width: 260px;" type="hidden" id="medicines_id3" name="medicined_id" 
			                                	type="text" class="form-control"   >
			                            </div>
			                            <div class="col-sm-1 form-group">
			                                <input style="width: 260px;" type="hidden" id="medical_orders_id3" name="medical_orders_id" 
			                                	type="text" class="form-control"   >
			                            </div> -->
			                             <div class="col-sm-1 form-group">
			                                <input style="width: 260px;" type="hidden" id="medical_orders_list_id4" name="medical_orders_list_id" 
			                                	type="text" class="form-control"   >
			                            </div>
			                            <div class="col-sm-1 form-group">
			                                <input style="width: 260px;" type="hidden" id="check_status4" name="check_status" 
			                                	type="text" class="form-control"   >
			                            </div>
			                            <div class="col-sm-1 form-group">
			                                <input style="width: 260px;"  type="hidden" id="medical_orders_id41" name="medical_orders_id" 
			                                	type="text" class="form-control"   >
			                            </div>			                            
			                            <div class="col-sm-1 form-group">
			                                <input style="width: 260px;" type="hidden" id="medical_orders_list_type4" name="medical_orders_list_type" 
			                                	type="text" class="form-control"   >
			                            </div>
			                            <div class="col-sm-1 form-group">
			                                <input style="width: 260px;"  type="hidden" id="stop_doctor_id4" name="stop_doctor_id" 
			                                	type="text" class="form-control"   >
			                            </div>
	                            </div>
								<!-- <div class="hr-line-dashed"></div> -->
									<div class="form-group" style="margin-top: 20px;margin-bottom: 0px;">
									<div  id="speed4a">  
										<label class="col-sm-2 control-label">  &nbsp;&nbsp;滴速  </label>
				                    		 <div  class="col-sm-3 form-group">
				                            	<select disabled="disabled" id="speed4" name="speed" class="selectpicker" data-size="5" >
						    						<option value="">&nbsp;</option>
						    						<option value="45滴/分">45滴/分</option>
												    <option value="65滴/分">65滴/分</option>
												</select>
											</div>
										</div>
										<div id="ways4a">	
				                        <label class="col-sm-2 control-label">  &nbsp;&nbsp;途径  </label>
				                    		 <div class="col-sm-3 form-group">
				                            	<select disabled="disabled" id="ways4" name="ways" class="selectpicker " data-dropup-auto="false" data-size="5" >
						    						<option value="">&nbsp;</option>
						    						<option value="I.d 皮内注射">I.d 皮内注射</option>
												    <option value="I.v.gtt 静脉滴注">I.v.gtt 静脉滴注</option>
												    <option value="p.o. 口服">p.o. 口服</option> 
												    <option value="I.m 肌肉注射">I.m 肌肉注射</option>
												    <option value="I.h 皮下注射">I.h 皮下注射</option>  
												</select>
											</div>
											</div>
											<label class="col-sm-2 control-label">用法  </label>
					                    		 <div class="col-sm-5 form-group" style="margin-left: 2px;">
					                            	<input disabled="disabled"  id="direction4" name="direction" type="text" class="form-control"></input>
												</div>
										</div>
										<div class="form-group" style="margin-top: 20px;margin-bottom: 0px;">	
												<label class="col-sm-2 control-label" for="txt_search_start_ruyuantime">开始日期</label>
												<div class="col-sm-5">
													<input  id="start_ruyuan_time4" type="text" class="form-control" name="start_time">
													<!-- value="2019-02-27 23:30:57" -->
												</div>
												<label class="col-sm-2 control-label" for="txt_search_start_ruyuantime">停止日期</label>
												<div class="col-sm-5">
													<input  id="end_ruyuan_time4" type="text" class="form-control" name="end_time">
													<!-- value="2019-02-27 23:30:57" -->
												</div>
											</div>		
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                                <div class="col-sm-offset-7">
	                                    <button id="btn_update_singel_time2" class="btn btn-primary" type="button">修改单条时间</button>
	                                   <button id="btn_update_group_time2" class="btn btn-primary" type="button">修改同组时间</button>
	                                    <button id="btn_cancel2" class="btn btn-white" data-dismiss="modal">取消</button>
	                                </div>
	                            </div>
	                        </form>
	                    </div> 
							
							
						</div>
					</div>
				</div> 
		<script type="text/javascript">
		$("#block2").hide();
        $("#block4").hide();
        $("#yongyao").hide();
        $("#feiyongyao").hide();
        $("#FormYizhuAdd").hide();
        $("#FormYizhuAdd2").hide();
        $("#huli").hide();
        $("#huayan").hide();
		</script>
		<script type="text/javascript">
		
        $("#dropdown1").attr("disabled","disabled");
        $("#dropdown2").attr("disabled","disabled");
        $("#dropdown3").attr("disabled","disabled");
        $("#btn_edit_time").attr("disabled","disabled");
        $("#type").prop('disabled', true);
        $("#type").selectpicker('refresh');
        //$("#type").attr("disabled","disabled");
        document.getElementById("dropdown1").disabled=true;
        document.getElementById("dropdown2").disabled=true;
		$().ready(function() {	
			$("#times").val(1);
			$("#sum_number").val(1);
			$("#times3").val(1);
			$("#sum_number3").val(1);
	        search();//举报对象名称输入框显示
	        search2();//举报对象名称输入框显示
	        search3();        	
	      
	        //test
	        
	         var todayYear=(new Date()).getFullYear();
	        var todayMonth=(new Date()).getMonth();
	        var todayDay=(new Date()).getDate();
	        var todayTime=(new Date(todayYear,todayMonth,todayDay,'23','59','59')).getTime();//毫秒
	        var todayYear2=(new Date()).getFullYear();
	        var todayMonth2=(new Date()).getMonth();
	        var todayDay2=(new Date()).getDate();
	        var todayTime2=(new Date(todayYear2,todayMonth2,todayDay2,'00','00','00')).getTime();//毫秒
	        var a = changeDateFormat(todayTime);
	        var b = changeDateFormat(todayTime2);
	    	var c = CurentTime();
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
	        console.log(a);
	        console.log(b);
	        console.log(c);
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
    		    };
    		}; 
    		
    		//selectid();
	        function selectid(){
      			 $.ajax({
					url: "/hospital/add_everyday_medical_orders_action",
					type:"get",
					data:{
						start_time : '2019-04-14 00:00:00',
						end_time : '2019-04-14 23:59:59',
					},
					 success: function (data) {
						console.log(data);
			         },
			         error:function(){
			        	 
					 }
				});	 
      			 }	
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
		});
		var TableInit = function() {
		
		var oTableInit = new Object();
		//初始化Table
		oTableInit.Init = function() {
			$('#tb_patient_message').bootstrapTable({
				url: '/hospital/selectMedical_Orders_List', //请求后台的URL（*）
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
				//height: $(window).height()*0.77,
				columns:
				[
	                 [  {
	     					checkbox: true,
	     					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	     				},{
	                        valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	                        field: 'medical_orders_list_type',
	    					title: '医嘱',
	    					formatter : function(value, row, index) {
	                            if (value == 1) {
	                            	value = '临时';
	                            	color = 'Black';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';;
	                                //console.log(row['deparment.deparment_name']);
	                            }
	                            return value;
	                       }
	                     },
	                    {
	                        valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	                        field: 'group',
	    					title: '组'
	                     },
	                     {
	                        valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	                        field: 'medicines.medicines_name',
	    					title: '项目名称',
	    					formatter : function(value, row, index) {
	                            if (value == null) {
	                            	if(row.project!=null){
	                            		value = row.project.project_name;
		                                //console.log(row.project.project_name);
		                                return  value ;
	                            	}else if(row.inspection_item!=null){
	                            		value = row.inspection_item.inspection_item_name;
		                                //console.log(row.project.project_name);
		                                return  value ;
	                            	}
	                            	
	                                
	                            }/* else{
	                            	console.log(value);
	                            } */
	                            
                                //console.log(row.project['project_name']);
	                            return value;
	                       }
	                     }, {
	                    	valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2, 
	     					field: 'medicines.medicines_specification',
	    					title: '规格'
	    				}, {
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'number',
	    					title: '数量'
	    				}, {
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'medicines.medicines_unit',
	    					title: '单位',
	    					formatter : function(value, row, index) {
	                            if (value == null) {
	                            	if(row.project!=null){
	                            		value = row.project.project_unit;
		                                //console.log(row.project.project_name);
		                                return  value ;
	                            	}else if(row.inspection_item!=null){
	                            		value = row.inspection_item.inspection_item_unit;
		                                //console.log(row.project.project_name);
		                                return  value ;
	                            	}
	                            	
	                                
	                            }/* else{
	                            	console.log(value);
	                            } */
	                            
                                //console.log(row.project['project_name']);
	                            return value;
	                       }
	    				},/* {
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'medicines.medicines_price',
	    					title: '售价',
	    					formatter : function(value, row, index) {
	                            if (value == null) {
	                            	value = row.project.project_price;
	                                //console.log(row.project.project_name);
	                                return  value ;
	                                
	                            }
	                            
                                //console.log(row.project['project_name']);
	                            return value;
	                       }
	    				}, */{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'medicines.medicines_form',
	    					title: '剂型'
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'speed',
	    					title: '滴速'
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'ways',
	    					title: '途径',
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'direction',
	    					title: '用法',
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'start_status',
	    					title: '提交',
	    					formatter : function(value, row, index) {
	                            if (value == true) {
	                            	value = '已提交';
	                            	color = 'Black';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';
	                                //console.log(row['deparment.deparment_name']);
	                            }else if(value == false){
	                            	value = '未提交';
	                            	color = 'Red';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';
	                            }
	                            return value;
	                       }
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'check_status',
	    					title: '校对',
	    					formatter : function(value, row, index) {
	                            if (value == 1) {
	                            	value = '已校对';
	                            	color = 'Black';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';
	                                //console.log(row['deparment.deparment_name']);
	                            }else if(value == 0){
	                            	value = '未校对';
	                            	color = 'Red';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';
	                            }else if(value == 2){
	                            	value = '回退';
	                            	color = 'Red';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';
	                            }
	                            return value;
	                       }
	    				},
	                     {
	                         title: "医嘱执行",
	                         valign:"middle",
	                         align:"center",
	                         colspan: 5,
	                         rowspan: 1
	                     }
	                     /* {
	                         title: "松下",
	                         valign:"middle",
	                         align:"center",
	                         colspan: 2,
	                         rowspan: 1
	                     } */
	                ],
	                 [
	                    {
	                         field: 'start_time',
	                         title: '开始时间',
	                        valign:"middle",
	                         align:"center",
	                          formatter: function (value, row, index) {
				                    return changeDateFormat(value);
				                }, 
	                     },
	                     {
	                         field: 'user.user_name',
	                        title: '开嘱医生',
	                         valign:"middle",
	                        align:"center",
	                        formatter : function(value, row, index) {
	                            if(row['check_status'] == 2){
	                            	color = 'Red';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';
	                            }
	                            return value;
	                       }
	                     },
	                      {
	                         field: 'action_time',
	                        title: '执行时间',
	                         valign:"middle",
	                         align:"center",
	                         formatter: function (value, row, index) {
				                    return changeDateFormat(value);
				                },
	                    },
	                     {
	                         field: 'user1.user_name',
	                         title: '执行护士',
	                         valign:"middle",
	                         align:"center"
	                     } 
	                 ]
	             ],
				//事件处理
				//当选择（check）此行时触发
				onDblClickRow: function (row, $element) {
					/* turnnew();
					function turnnew(){
						page("toPatientList","123");
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
					} */
				},
				onCheck: function (row, $element) {	
					
					var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
					var row = arrselectedData[0];
					console.log(row);
					count = count+1;
					//console.log(count);
					if(count>1){
						$("#btn_edit").attr("disabled","disabled");
						$("#btn_edit_time").attr("disabled","disabled");
						$("#btn_single_submit").attr("disabled","disabled");
						$("#btn_group_submit").attr("disabled","disabled");
					}
				},
				onUncheck: function (row, $element) {			
					count = count-1;
					if(count<=1){
						$("#btn_edit").removeAttr("disabled");
						$("#btn_edit_time").removeAttr("disabled");
						$("#btn_single_submit").removeAttr("disabled");
						$("#btn_group_submit").removeAttr("disabled");
					}
					//console.log(count);    
				},
				//当全选行时触发，所需的参数如下
				onCheckAll: function (row) {
					$("#btn_edit").attr("disabled","disabled");
					$("#btn_edit_time").attr("disabled","disabled");
					$("#btn_single_submit").attr("disabled","disabled");
					$("#btn_group_submit").attr("disabled","disabled");
				},
				onUncheckAll: function (row) {
					count = 0;
					$("#btn_edit").removeAttr("disabled");
					$("#btn_edit_time").removeAttr("disabled");
					$("#btn_single_submit").removeAttr("disabled");
					$("#btn_group_submit").removeAttr("disabled");
				},
				//当重置（reset）表的视图时触发
				onResetView: function () {
					count = 0;
					$("#btn_edit").removeAttr("disabled");
					$("#btn_edit_time").removeAttr("disabled");
					$("#btn_single_submit").removeAttr("disabled");
					$("#btn_group_submit").removeAttr("disabled");
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

		        return date.getFullYear() + "-" + month  + "-" + currentDate + " " + hours + ":" + minutes + ":" + seconds ;
		    }
		};
		
		//得到查询的参数
			oTableInit.queryParams = function(params) {
				var param = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
					pageSize: params.pageSize, //页面大小
					pageNumber: params.pageNumber, //页码
					patient_id: $("#txt_search_departmentname1").val(),	
				};
				return param;
			};
		return oTableInit;
	};	
	
var TableInit2 = function() {
		
		var oTableInit2 = new Object();
		//初始化Table
		oTableInit2.Init = function() {
			$('#tb_patient_message2').bootstrapTable({
				url: '/hospital/selectMedical_Orders_List_Long', //请求后台的URL（*）
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
				showColumns: true, //是否显示所有的列
				showRefresh: true, //是否显示刷新按钮
				minimumCountColumns: 2, //最少允许的列数
				clickToSelect: true, //是否启用点击选中行
				//height: 500, //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
				uniqueId: "medical_orders_list_id", //每一行的唯一标识，一般为主键列
				showToggle: true, //是否显示详细视图和列表视图的切换按钮
				cardView: false, //是否显示详细视图
				detailView: false, //是否显示父子表
				//height: $(window).height()*0.77,
				columns:
				[
	                 [  {
	     					checkbox: true,
	     					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	     				},{
	                        valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	                        field: 'medical_orders_list_type',
	    					title: '医嘱',
	    					formatter : function(value, row, index) {
	                            if (value == 2) {
	                            	value = '长期';
	                            	color = 'Black';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';;
	                                //console.log(row['deparment.deparment_name']);
	                            }
	                            return value;
	                       }
	                     },
	                     {
		                        valign:"middle",
		                        align:"center",
		                        colspan: 1,
		                        rowspan: 2,
		                        field: 'group',
		    					title: '组'
		                     },
	                     {
	                        valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	                        field: 'medicines.medicines_name',
	    					title: '项目名称',
	    					formatter : function(value, row, index) {
	                            if (value == null) {
	                            	if(row.project!=null){
	                            		value = row.project.project_name;
		                                //console.log(row.project.project_name);
		                                return  value ;
	                            	}else if(row.inspection_item!=null){
	                            		value = row.inspection_item.inspection_item_name;
		                                //console.log(row.project.project_name);
		                                return  value ;
	                            	}
	                            	
	                                
	                            }/* else{
	                            	console.log(value);
	                            } */
	                            
                                //console.log(row.project['project_name']);
	                            return value;
	                       }
	                     }, {
	                    	valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2, 
	     					field: 'medicines.medicines_specification',
	    					title: '规格'
	    				}, {
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'number',
	    					title: '数量',
	                        formatter : function(value, row, index) {
	                            if(row.check_status == 2){
	                            	color = 'Red';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';
	                            }
	                            return value;
	                       }
	    				}, {
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'medicines.medicines_unit',
	    					title: '单位',
	    					formatter : function(value, row, index) {
	                            if (value == null) {
	                            	if(row.project!=null){
	                            		value = row.project.project_unit;
		                                //console.log(row.project.project_name);
		                                return  value ;
	                            	}else if(row.inspection_item!=null){
	                            		value = row.inspection_item.inspection_item_unit;
		                                //console.log(row.project.project_name);
		                                return  value ;
	                            	}
	                            	
	                                
	                            }/* else{
	                            	console.log(value);
	                            } */
	                            
                                //console.log(row.project['project_name']);
	                            return value;
	                       }
	    				}/* ,{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'medicines.medicines_price',
	    					title: '售价'
	    				} */,{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'medicines.medicines_form',
	    					title: '剂型'
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'speed',
	    					title: '滴速'
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'ways',
	    					title: '途径',
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'direction',
	    					title: '用法',
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'start_status',
	    					title: '提交',
	    					formatter : function(value, row, index) {
	                            if (value == 1) {
	                            	value = '已提交';
	                            	color = 'Black';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';
	                                //console.log(row['deparment.deparment_name']);
	                            }else if(value == 0){
	                            	value = '未提交';
	                            	color = 'Red';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';
	                            }
	                            return value;
	                       }
	    				},{
	    					valign:"middle",
	                        align:"center",
	                        colspan: 1,
	                        rowspan: 2,
	    					field: 'check_status',
	    					title: '校对',
	    					formatter : function(value, row, index) {
	                            if (value == true) {
	                            	value = '已校对';
	                            	color = 'Black';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';
	                                //console.log(row['deparment.deparment_name']);
	                            }else if(value == false){
	                            	value = '未校对';
	                            	color = 'Red';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';
	                            }else if(value == 2){
	                            	value = '回退';
	                            	color = 'Red';
	                                return '<div  style="color: ' + color + '">' + value + '</div>';
	                            }
	                            return value;
	                       }
	    				},
	                     {
	                         title: "医嘱执行",
	                         valign:"middle",
	                         align:"center",
	                         colspan: 4,
	                         rowspan: 1
	                     },{
	                         title: "医嘱停止",
	                         valign:"middle",
	                         align:"center",
	                         colspan: 2,
	                         rowspan: 1
	                     }
	                     /* {
	                         title: "松下",
	                         valign:"middle",
	                         align:"center",
	                         colspan: 2,
	                         rowspan: 1
	                     } */
	                ],
	                 [
	                    {
	                         field: 'start_time',
	                         title: '开始时间',
	                        valign:"middle",
	                         align:"center",
	                          formatter: function (value, row, index) {
				                    return changeDateFormat(value);
				                }, 
	                     },
	                     {
	                         field: 'user.user_name',
	                        title: '开嘱医生',
	                         valign:"middle",
	                        align:"center"
	                     },
	                      {
	                         field: 'action_time',
	                        title: '执行时间',
	                         valign:"middle",
	                         align:"center",
	                         formatter: function (value, row, index) {
				                    return changeDateFormat(value);
				                },
	                    },
	                     {
	                         field: 'user1.user_name',
	                         title: '执行护士',
	                         valign:"middle",
	                         align:"center"
	                     },{
	                         field: 'end_time',
	                         title: '停止时间',
	                         valign:"middle",
	                         align:"center",
	                         formatter: function (value, row, index) {
				                    return changeDateFormat(value);
				                },
	                     },{
	                         field: 'user2.user_name',
	                         title: '停止医生',
	                         valign:"middle",
	                         align:"center"
	                     }
	                 ]
	             ],
				//事件处理
				//当选择（check）此行时触发
				onDblClickRow: function (row, $element) {
					/* turnnew();
					function turnnew(){
						page("toPatientList","123");
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
					} */
				},
				onCheck: function (row, $element) {	
					
					var arrselectedData = $('#tb_patient_message2').bootstrapTable('getSelections');
					var row = arrselectedData[0];
					console.log(row);
					count = count+1;
					//console.log(count);
					if(count>1){
						$("#btn_edit2").attr("disabled","disabled");
						$("#btn_edit_time2").attr("disabled","disabled");
						$("#btn_single_submit2").attr("disabled","disabled");
						$("#btn_group_submit2").attr("disabled","disabled");
					}
				},
				onUncheck: function (row, $element) {			
					count = count-1;
					if(count<=1){
						$("#btn_edit2").removeAttr("disabled");
						$("#btn_edit_time2").removeAttr("disabled");
						$("#btn_single_submit2").removeAttr("disabled");
						$("#btn_group_submit2").removeAttr("disabled");
					}
					//console.log(count);    
				},
				//当全选行时触发，所需的参数如下
				onCheckAll: function (row) {
					$("#btn_edit2").attr("disabled","disabled");
					$("#btn_edit_time2").attr("disabled","disabled");
					$("#btn_single_submit2").attr("disabled","disabled");
					$("#btn_group_submit2").attr("disabled","disabled");
				},
				onUncheckAll: function (row) {
					count = 0;
					$("#btn_edit2").removeAttr("disabled");
					$("#btn_edit_time2").removeAttr("disabled");
					$("#btn_single_submit2").removeAttr("disabled");
					$("#btn_group_submit2").removeAttr("disabled");
				},
				//当重置（reset）表的视图时触发
				onResetView: function () {
					count = 0;
					$("#btn_edit2").removeAttr("disabled");
					$("#btn_edit_time2").removeAttr("disabled");
					$("#btn_single_submit2").removeAttr("disabled");
					$("#btn_group_submit2").removeAttr("disabled");
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

		        return date.getFullYear() + "-" + month  + "-" + currentDate + " " + hours + ":" + minutes + ":" + seconds ;
		    }
		};
		
		//得到查询的参数
			oTableInit2.queryParams = function(params) {
				var param = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
					pageSize: params.pageSize, //页面大小
					pageNumber: params.pageNumber, //页码
					patient_id: $("#txt_search_departmentname1").val(),	
				};
				return param;
			};
		return oTableInit2;
	};
		var TableInit1 = function() {
		//console.log(1111);
		var oTableInit1 = new Object();
		//初始化Table
		oTableInit1.Init = function() {
			$('#tb_patient_message1').bootstrapTable({
				url: '/hospital/selectAll_UsePatient_message_doctor', //请求后台的URL（*）
				method: 'get', //请求方式（*）
				//toolbar: '#toolbar', //工具按钮用哪个容器
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
				//showColumns: true, //是否显示所有的列
				//showRefresh: true, //是否显示刷新按钮
				minimumCountColumns: 2, //最少允许的列数
				clickToSelect: true, //是否启用点击选中行
				height: 500, //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
				uniqueId: "patient_id", //每一行的唯一标识，一般为主键列
				//showToggle: true, //是否显示详细视图和列表视图的切换按钮
				cardView: false, //是否显示详细视图
				detailView: false, //是否显示父子表
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
				},/* {
					field: '',
					title: '预交款总额'
				},{
					field: '',
					title: '已用总额'
				},{
					field: '',
					title: '余额'
				}, *//* {
					field: 'deparment.deparment_name',
					title: '科室',
					formatter : function(value, row, index) {
                        if (row['deparment_id'] == -2) {
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
                        if (row['room_id'] == -2) {
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
                        if (row['bed_id'] == -2) {
                        	value = '未分配';
                        	color = 'Black';
                            return '<div  style="color: ' + color + '">' + value + '</div>';;
                            //console.log(row['deparment.deparment_name']);
                        }
                        return value;
                   }
				}, */{
					field: 'diagnosis_a',
					title: '入院诊断' 
				},{
					field: 'user.user_name',
					title: '主治医生',
					/* formatter : function(value, row, index) {
                        if (row['patient_id'] == null) {
                        	value = '未分配';
                        	color = 'Black';
                            return '<div  style="color: ' + color + '">' + value + '</div>';;
                            //console.log(row['deparment.deparment_name']);
                        }
                        return value;
                   } */
				},],
				//事件处理
				//当选择（check）此行时触发
				onDblClickRow: function (row, $element) {							
					console.log(row);
					
					$("#myModaAdd").modal('hide');
					$('#patient_message_id1').val(row.patient.patient_id);
					$('#deparment_name1').val(row.deparment.deparment_name);
					$('#ruyuan_time1').val(changeDateFormat(row.ruyuan_time));
					$('#patient_name1').val(row.patient.patient_name);
					$('#age1').val(row.patient.age);
					$('#doctor_name1').val(row.user.user_name);
					$('#room_name1').val(row.room.room_name);
					$('#bed_name1').val(row.bed.bed_name);
					$('#diagnosis_a1').val(row.diagnosis_a);
					$('#dropdown1').removeAttr("disabled");
					$('#dropdown2').removeAttr("disabled");
					$('#dropdown3').removeAttr("disabled");
					$('#btn_edit_time').removeAttr("disabled");
					$('#type').prop('disabled', false);
					$('#type').selectpicker('refresh');
					//$('#type').removeAttr("disabled");
					//$('#type').removeAttr("disabled");
			        //document.getElementById("type").disabled=false;
			        document.getElementById("dropdown1").disabled=false;
			        document.getElementById("dropdown2").disabled=false;
			        $("#block2").hide();
			        $("#block4").hide();
			        $("#yongyao").hide();
			        $("#feiyongyao").hide();
			        //document.getElementById("FormYizhuAdd").reset();
					document.getElementById("FormYizhuEdit").reset();
					$('#cate1').selectpicker('val',0);
			        //查询条件
			        $('#txt_search_departmentname1').val(row.patient.patient_id);
			        //刷新表格
			        $('#tb_patient_message').bootstrapTable('refreshOptions',{pageNumber:1,pageSize:10});
			        var myDate = new Date();
			        var today = myDate.toLocaleDateString();     //获取当前日期
			        var time = CurentTime();
			        function CurentTime()
			        { 
			            var now = new Date();
			            var year = now.getFullYear();       //年
			            var month = now.getMonth() + 1;     //月
			            var day = now.getDate();            //日
			            var clock = year + "-";
			            if(month < 10)
			                clock += "0";
			            clock += month + "-";
			            if(day < 10)
			                clock += "0";
			            clock += day + " ";
			            return(clock); 
			        }; 
		        	//新增医嘱
			        buildYiZhu(row.patient.patient_id,time);
			        
			        function buildYiZhu(patient_id,time){
			        	 $.ajax({
								url: "/hospital/buildYiZhu",
								type:"post",
								data:{
									patient_id : patient_id,
									doctor_id : "${USER.user_work_id}",
									start_time: time,
								},
								 success: function (data) {
									 console.log(data);
									 swal({
					                	   title:"导入成功",
					                	   text:"",
					                	   type:"success"
					                   });
					                showmdical_orders_id(row.patient.patient_id);
						         },
						         error:function(){
						        	 swal({
					                	   title:"导入失败",
					                	   text:"",
					                	   type:"error"
					                   });
								 }

							});
			        	 console.log(time);
			        };
			        function showmdical_orders_id(patient_id){
			        	 $.ajax({
								url: "/hospital/showMedical_Orders_Id",
								type:"get",
								data:{
									patient_id : patient_id,
								},
								 success: function (data) {
					                console.log(data);
					                $('#medical_orders_id1').val(data);
					                $('#medical_orders_id4').val(data);
						         },
						         error:function(){
						        	 swal({
					                	   title:"导入失败",
					                	   text:"",
					                	   type:"error"
					                   });
								 }

							});
			        }
					
				},
				onCheck: function (row, $element) {							
					
				},
				onUncheck: function (row, $element) {
					 
				},
				//当全选行时触发，所需的参数如下
				onCheckAll: function (row) {
					
				},
				onUncheckAll: function (row) {
					
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

		        return date.getFullYear() + "-" + month /* + "-" + currentDate + " " + hours + ":" + minutes + ":" + seconds */;
		    }
		};
		
		
		//得到查询的参数
		
			oTableInit1.queryParams = function(params) {
				var param = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
					pageSize: params.pageSize, //页面大小
					pageNumber: params.pageNumber, //页码
					doctor_id :"${USER.user_work_id}",
					role_id :"${USER.role_id}",
					patient_id: $("#txt_search_departmentname").val(),	
				};
				return param;
			};
		
		
		return oTableInit1;
	};	
		
		var ButtonInit = function() {
		var oInit = new Object();
		//var postdata = {};
		oInit.Init = function() {
			//初始化页面上面的按钮事件
			//修改按钮					
			$(document).on('click', "#btn_edit",function(){									
				var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
				var row = arrselectedData[0];						
				if (arrselectedData.length <= 0) {
					swal({
	                	   title:"请选中一行",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else if(arrselectedData.length > 0 && row.check_status == true){
                	swal({
	                	   title:"该医嘱已校对",
	                	   text:"不可以修改",
	                	   type:"warning"
	                   });
                }else{
                	//$("#myModaEdit").modal('show');
                	$("#block2").show();
                	$("#FormYizhuEdit").show();
                	$("#seacher").show();
                	$('#cate1').selectpicker('val',0);
                	$("#cate1").prop('disabled', true);
                    $("#cate1").selectpicker('refresh');
                	$("#FormYizhuAdd").hide();
                	if(row.medicines != null){
                		$('#edit_specification').show();
      			        $('#edit_ways').show();
 			            $('#edit_speed').show(); 
                		$('#medicines_name2').val(row.medicines.medicines_name);
      			        $('#medicines_specification2').val(row.medicines.medicines_specification);
      			        $('#medicines_unit2').val(row.medicines.medicines_unit);
      			        $('#medicines_price2').val(row.medicines.medicines_price);
      			        $('#ways2').selectpicker('val',row.ways);
   			            $('#speed2').selectpicker('val',row.speed);
                	}else if(row.project != null){
                		$('#medicines_name2').val(row.project.project_name);
                		$('#edit_specification').hide();
      			        $('#edit_ways').hide();
 			            $('#edit_speed').hide();
      			        $('#medicines_unit2').val(row.project.project_unit);
      			        $('#medicines_price2').val(row.project.project_price);
      			        
                	}else if(row.inspection_item != null){
                		$('#medicines_name2').val(row.inspection_item.inspection_item_name);
                		$('#edit_specification').hide();
      			        $('#edit_ways').hide();
 			            $('#edit_speed').hide();
      			        $('#medicines_unit2').val(row.inspection_item.inspection_item_unit);
      			        $('#medicines_price2').val(row.inspection_item.inspection_item_pirce);
      			        
                	}
                	
  			      	/* $('#medicines_id2').val(row.medicines.medicines_id);
  			        $('#medical_orders_id2').val(row.medical_orders_list_id); */
  			        $('#medical_orders_list_id2').val(row.medical_orders_list_id);
  			        $('#group2').val(row.group);
 			        $('#number2').val(row.number);
 			       
 			        $('#direction2').selectpicker('val',row.direction);
 			        $("#types2").val(row.types);
					$("#sum_number2").val(row.sum_number);
					$("#times2").val($("#sum_number2").val()/$("#number2").val());
                	console.log(row);
                }
				});
			$(document).on('click', "#btn_edit2",function(){									
				var arrselectedData = $('#tb_patient_message2').bootstrapTable('getSelections');
				var row = arrselectedData[0];						
				if (arrselectedData.length <= 0) {
					swal({
	                	   title:"请选中一行",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else if(arrselectedData.length > 0 && row.check_status == true){
                	swal({
	                	   title:"该医嘱已校对",
	                	   text:"不可以修改",
	                	   type:"warning"
	                   });
                }else{
                	//$("#myModaEdit").modal('show');
                	$("#block2").show();
                	$("#FormYizhuEdit").show();
                	$("#seacher").show();
                	$('#cate1').selectpicker('val',0);
                	$("#cate1").prop('disabled', true);
                    $("#cate1").selectpicker('refresh');
                	$("#FormYizhuAdd").hide();
                	if(row.medicines != null){
                		$('#edit_specification').show();
      			        $('#edit_ways').show();
 			            $('#edit_speed').show(); 
                		$('#medicines_name2').val(row.medicines.medicines_name);
      			        $('#medicines_specification2').val(row.medicines.medicines_specification);
      			        $('#medicines_unit2').val(row.medicines.medicines_unit);
      			        $('#medicines_price2').val(row.medicines.medicines_price);
      			        $('#ways2').selectpicker('val',row.ways);
   			            $('#speed2').selectpicker('val',row.speed);
                	}else if(row.project != null){
                		$('#medicines_name2').val(row.project.project_name);
                		$('#edit_specification').hide();
      			        $('#edit_ways').hide();
 			            $('#edit_speed').hide();
      			        $('#medicines_unit2').val(row.project.project_unit);
      			        $('#medicines_price2').val(row.project.project_price);
      			        
                	}else if(row.inspection_item != null){
                		$('#medicines_name2').val(row.inspection_item.inspection_item_name);
                		$('#edit_specification').hide();
      			        $('#edit_ways').hide();
 			            $('#edit_speed').hide();
      			        $('#medicines_unit2').val(row.inspection_item.inspection_item_unit);
      			        $('#medicines_price2').val(row.inspection_item.inspection_item_pirce);
      			        
                	}               	                	
  			      	/* $('#medicines_id2').val(row.medicines.medicines_id);
  			        $('#medical_orders_id2').val(row.medical_orders_list_id); */
  			        $('#medical_orders_list_id2').val(row.medical_orders_list_id);
  			        $('#group2').val(row.group);
 			        $('#number2').val(row.number);
 			        $('#direction2').selectpicker('val',row.direction);					
 					$("#types2").val(row.types);
 					$("#sum_number2").val(row.sum_number);
 					$("#times2").val($("#sum_number2").val()/$("#number2").val());
                	console.log(row);
                }
				});
			//修改时间按钮
			$(document).on('click', "#btn_edit_time",function(){									
				var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
				var row = arrselectedData[0];						
				if (arrselectedData.length <= 0) {
					swal({
	                	   title:"请选中一行",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else if(arrselectedData.length > 0 && row.check_status == true){
                	swal({
	                	   title:"该医嘱已校对",
	                	   text:"不可以修改",
	                	   type:"warning"
	                   });
                }else{
                	//$("#myModaEdit").modal('show');
                	$("#myModaEdit_time").modal('show');
                	/* $("#block2").show();
                	$("#FormYizhuEdit").show();
                	$("#seacher").show();
                	$('#cate1').selectpicker('val',0);
                	$("#cate1").prop('disabled', true);
                    $("#cate1").selectpicker('refresh');
                	$("#FormYizhuAdd").hide(); */
                	if(row.medicines != null){
                		$('#medicines_name3').val(row.medicines.medicines_name);
                		$('#medicines_specificationa').show();
      			        $('#medicines_specification3').val(row.medicines.medicines_specification);
      			        $('#medicines_unit3').val(row.medicines.medicines_unit);
      			        $('#medicines_price3').val(row.medicines.medicines_price);
      			        $('#ways3a').show();
			            $('#speed3a').show();
                	}else if(row.project != null){
                		$('#medicines_name3').val(row.project.project_name);
                		$('#medicines_specificationa').hide();
      			        $('#ways3a').hide();
 			            $('#speed3a').hide();
      			        $('#medicines_unit3').val(row.project.project_unit);
      			        $('#medicines_price3').val(row.project.project_price);
      			        
                	}else if(row.inspection_item != null){
                		$('#medicines_name3').val(row.inspection_item.inspection_item_name);
                		$('#medicines_specificationa').hide();
      			        $('#ways3a').hide();
 			            $('#speed3a').hide();
      			        $('#medicines_unit3').val(row.inspection_item.inspection_item_unit);
      			        $('#medicines_price3').val(row.inspection_item.inspection_item_pirce);
                	}
                	
  			      	/* $('#medicines_id2').val(row.medicines.medicines_id);
  			        $('#medical_orders_id2').val(row.medical_orders_list_id); */
  			        $('#medical_orders_id3').val(row.medical_orders_id);
  			        $('#medical_orders_list_type3').val(row.medical_orders_list_type);
  			        $('#medical_orders_list_id3').val(row.medical_orders_list_id);
  			        $('#check_status3').val(row.check_status);
  			        $('#group3').val(row.group);
 			        $('#number3').val(row.number);
 			        $('#ways3').selectpicker('val',row.ways);
 			        $('#speed3').selectpicker('val',row.speed);
 			        $('#direction3').val(row.direction);
 			        $('#start_ruyuan_time3').val(changeDateFormat(row.start_time));
                	console.log(row);
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
                }
				});
			$(document).on('click', "#btn_edit_time2",function(){									
				var arrselectedData = $('#tb_patient_message2').bootstrapTable('getSelections');
				var row = arrselectedData[0];						
				if (arrselectedData.length <= 0) {
					swal({
	                	   title:"请选中一行",
	                	   text:"",
	                	   type:"warning"
	                   });
                }/* else if(arrselectedData.length > 0 && row.check_status == true){
                	swal({
	                	   title:"该医嘱已校对",
	                	   text:"不可以修改",
	                	   type:"warning"
	                   });
                } */else{
                	if(row.check_status == true){
                		$("#start_ruyuan_time4").attr("disabled","disabled");
                	}
                	//$("#myModaEdit").modal('show');
                	$("#myModaEdit_time2").modal('show');
                	/* $("#block2").show();
                	$("#FormYizhuEdit").show();
                	$("#seacher").show();
                	$('#cate1').selectpicker('val',0);
                	$("#cate1").prop('disabled', true);
                    $("#cate1").selectpicker('refresh');
                	$("#FormYizhuAdd").hide(); */
                	if(row.medicines != null){
               		$('#ways4a').show();
		            $('#speed4a').show();	
		            $('#medicines_specification4a').show();
                	$('#medicines_name4').val(row.medicines.medicines_name);
  			        $('#medicines_specification4').val(row.medicines.medicines_specification);
  			        $('#medicines_unit4').val(row.medicines.medicines_unit);
  			        $('#medicines_price4').val(row.medicines.medicines_price);
                	}else if(row.project!=null){
                		$('#medicines_name4').val(row.project.project_name);
                		$('#medicines_specification4a').hide();
      			        $('#ways4a').hide();
 			            $('#speed4a').hide();
      			        $('#medicines_unit4').val(row.project.project_unit);
      			        $('#medicines_price4').val(row.project.project_price);
                	}else if(row.inspection_item != null){
                		$('#medicines_name4').val(row.inspection_item.inspection_item_name);
                		$('#medicines_specification4a').hide();
      			        $('#ways4a').hide();
 			            $('#speed4a').hide();
      			        $('#medicines_unit4').val(row.inspection_item.inspection_item_unit);
      			        $('#medicines_price4').val(row.inspection_item.inspection_item_pirce);
                	}
  			      	/* $('#medicines_id2').val(row.medicines.medicines_id);
  			        $('#medical_orders_id2').val(row.medical_orders_list_id); */
  			        $('#medical_orders_id41').val(row.medical_orders_id);
  			        $('#medical_orders_list_id4').val(row.medical_orders_list_id);
  			        $('#medical_orders_list_type4').val(row.medical_orders_list_type);
  			        $('#stop_doctor_id4').val('${USER.user_work_id}');
  			        $('#check_status4').val(row.check_status);
  			        $('#group4').val(row.group);
 			        $('#number4').val(row.number);
 			        $('#ways4').selectpicker('val',row.ways);
 			        $('#speed4').selectpicker('val',row.speed);
 			        $('#direction4').val(row.direction);
 			        $('#start_ruyuan_time4').val(changeDateFormat(row.start_time));
 			        $('#end_ruyuan_time4').val(changeDateFormat(row.end_time));
                	console.log(row);
                	
            		var d = new Date(new Date().setDate(new Date().getDate()+1));
            		//d.setHours(0, 0, 0, 0);
            		$('#start_ruyuan_time4').datetimepicker({
            			format: 'yyyy-mm-dd hh:ii:ss',//显示格式
            			todayHighlight: 1,//今天高亮
            			minView: "0",//设置只显示到月份
            			startView:2,
            			forceParse: 0,
            			startDate:d,
            			showMeridian: 1,
            			autoclose: 1//选择后自动关闭
            		});
            		console.log("==============");
            		
            		console.log(d);
            		console.log($("#start_ruyuan_time4").val());
            		
            		/* var timestamp = Date.parse(new Date($("#start_ruyuan_time4").val()));
            	    timestamp = timestamp /1000;
            	    timestamp += 86400;//加一天
            	    var newTime =new Date(timestamp * 1000).format('yyyy-MM-dd hh:mm:ss');
        			console.log(newTime); */
            		let time1 = new Date($("#start_ruyuan_time4").val());
            		time2 = time1.getTime();
            		console.log(time2);
            		time3 = (time2/1000 + 86400)*1000;
            		time4 = changeDateFormat(time3);
            		console.log(time4);
            		$('#end_ruyuan_time4').datetimepicker({
            			format: 'yyyy-mm-dd hh:ii:ss',//显示格式
            			todayHighlight: 1,//今天高亮
            			minView: "0",//设置只显示到月份
            			startView:2,
            			startDate:time4,
            			forceParse: 0,
            			showMeridian: 1,
            			autoclose: 1//选择后自动关闭
            		});
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
                }
				});
			//删除按钮
			$(document).on('click', "#btn_delete",function(){
				$("#block2").hide();
		        $("#block4").hide();
		        $("#yongyao").hide();
		        $("#feiyongyao").hide();
		        $('#speed').selectpicker('val',"");
				$('#ways').selectpicker('val',"");
				$("#keeperUserName").val("");
				$("#keeperUserName1").val("");
				$("#keeperUserName2").val("");
				$("#medicines_name1").val("");
				$("#medicines_specification1").val("");
				$("#medicines_unit1").val("");
				$("#medicines_price1").val("");
				$("#keeperUserName").val("");
				$("#group").val(1);
				$("#number").val(1);
				$("#direction").val("");
				$("#medicines_id1").val("");
		        //document.getElementById("FormYizhuAdd").reset();
				document.getElementById("FormYizhuEdit").reset();
				$('#cate1').selectpicker('val',0);
				var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
				var row = arrselectedData[0];
				if (arrselectedData.length <= 0) {
					swal({
	                	   title:"请至少选中一行",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else if(arrselectedData.length > 0 && row.check_status==true){
                	swal({
	                	   title:"该医嘱已校对",
	                	   text:"无法作废",
	                	   type:"warning"
	                   });
                }else {
                	//从一个对象中解析出字符串
                	//var select_id = JSON.stringify(arrselectedData);
                	var select_id = '';
                	var row = arrselectedData[0];
                	console.log(row.medical_orders_list_id);
                	for (var i = 0; i < arrselectedData.length; i++) {
                		select_id += arrselectedData[i]['medical_orders_list_id'] + ",";
                    }
                	//去掉最后的逗号
                	select_id = select_id.substring(0, select_id.length - 1);
                	//console.log(arrselectedData);
                	console.log(select_id);
                	//删除方法
                	check(select_id);
                	function check(select_id){
                        swal(
                            {title:"您确定要作废吗",
                                text:"作废后将无法恢复，请谨慎操作！",
                                type:"warning",
                                showCancelButton:true,
                                confirmButtonColor:"#DD6B55",
                                confirmButtonText:"确定作废！",
                                cancelButtonText:"取消",
                                closeOnConfirm:false,
                                closeOnCancel:false
                            },
                            function(isConfirm)
                            {
                                if(isConfirm)
                                {	
                                	console.log(select_id);
                                	 $.ajax({
            						url: "/hospital/deleteMedical_Orders_List",
            						type:"post",
            						data:{
            							medical_orders_list_id : select_id
            						},
            						 success: function (data) {
            							 $('#tb_patient_message').bootstrapTable('refresh');
            							 swal({title:"作废成功！",
                                             text:"",
                                             type:"success"});
	            				         },
                                	error:function(){
                                		 swal({title:"作废失败",
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
			$(document).on('click', "#btn_delete2",function(){
				var arrselectedData = $('#tb_patient_message2').bootstrapTable('getSelections');
				var row = arrselectedData[0];
				if (arrselectedData.length <= 0) {
					swal({
	                	   title:"请至少选中一行",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else if(arrselectedData.length > 0 && row.check_status==true){
                	swal({
	                	   title:"该医嘱已校对",
	                	   text:"无法作废",
	                	   type:"warning"
	                   });
                }else {
                	//从一个对象中解析出字符串
                	//var select_id = JSON.stringify(arrselectedData);
                	var select_id = '';
                	var row = arrselectedData[0];
                	console.log(row.medical_orders_list_id);
                	for (var i = 0; i < arrselectedData.length; i++) {
                		select_id += arrselectedData[i]['medical_orders_list_id'] + ",";
                    }
                	//去掉最后的逗号
                	select_id = select_id.substring(0, select_id.length - 1);
                	//console.log(arrselectedData);
                	console.log(select_id);
                	//删除方法
                	check(select_id);
                	function check(select_id){
                        swal(
                            {title:"您确定要作废吗",
                                text:"作废后将无法恢复，请谨慎操作！",
                                type:"warning",
                                showCancelButton:true,
                                confirmButtonColor:"#DD6B55",
                                confirmButtonText:"确定作废！",
                                cancelButtonText:"取消",
                                closeOnConfirm:false,
                                closeOnCancel:false
                            },
                            function(isConfirm)
                            {
                                if(isConfirm)
                                {	
                                	console.log(select_id);
                                	 $.ajax({
            						url: "/hospital/deleteMedical_Orders_List",
            						type:"post",
            						data:{
            							medical_orders_list_id : select_id
            						},
            						 success: function (data) {
            							 $('#tb_patient_message').bootstrapTable('refresh');
            							 $('#tb_patient_message2').bootstrapTable('refresh');
            							 swal({title:"作废成功！",
                                             text:"",
                                             type:"success"});
	            				         },
                                	error:function(){
                                		 swal({title:"作废失败",
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
			//医嘱单行提交按钮					
			$(document).on('click', "#btn_single_submit",function(){								
				var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
				var row = arrselectedData[0];						
				if (arrselectedData.length <= 0) {
					swal({
	                	   title:"请选中一行",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else if(arrselectedData.length > 0 && row.start_status==true){
                	swal({
	                	   title:"该医嘱已提交",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else{
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
 			        var aaaaa = row.medical_orders_id;
 			       //提交医嘱
 			       if(row.start_time == null){
 			    	  single_sumbit_YiZhu(row.medical_orders_list_id,time,aaaaa);
 			       }else if(row.start_time != null){
 			    	  single_sumbit_YiZhu1(row.medical_orders_list_id,time,aaaaa);
 			       }
			        function single_sumbit_YiZhu(medical_orders_list_id,time,aaaaa){
			        	 $.ajax({
								url: "/hospital/update_single_Medical_Orders_List",
								type:"post",
								data:{
									medical_orders_list_id : medical_orders_list_id,
									start_time: time,
									start_status : 1,
									medical_orders_id : aaaaa,
								},
								 success: function (data) {
									 swal({
					                	   title:"医嘱提交成功",
					                	   text:"",
					                	   type:"success"
					                   });
					                $("#btn_edit").removeAttr("disabled");
									$("#btn_single_submit").removeAttr("disabled");
									$("#btn_group_submit").removeAttr("disabled");
					                $('#tb_patient_message').bootstrapTable('refresh');
						         },
						         error:function(){
						        	 swal({
					                	   title:"医嘱提交失败",
					                	   text:"",
					                	   type:"error"
					                   });
								 }
							});
			        	 console.log(time);
			       		 };
			       		function single_sumbit_YiZhu1(medical_orders_list_id,time,aaaaa){
				        	 $.ajax({
									url: "/hospital/update_single_Medical_Orders_List",
									type:"post",
									data:{
										medical_orders_list_id : medical_orders_list_id,										
										start_status : 1,
										medical_orders_id : aaaaa,
									},
									 success: function (data) {
										 swal({
						                	   title:"医嘱提交成功",
						                	   text:"",
						                	   type:"success"
						                   });
						                $("#btn_edit").removeAttr("disabled");
										$("#btn_single_submit").removeAttr("disabled");
										$("#btn_group_submit").removeAttr("disabled");
						                $('#tb_patient_message').bootstrapTable('refresh');
							         },
							         error:function(){
							        	 swal({
						                	   title:"医嘱提交失败",
						                	   text:"",
						                	   type:"error"
						                   });
									 }
								});
				        	 console.log(time);
				       		 };
                    }
				});
			$(document).on('click', "#btn_single_submit2",function(){									
				var arrselectedData = $('#tb_patient_message2').bootstrapTable('getSelections');
				var row = arrselectedData[0];						
				if (arrselectedData.length <= 0) {
					swal({
	                	   title:"请选中一行",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else if(arrselectedData.length > 0 && row.start_status==true){
                	swal({
	                	   title:"该医嘱已提交",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else{
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
 			        var aaaaa = row.medical_orders_id;
 			       //提交医嘱
 			       if(row.start_time == null){
  			    	  single_sumbit_YiZhu(row.medical_orders_list_id,time,aaaaa);
  			       }else if(row.start_time != null){
  			    	  single_sumbit_YiZhu1(row.medical_orders_list_id,time,aaaaa);
  			       }
 			        function single_sumbit_YiZhu(medical_orders_list_id,time,aaaaa){
 			        	 $.ajax({
 								url: "/hospital/update_single_Medical_Orders_List",
 								type:"post",
 								data:{
 									medical_orders_list_id : medical_orders_list_id,
 									start_time: time,
 									start_status : 1,
 									medical_orders_id : aaaaa,
 								},
 								 success: function (data) {
 									 swal({
 					                	   title:"医嘱提交成功",
 					                	   text:"",
 					                	   type:"success"
 					                   });
 					                $("#btn_edit2").removeAttr("disabled");
 									$("#btn_single_submit2").removeAttr("disabled");
 									$("#btn_group_submit2").removeAttr("disabled");
 					                $('#tb_patient_message2').bootstrapTable('refresh');
 						         },
 						         error:function(){
 						        	 swal({
 					                	   title:"医嘱提交失败",
 					                	   text:"",
 					                	   type:"error"
 					                   });
 								 }
 							});
 			        	 console.log(time);
 			       		 };
 			       		function single_sumbit_YiZhu1(medical_orders_list_id,time,aaaaa){
 				        	 $.ajax({
 									url: "/hospital/update_single_Medical_Orders_List",
 									type:"post",
 									data:{
 										medical_orders_list_id : medical_orders_list_id,										
 										start_status : 1,
 										medical_orders_id : aaaaa,
 									},
 									 success: function (data) {
 										 swal({
 						                	   title:"医嘱提交成功",
 						                	   text:"",
 						                	   type:"success"
 						                   });
 						                $("#btn_edit2").removeAttr("disabled");
 										$("#btn_single_submit2").removeAttr("disabled");
 										$("#btn_group_submit2").removeAttr("disabled");
 						                $('#tb_patient_message2').bootstrapTable('refresh');
 							         },
 							         error:function(){
 							        	 swal({
 						                	   title:"医嘱提交失败",
 						                	   text:"",
 						                	   type:"error"
 						                   });
 									 }
 								});
 				        	 console.log(time);
 				       		 };
                    }
				});
			//医嘱同组提交按钮					
			$(document).on('click', "#btn_group_submit",function(){									
				var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
				var row = arrselectedData[0];						
				if (arrselectedData.length <= 0) {
					swal({
	                	   title:"请选中一组",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else{
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
 			       var aaaaa = row.medical_orders_id;
 			        console.log(time);
 			       //提交医嘱
			        update_Group_Medical_Orders_List(row.medical_orders_id,time,row.group,aaaaa);
			        
			        function update_Group_Medical_Orders_List(medical_orders_id,time,group,aaaaa){
			        	 $.ajax({
								url: "/hospital/update_Group_Medical_Orders_List",
								type:"post",
								data:{
									medical_orders_id : medical_orders_id,
									start_time: time,
									start_status : 1,
									group : group,									
									medical_orders_list_type : 1,
								},
								 success: function (data) {
									 console.log(data);
									 if(data==0){
										 swal({
						                	   title:"已提交",
						                	   text:"",
						                	   type:"warning"
						                   }); 
									 }else if(data>0){
										 swal({
						                	   title:"成功提交"+data+"条数据",
						                	   text:"",
						                	   type:"success"
						                   });
									 }
									 /* swal({
					                	   title:"同组提交成功",
					                	   text:"",
					                	   type:"success"
					                   }); */
					                $("#btn_edit").removeAttr("disabled");
									$("#btn_single_submit").removeAttr("disabled");
									$("#btn_group_submit").removeAttr("disabled");
					                $('#tb_patient_message').bootstrapTable('refresh');
						         },
						         error:function(){
						        	 swal({
					                	   title:"同组提交失败",
					                	   text:"",
					                	   type:"error"
					                   });
								 }
							});
			        	 console.log(time);
			       		 };
                    }
				});
			$(document).on('click', "#btn_group_submit2",function(){									
				var arrselectedData = $('#tb_patient_message2').bootstrapTable('getSelections');
				var row = arrselectedData[0];						
				if (arrselectedData.length <= 0) {
					swal({
	                	   title:"请选中一组",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else{
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
 			       var aaaaa = row.medical_orders_id;
 			        console.log(time);
 			       //提交医嘱
			        update_Group_Medical_Orders_List(row.medical_orders_id,time,row.group,aaaaa);
			        
			        function update_Group_Medical_Orders_List(medical_orders_id,time,group,aaaaa){
			        	 $.ajax({
								url: "/hospital/update_Group_Medical_Orders_List",
								type:"post",
								data:{
									medical_orders_id : medical_orders_id,
									start_time: time,
									start_status : 1,
									group : group,
									medical_orders_id : aaaaa,
									medical_orders_list_type : 2,
								},
								 success: function (data) {
									 console.log(data);
									 if(data==0){
										 swal({
						                	   title:"已提交",
						                	   text:"",
						                	   type:"warning"
						                   }); 
									 }else if(data>0){
										 swal({
						                	   title:"成功提交"+data+"条数据",
						                	   text:"",
						                	   type:"success"
						                   });
									 }
									 /* swal({
					                	   title:"同组提交成功",
					                	   text:"",
					                	   type:"success"
					                   }); */
					                $("#btn_edit").removeAttr("disabled");
									$("#btn_single_submit").removeAttr("disabled");
									$("#btn_group_submit").removeAttr("disabled");
					                $('#tb_patient_message2').bootstrapTable('refresh');
						         },
						         error:function(){
						        	 swal({
					                	   title:"同组提交失败",
					                	   text:"",
					                	   type:"error"
					                   });
								 }
							});
			        	 console.log(time);
			       		 };
                    }
				});
			//未提交医嘱提交按钮					
			$(document).on('click', "#btn_all_submit",function(){
				var medical_orders_id=document.getElementById("medical_orders_id1").value;
				console.log(medical_orders_id);
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
		       //提交医嘱
		        update_All_Medical_Orders_List(medical_orders_id,time);
		        
		        function update_All_Medical_Orders_List(medical_orders_id,time){
	        	 $.ajax({
						url: "/hospital/update_All_Medical_Orders_List",
						type:"post",
						data:{
							medical_orders_id : medical_orders_id,
							start_time: time,
							start_status : 1,
							medical_orders_list_type : 1,
						},
						 success: function (data) {
							 console.log(data);
							 if(data==0){
								 swal({
				                	   title:"已提交全部",
				                	   text:"",
				                	   type:"warning"
				                   }); 
							 }else if(data>0){
								 swal({
				                	   title:"成功提交"+data+"条医嘱",
				                	   text:"",
				                	   type:"success"
				                   });
							 }
							
			                $('#tb_patient_message').bootstrapTable('refresh');
				         },
				         error:function(){
				        	 swal({
			                	   title:"提交失败",
			                	   text:"",
			                	   type:"error"
			                   });
						 }
					});
	        	 console.log(time);
	       		 };
                   
				});
			$(document).on('click', "#btn_all_submit2",function(){
				var medical_orders_id=document.getElementById("medical_orders_id1").value;
				console.log(medical_orders_id);
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
		       //提交医嘱
		        update_All_Medical_Orders_List(medical_orders_id,time);
		        
		        function update_All_Medical_Orders_List(medical_orders_id,time){
	        	 $.ajax({
						url: "/hospital/update_All_Medical_Orders_List",
						type:"post",
						data:{
							medical_orders_id : medical_orders_id,
							start_time: time,
							start_status : 1,
							medical_orders_list_type : 2,
						},
						 success: function (data) {
							 console.log(data);
							 if(data==0){
								 swal({
				                	   title:"已提交全部",
				                	   text:"",
				                	   type:"warning"
				                   }); 
							 }else if(data>0){
								 swal({
				                	   title:"成功提交"+data+"条医嘱",
				                	   text:"",
				                	   type:"success"
				                   });
							 }
							
			                $('#tb_patient_message2').bootstrapTable('refresh');
				         },
				         error:function(){
				        	 swal({
			                	   title:"提交失败",
			                	   text:"",
			                	   type:"error"
			                   });
						 }
					});
	        	 console.log(time);
	       		 };
                   
				});
			
			//停止当行时间
			$(document).on('click', "#btn_single_stop_submit",function(){								
				var arrselectedData = $('#tb_patient_message2').bootstrapTable('getSelections');
				var row = arrselectedData[0];						
				if (arrselectedData.length <= 0) {
					swal({
	                	   title:"请选中一行",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else if(arrselectedData.length > 0 && row.start_time==null){
                	swal({
	                	   title:"该医嘱未开始",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else if(arrselectedData.length > 0 && row.end_time!=null){
                	swal({
	                	   title:"该医嘱已修改停止时间",
	                	   text:"",
	                	   type:"warning"
	                   });
             	}else{
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
 			        var aaaaa = row.medical_orders_id;
 			        //停止医嘱
 			    	single_stop_YiZhu(row.medical_orders_list_id,time,aaaaa);
 			       
			        function single_stop_YiZhu(medical_orders_list_id,time,aaaaa){
			        	 $.ajax({
								url: "/hospital/update_single_stop_Medical_Orders_List",
								type:"post",
								data:{
									stop_doctor_id : "${USER.user_work_id}",
									medical_orders_list_id : medical_orders_list_id,
									end_time: time,
									medical_orders_id : aaaaa,
								},
								 success: function (data) {
									 if(data > 0){
										 swal({
						                	   title:"医嘱停止成功",
						                	   text:"",
						                	   type:"success"
						                   }); 
									 }else if(data == 0){
										 swal({
						                	   title:"医嘱停止失败",
						                	   text:"停止时间小于开始时间",
						                	   type:"success"
						                   });
									 }
									 
					                $("#btn_edit2").removeAttr("disabled");
									$("#btn_single_submit2").removeAttr("disabled");
									$("#btn_group_submit2").removeAttr("disabled");
					                $('#tb_patient_message2').bootstrapTable('refresh');
						         },
						         error:function(){
						        	 swal({
					                	   title:"医嘱停止失败",
					                	   text:"",
					                	   type:"error"
					                   });
								 }
							});
			        	 console.log(time);
			       		 };			       		
                    };
				});
			//停止同组医嘱
			$(document).on('click', "#btn_group_stop_submit",function(){									
				var arrselectedData = $('#tb_patient_message2').bootstrapTable('getSelections');
				var row = arrselectedData[0];						
				if (arrselectedData.length <= 0) {
					swal({
	                	   title:"请选中一组",
	                	   text:"",
	                	   type:"warning"
	                   });
                }else{
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
 			       var aaaaa = row.medical_orders_id;
 			        console.log(time);
 			       //停止同组医嘱
			        update_Group_stop_Medical_Orders_List(row.medical_orders_id,time,row.group,aaaaa);
			        
			        function update_Group_stop_Medical_Orders_List(medical_orders_id,time,group,aaaaa){
			        	 $.ajax({
								url: "/hospital/update_Group_stop_Medical_Orders_List",
								type:"post",
								data:{
									stop_doctor_id : "${USER.user_work_id}",
									medical_orders_id : medical_orders_id,
									end_time: time,
									group : group,									
									medical_orders_list_type : 2,
								},
								 success: function (data) {
									 console.log(data);
									 
										 swal({
						                	   title:"已停止"+data+"条数据",
						                	   text:"",
						                	   type:"success"
						                   });
									 
									 /* swal({
					                	   title:"同组提交成功",
					                	   text:"",
					                	   type:"success"
					                   }); */
					                $("#btn_edit2").removeAttr("disabled");
									$("#btn_single_submit2").removeAttr("disabled");
									$("#btn_group_submit2").removeAttr("disabled");
					                $('#tb_patient_message2').bootstrapTable('refresh');
						         },
						         error:function(){
						        	 swal({
					                	   title:"同组停止失败",
					                	   text:"",
					                	   type:"error"
					                   });
								 }
							});
			        	 console.log(time);
			       		 };
                    }
				});
			//停止全部
			$(document).on('click', "#btn_all_stop_submit",function(){
				var medical_orders_id=document.getElementById("medical_orders_id1").value;
				console.log(medical_orders_id);
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
		       //停止全部医嘱
		        update_All_Medical_Orders_List(medical_orders_id,time);
		        
		        function update_All_Medical_Orders_List(medical_orders_id,time){
	        	 $.ajax({
						url: "/hospital/update_All_stop_Medical_Orders_List",
						type:"post",
						data:{
							stop_doctor_id : "${USER.user_work_id}",
							medical_orders_id : medical_orders_id,
							end_time: time,
							start_status : 1,
							medical_orders_list_type : 2,
						},
						 success: function (data) {
							 console.log(data);
							 
								 swal({
				                	   title:"成功停止"+data+"条医嘱",
				                	   text:"",
				                	   type:"success"
				                   });
							 
							
			                $('#tb_patient_message2').bootstrapTable('refresh');
				         },
				         error:function(){
				        	 swal({
			                	   title:"停止失败",
			                	   text:"",
			                	   type:"error",
			                   });
						 }
					});
	        	 console.log(time);
	       		 };
                   
				});
			//修改时间
			$(document).on('click', "#btn_update_singel_time",function(){
				if(edit2Validate().form()) {
				var param = $("#FormEdit_time").serializeArray();
				  console.log(param);									
                	
			        	  $.ajax({
								url: "/hospital/updateMedical_Orders_List_singel_time",
								type:"post",
								data:param,
								 success: function (data) {
									 swal({
					                	   title:"时间修改成功",
					                	   text:"请重新提交数据",
					                	   type:"success",
					                   });					                
					                $('#tb_patient_message').bootstrapTable('refresh');
					                $("#myModaEdit_time").modal('hide');
						         },
						         error:function(){
						        	 swal({
					                	   title:"时间修改失败",
					                	   text:"",
					                	   type:"error",
					                   });
								 }
							}); 
				}
				});
			function edit2Validate(){
				/*关键在此增加了一个return，返回的是一个validate对象，这个对象有一个form方法，返回的是是否通过验证(true,false)*/
					return $("#FormEdit_time").validate({
					    rules: {				    	
					    	start_time : {
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
			$(document).on('click', "#btn_update_singel_time2",function(){	
				/* if($("#end_ruyuan_time4").val()){					
				$('#end_ruyuan_time4').val(null);} */
				$("#start_ruyuan_time4").removeAttr("disabled");
				var param = $("#FormEdit_time2").serializeArray();
				  console.log(param);
				  console.log(param[1].value);
                	if(param[1].value == 0){
                		 $.ajax({
						url: "/hospital/updateMedical_Orders_List_singel_time",
						type:"post",
						data:param,
						 success: function (data) {
							 swal({
			                	   title:"时间修改成功",
			                	   text:"请重新提交数据",
			                	   type:"success",
			                   });					                
			                $('#tb_patient_message2').bootstrapTable('refresh');
			                $("#myModaEdit_time2").modal('hide');
			                //$('#end_ruyuan_time4').datetimepicker('remove');
				         },
				         error:function(){
				        	 swal({
			                	   title:"时间修改失败",
			                	   text:"",
			                	   type:"error"
			                   });
						 }
					});   
                	}else if(param[1].value == 1){
                		console.log(11);
                		/* $("#start_ruyuan_time4").attr("disabled","disabled"); */
                		$.ajax({
    						url: "/hospital/updateMedical_Orders_List_singel_time1",
    						type:"post",
    						data:param,
    						 success: function (data) {
    							 swal({
    			                	   title:"医嘱停止成功",
    			                	   text:"",
    			                	   type:"success",
    			                   });					                
    			                $('#tb_patient_message2').bootstrapTable('refresh');
    			                $("#myModaEdit_time2").modal('hide');
    			                //$('#end_ruyuan_time4').datetimepicker('remove');
    				         },
    				         error:function(){
    				        	 swal({
    			                	   title:"停止失败",
    			                	   text:"",
    			                	   type:"error",
    			                   });
    						 }
    					});
                	}
			        	   
				});
			//修改同组时间
			$(document).on('click', "#btn_update_group_time",function(){
				 $("#group3").removeAttr("disabled");
				var param = $("#FormEdit_time").serializeArray();
				  console.log(param);									
                	
			        	   $.ajax({
								url: "/hospital/updateMedical_Orders_List_group_time",
								type:"post",
								data:param,
								 success: function (data) {
									 swal({
					                	   title:"时间修改成功",
					                	   text:"请重新提交数据",
					                	   type:"success",
					                   });					                
					                $('#tb_patient_message').bootstrapTable('refresh');
					                $("#myModaEdit_time").modal('hide');
					                $("#group3").attr("disabled","disabled");
						         },
						         error:function(){
						        	 swal({
					                	   title:"时间修改失败",
					                	   text:"",
					                	   type:"error",
					                   });
						        	 $("#group3").attr("disabled","disabled"); 
								 }
							});  
				});
			$(document).on('click', "#btn_update_group_time2",function(){
				 $("#group4").removeAttr("disabled");
				var param = $("#FormEdit_time2").serializeArray();
				  console.log(param);									
               	var count_success = 0;	
               			 $.ajax({
						url: "/hospital/updateMedical_Orders_List_group_time",
						type:"post",
						data:param,
						 success: function (data) {
							 count_success = data;
							 updateMedical_Orders_List_group_time1(count_success);
				         },
				         error:function(){
				        	 swal({
			                	   title:"时间修改失败",
			                	   text:"",
			                	   type:"error",
			                   });
				        	 $("#group4").attr("disabled","disabled"); 
						 }
					});
               			 function updateMedical_Orders_List_group_time1(count_success){
               			 $.ajax({
     						url: "/hospital/updateMedical_Orders_List_group_time1",
     						type:"post",
     						data:param,
     						 success: function (data) {
     							count_success = count_success +data;
     							 swal({
     			                	   title:"成功修改"+count_success+"条数据",
     			                	   text:"请重新提交数据",
     			                	   type:"success",
     			                   });					                
     			                $('#tb_patient_message2').bootstrapTable('refresh');
     			                $("#myModaEdit_time2").modal('hide');
     			                $("#group4").attr("disabled","disabled");
     				         },
     				         error:function(){
     				        	 swal({
     			                	   title:"时间修改失败",
     			                	   text:"",
     			                	   type:"error",
     			                   });
     				        	 $("#group4").attr("disabled","disabled"); 
     						 }
     					});	 
               			 }
			        	     
				});
			//模态框修改按钮
			$(document).on('click', "#btn_update",function(){

				
					  //通过表单验证，以下编写自己的代码
					  var param = $("#FormYizhuEdit").serializeArray();
					  console.log(param);
						          $.ajax({
									url: "/hospital/updateMedical_Orders_List",
									type:"post",
									data:param,
									 success: function (data) {
										 swal({
						                	   title:"更新成功",
						                	   text:"请重新提交数据",
						                	   type:"warning"
						                   });
						                count = 0;
										console.log(count);
										$("#btn_edit").removeAttr("disabled");
										$("#btn_single_submit").removeAttr("disabled");
						                $('#tb_patient_message').bootstrapTable('refresh');
						                $('#tb_patient_message2').bootstrapTable('refresh');
						                document.getElementById("FormYizhuEdit").reset();
						                
						                $("#block2").hide();
					                	$("#FormYizhuEdit").hide();
					                	$("#seacher").hide();
					                	$("#FormYizhuAdd").hide();
						                //$("#myModaEdit").modal('hide');
							         },
							         error:function(){
							        	 swal({
						                	   title:"更新失败",
						                	   text:"",
						                	   type:"error"
						                   });
									 }

								});     
					 				
				});
			
		};

		return oInit;
	};
	$(document).on('change', "#cate",function(){
		 $('#keeperUserName').val("");
	});
	$(document).on('change', "#cate3",function(){
		//console.log($('#cate3').val());
		if($('#cate3').val()==1){
			$("#types").val(2);
			$("#types3").val(2);
			$("#huli").show();
	        $("#huayan").hide();
		}else if($('#cate3').val()==0){
			$("#huli").hide();
	        $("#huayan").hide();
		}else if($('#cate3').val()==2){
			$("#types").val(3);
			$("#types3").val(3);
			$("#huli").hide();
	        $("#huayan").show();
		}else if($('#cate3').val()==3){
			$("#types").val(2);
			$("#types3").val(2);
			$("#huli").show();
	        $("#huayan").hide();
		}else if($('#cate3').val()==4){
			$("#types").val(2);
			$("#types3").val(2);
			$("#huli").show();
	        $("#huayan").hide();
		}else if($('#cate3').val()==5){
			$("#types").val(2);
			$("#types3").val(2);
			$("#huli").show();
	        $("#huayan").hide();
		}
		
		 $('#keeperUserName1').val("");
		 $('#keeperUserName2').val("");
		 /* $("#project_name").val("");
			 $("#project_unit").val("");
			$("#project_price").val("");
			$('#project_direction').selectpicker('val',"");
			$("#project_group").val(1);
			$("#project_number").val(1);
			$("#project_id").val("");
			$("#times3").val(1);
			$("#sum_number3").val(1); */
		 
	});
	 /* if(document.readyState == "loading"){
     	swal({
      	   title:"加载中",
      	   text:"",
      	   type:"success"
         });
     }
     if(document.readyState == "complete"){
     	swal({
      	   title:"加载成功",
      	   text:"",
      	   type:"success"
         });
     } */
		
		
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
			      console.log(data);
			      
			      
			    });
			 }
     
     function search2(){
			$('#keeperUserName1').bsSuggest({
				  url: "/hospital/selectproject",
			      getDataMethod:'url',
			      effectiveFields:['project_id','project_name','project_unit'],// 有效显示于列表中的字段，非有效字段都会过滤，默认全部有效。
			      effectiveFieldsAlias:{project_id:'ID',project_name:'项目名称',project_unit:'单位'},// 有效字段的别名对象，用于 header 的显示
			      showHeader:true,                         //是否显示选择列表的 header。为 true 时，有效字段大于一列则显示表头
			      allowNoKeyword:true,                    // 是否允许无关键字时请求数据
			      multiWord:false,                         //以分隔符号分割的多关键字支持
			      //idField: "room_id",                    //每组数据的哪个字段作为 data-id，优先级高于 indexId 设置（推荐）
			      keyField: "project_name",
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
			                	project_category : $('#cate3').val()
			                }
			            };
			        },
		            //当从下拉菜单选取值时触发，并传回设置的数据到第二个参数
			    }).on('onSetSelectValue', function (e, keyword, data) {
			      $('#project_name').val(data.project_name);
			      //$('#medicines_specification1').val(data.medicines_specification);
			      $('#project_unit').val(data.project_unit);
			      $('#project_price').val(data.project_price);
			      $('#project_id').val(data.project_id);
			      $('#Inspection_item_id').val(null);
			      console.log(data);
			      
			      
			    });
			 }
     
     function search3(){
			$('#keeperUserName2').bsSuggest({
				  url: "/hospital/select_condition_Inspection_item",
			      getDataMethod:'url',
			      effectiveFields:['inspection_item_id','inspection_item_name','inspection_item_unit'],// 有效显示于列表中的字段，非有效字段都会过滤，默认全部有效。
			      effectiveFieldsAlias:{inspection_item_id:'ID',inspection_item_name:'项目名称',inspection_item_unit:'单位'},// 有效字段的别名对象，用于 header 的显示
			      showHeader:true,                         //是否显示选择列表的 header。为 true 时，有效字段大于一列则显示表头
			      allowNoKeyword:true,                    // 是否允许无关键字时请求数据
			      multiWord:false,                         //以分隔符号分割的多关键字支持
			      //idField: "room_id",                    //每组数据的哪个字段作为 data-id，优先级高于 indexId 设置（推荐）
			      keyField: "inspection_item_name",
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
			                	//project_category : $('#cate3').val()
			                }
			            };
			        },
		            //当从下拉菜单选取值时触发，并传回设置的数据到第二个参数
			    }).on('onSetSelectValue', function (e, keyword, data) {
			      $('#project_name').val(data.inspection_item_name);
			      //$('#medicines_specification1').val(data.medicines_specification);
			      $('#project_unit').val(data.inspection_item_unit);
			      $('#project_price').val(data.inspection_item_pirce);
			      $('#Inspection_item_id').val(data.inspection_item_id);
			      $("#project_id").val(null);
			      console.log(data);
			      
			      
			    });
			 }
	    
	    $(document).on('click', "#btn_addzhizhu",function(){
					$("#block2").show();
					$("#FormYizhuEdit").hide();
					$("#seacher").show();
					$('#cate1').prop('disabled', false);
					$('#cate1').selectpicker('refresh');
		        	$("#FormYizhuAdd").show();
		        	$("#FormYizhuAdd2").hide();
			    });
	    $(document).on('click', "#btn_addzhizhu2",function(){
			$("#block2").show();
			$("#FormYizhuEdit").hide();
			$('#cate1').prop('disabled', false);
			$('#cate1').selectpicker('refresh');
        	$("#seacher").show();
        	$("#FormYizhuAdd").show();
        	$("#FormYizhuAdd2").hide();
	    });
		$(document).on('click', "#block2_add",function(){
			var param = $("#FormYizhuAdd").serializeArray();
			console.log(param);
			
			   $.ajax({
				url: "/hospital/addMedical_Orders_List",
				type:"post",
				data:param,
				 success: function (data) {
					 swal({
	                	   title:"新增成功",
	                	   text:"",
	                	   type:"success"
	                   });
	                $('#tb_patient_message').bootstrapTable('refresh');
	                $('#tb_patient_message2').bootstrapTable('refresh');
		         },
		         error:function(){
		        	 swal({
	                	   title:"新增失败",
	                	   text:"",
	                	   type:"error"
	                   });
				 }

			});  
			//重置
			//document.getElementById("FormYizhuAdd").reset();
			$('#speed').selectpicker('val',"");
			$('#ways').selectpicker('val',"");
			$("#keeperUserName").val("");
			$("#medicines_name1").val("");
			$("#medicines_specification1").val("");
			$("#medicines_unit1").val("");
			$("#medicines_price1").val("");
			$("#keeperUserName").val("");
			$("#group").val(1);
			$("#number").val(1);
			$("#direction").val("");
			$("#medicines_id1").val("");
			$("#times").val(1);
			$("#sum_number").val(1);
			
			function showmdical_orders_id(patient_id){
	        	 $.ajax({
						url: "/hospital/showMedical_Orders_Id",
						type:"get",
						data:{
							patient_id : patient_id,
						},
						 success: function (data) {
			                console.log(data);
			                $('#medical_orders_id1').val(data);
				         },
				         error:function(){
				        	 alert("失败");
						 }

					});
	        }
			
			    });
		$(document).on('click', "#block2_project_add",function(){
			var param = $("#FormYizhuAdd2").serializeArray();
			console.log(param);
			
			   $.ajax({
				url: "/hospital/addMedical_Orders_List",
				type:"post",
				data:param,
				 success: function (data) {
					 swal({
	                	   title:"新增成功",
	                	   text:"",
	                	   type:"success"
	                   });
	                $('#tb_patient_message').bootstrapTable('refresh');
	                $('#tb_patient_message2').bootstrapTable('refresh');
		         },
		         error:function(){
		        	 swal({
	                	   title:"新增失败",
	                	   text:"",
	                	   type:"error"
	                   });
				 }

			});  
			//重置
			//document.getElementById("FormYizhuAdd").reset();
			$("#keeperUserName1").val("");
			$("#keeperUserName2").val("");
           	$("#project_name").val("");
			$("#project_unit").val("");
			$("#project_price").val("");
			$('#project_direction').selectpicker('val',"");
			$("#project_group").val(1);
			$("#project_number").val(1);
			$("#project_id").val("");
			$("#times3").val(1);
			$("#sum_number3").val(1);
			
			function showmdical_orders_id(patient_id){
	        	 $.ajax({
						url: "/hospital/showMedical_Orders_Id",
						type:"get",
						data:{
							patient_id : patient_id,
						},
						 success: function (data) {
			                console.log(data);
			                $('#medical_orders_id1').val(data);
				         },
				         error:function(){
				        	 alert("失败");
						 }

					});
	        }
			
			    });
		$(document).on('click', "#block2_cancel",function(){
					$("#block2").hide();
					$('#speed').selectpicker('val',"");
					$('#ways').selectpicker('val',"");
					$("#keeperUserName").val("");
					$("#medicines_name1").val("");
					$("#medicines_specification1").val("");
					$("#medicines_unit1").val("");
					$("#medicines_price1").val("");
					$("#keeperUserName").val("");
					$("#group").val(1);
					$("#number").val(1);
					$("#direction").val("");
					$("#medicines_id1").val("");
					$('#cate1').selectpicker('val',0);
			    });		    
		$(document).on('change', "#type",function(){
			console.log($('#type').val());
			if($('#type').val()==1){
				$("#block3").show();
				$("#block4").hide();
				$('#tb_patient_message').bootstrapTable('refresh');
				document.getElementById("FormYizhuEdit").reset();
				$("#medical_orders_list_type").val(1);
				$("#medical_orders_list_type2").val(1);
                $("#block2").hide();
            	$("#FormYizhuEdit").hide();
            	$("#seacher").hide();
            	$("#FormYizhuAdd").hide();
            	$('#cate1').selectpicker('val',0);
			}
			});
		$(document).on('change', "#type",function(){
			console.log($('#type').val());
			if($('#type').val()==2){
				$("#block4").show();
				$("#block3").hide();
				$('#tb_patient_message2').bootstrapTable('refresh');
				//document.getElementById("FormYizhuAdd").reset();
				$('#speed').selectpicker('val',"");
				$('#ways').selectpicker('val',"");
				$("#keeperUserName").val("");
				$("#medicines_name1").val("");
				$("#medicines_specification1").val("");
				$("#medicines_unit1").val("");
				$("#medicines_price1").val("");
				$("#keeperUserName").val("");
				$("#group").val(1);
				$("#number").val(1);
				$("#direction").val("");
				$("#medicines_id1").val("");
				document.getElementById("FormYizhuEdit").reset();
				$('#type2').selectpicker('val',2);
				$("#medical_orders_list_type").val(2);
				$("#medical_orders_list_type2").val(2);
                $("#block2").hide();
            	$("#FormYizhuEdit").hide();
            	$("#seacher").hide();
            	$("#FormYizhuAdd").hide();
            	$('#cate1').selectpicker('val',0);
            	$('#direction').selectpicker('val',"");
            	
            	$("#keeperUserName1").val("");
            	$("#keeperUserName2").val("");
            	$("#project_name").val("");
				$("#project_unit").val("");
				$("#project_price").val("");
				$('#project_direction').selectpicker('val',"");
				$("#project_group").val(1);
				$("#project_number").val(1);
				$("#project_id").val("");
			}
			});
		$(document).on('change', "#type2",function(){
			console.log($('#type2').val());
			if($('#type2').val()==1){
				$("#block3").show();
				$("#block4").hide();
				$('#tb_patient_message').bootstrapTable('refresh');
				//document.getElementById("FormYizhuAdd").reset();
				$('#speed').selectpicker('val',"");
				$('#ways').selectpicker('val',"");
				$("#keeperUserName").val("");
				$("#medicines_name1").val("");
				$("#medicines_specification1").val("");
				$("#medicines_unit1").val("");
				$("#medicines_price1").val("");
				$("#keeperUserName").val("");
				$("#group").val(1);
				$("#number").val(1);
				$("#direction").val("");
				$("#medicines_id1").val("");
				document.getElementById("FormYizhuEdit").reset();
				$('#type').selectpicker('val',1);
				$("#medical_orders_list_type").val(1);
				$("#medical_orders_list_type2").val(1);
                $("#block2").hide();
            	$("#FormYizhuEdit").hide();
            	$("#seacher").hide();
            	$("#FormYizhuAdd").hide();
            	$('#cate1').selectpicker('val',0);
            	$('#direction').selectpicker('val',"");
            	
            	
            	$("#keeperUserName1").val("");
            	$("#keeperUserName2").val("");
            	$("#project_name").val("");
				$("#project_unit").val("");
				$("#project_price").val("");
				$('#project_direction').selectpicker('val',"");
				$("#project_group").val(1);
				$("#project_number").val(1);
				$("#project_id").val("");
			}
			});
		$(document).on('change', "#cate1",function(){			
			if($('#cate1').val()==1){
				$("#yongyao").show();
				$("#FormYizhuAdd").show();
				$("#FormYizhuAdd2").hide();
				$("#types").val(1);
				$("#types3").val(1);
				$("#feiyongyao").hide();
				$('#cate').selectpicker('val',0);
				//$('#cate3').selectpicker('val',0);
			}
			});
		$(document).on('change', "#cate1",function(){			
			if($('#cate1').val()==0){
				$("#yongyao").hide();
				$("#feiyongyao").hide();
				$("#FormYizhuAdd").show();
				$("#FormYizhuAdd2").hide();
			}
			});
		$(document).on('change', "#cate1",function(){			
			if($('#cate1').val()==2){
				$("#yongyao").hide();
				$("#FormYizhuAdd").hide();
				$("#FormYizhuAdd2").show();
				$("#types").val(2);
				$("#types3").val(2);
				$("#feiyongyao").show();
				//$('#cate').selectpicker('val',0);
				$('#cate3').selectpicker('val',0);
			}
			});
		$(document).on('change', "#direction",function(){			
			if($('#direction').val()=="ac"||$('#direction').val()=="pc"||$('#direction').val()=="am"
					||$('#direction').val()=="pm"||$('#direction').val()=="sos"||$('#direction').val()=="qd"||$('#direction').val()==""){
				$("#times").val(1);
			}else if($('#direction').val()=="Bid"){
				$("#times").val(2);
			}else if($('#direction').val()=="tid"){
				$("#times").val(3);
			}else if($('#direction').val()=="Qid"||$('#direction').val()=="Q6h"){
				$("#times").val(4);
			}
			
			$("#sum_number").val($("#times").val()*$("#number").val());
			});
		$(document).on('change', "#direction2",function(){			
			if($('#direction2').val()=="ac"||$('#direction2').val()=="pc"||$('#direction2').val()=="am"
					||$('#direction2').val()=="pm"||$('#direction2').val()=="sos"||$('#direction2').val()=="qd"||$('#direction2').val()==""){
				$("#times2").val(1);
			}else if($('#direction2').val()=="Bid"){
				$("#times2").val(2);
			}else if($('#direction2').val()=="tid"){
				$("#times2").val(3);
			}else if($('#direction2').val()=="Qid"||$('#direction2').val()=="Q6h"){
				$("#times2").val(4);
			}
			
			$("#sum_number2").val($("#times2").val()*$("#number2").val());
			});
		
		$(document).on('change', "#project_direction",function(){			
			if($('#project_direction').val()=="ac"||$('#project_direction').val()=="pc"||$('#project_direction').val()=="am"
					||$('#project_direction').val()=="pm"||$('#project_direction').val()=="sos"||$('#project_direction').val()=="qd"||$('#project_direction').val()==""){
				$("#times3").val(1);
			}else if($('#project_direction').val()=="Bid"){
				$("#times3").val(2);
			}else if($('#project_direction').val()=="tid"){
				$("#times3").val(3);
			}else if($('#project_direction').val()=="Qid"||$('#project_direction').val()=="Q6h"){
				$("#times3").val(4);
			}
			
			$("#sum_number3").val($("#times3").val()*$("#project_number").val());
			});
		
		$(document).on('change', "#number",function(){
			$("#sum_number").val($("#times").val()*$("#number").val());
		});
		$(document).on('change', "#number2",function(){
			$("#sum_number2").val($("#times2").val()*$("#number2").val());
		});
		$(document).on('change', "#project_number",function(){
			$("#sum_number3").val($("#times3").val()*$("#project_number").val());
		});
		$(document).on('change', "#start_ruyuan_time4",function(){			
			
			$("#end_ruyuan_time4").val("");
			$('#end_ruyuan_time4').datetimepicker('remove');
			let time1 = new Date($("#start_ruyuan_time4").val());
    		time2 = time1.getTime();
    		console.log(time2);
    		time3 = (time2/1000 + 86400)*1000;
    		time4 = changeDateFormat(time3);
    		$('#end_ruyuan_time4').datetimepicker({
    			format: 'yyyy-mm-dd hh:ii:ss',//显示格式
    			todayHighlight: 1,//今天高亮
    			minView: "0",//设置只显示到月份
    			startView:2,
    			startDate:time4,
    			forceParse: 0,
    			showMeridian: 1,
    			autoclose: 1//选择后自动关闭
    		});
    		//console.log("111");
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
    		    };
    		};
			
			
			});
		/* $("#start_ruyuan_time4").datetimepicker().on('changeDate', function(ev) {

		}).on('hide', function(event) {

		//event.preventDefault();//停止事件的触发

		event.stopPropagation();//阻止事件向上或向下冒泡

		}); */
		var d = new Date(new Date().setDate(new Date().getDate()));
		$('#start_ruyuan_time3').datetimepicker({
			format: 'yyyy-mm-dd hh:ii:ss',//显示格式
			todayHighlight: 1,//今天高亮
			minView: "0",//设置只显示到月份
			startView:2,
			forceParse: 0,
			startDate:d,
			showMeridian: 1,
			autoclose: 1//选择后自动关闭
		});
		$('#end_ruyuan_time3').datetimepicker({
			format: 'yyyy-mm-dd hh:ii:ss',//显示格式
			todayHighlight: 1,//今天高亮
			minView: "0",//设置只显示到月份
			startView:2,
			forceParse: 0,
			showMeridian: 1,
			autoclose: 1//选择后自动关闭
		});
		//$('#start_ruyuan_time4').datetimepicker({maxDate:new Date()});
		   /* $(function () { $('#myModaEdit_time2').on('hide.bs.modal', function () {
			$('#end_ruyuan_time4').datetimepicker('remove');
			console.log(11111);
			});
		 }); */   
		   $(document).on('click', "#btn_cancel2",function(){
			 $('#end_ruyuan_time4').datetimepicker('remove');
			 $("#start_ruyuan_time4").removeAttr("disabled");
		 });  
		
		</script>
		
		
	</body>
</html>