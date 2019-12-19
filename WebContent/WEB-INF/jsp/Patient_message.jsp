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
		<div id="toolbar" class="btn-group">
			<button id="btn_myModaAdd" type="button" class="btn btn-white" data-toggle="modal" data-target="#myModaAdd">
	        	<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>登记信息
	    	</button>
	    	
	   <div class="modal inmodal fade" id="myModaAdd" tabindex="-1" role="dialog" aria-hidden="true">
	        
	        
	        <div class="modal-dialog modal-lg" style=" margin-left: 2%;
			    margin-right: 2%;
			    width: 95%;">
						<div class="modal-content">
	                <div class="ibox float-e-margins">
	                    <div class="ibox-title">
	                        <h5>病人信息登记 </h5>
	                    </div>
	                    
	                     <div class="ibox-content">
	                     
	                     	<!-- <table id="tb_patient_message1"></table> -->
	                     
	                        <form  class="form-horizontal" id="Formadd">
	                        	<div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">住院号</label>
	                                    <div class="col-sm-3 form-group">
	                                        <input readonly="readonly" id="patient_id" name="patient_id" type="text" class="form-control" >
	                                    </div>
	                            </div>	
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">病人姓名</label>
	                                    <div class="col-sm-2 form-group">
	                                        <input id="patient_name" name="patient_name" type="text" class="form-control"   >
	                                    </div>
	                            	
	                                <label class="col-sm-2 control-label">性别</label>
		                                <div class="col-sm-3"> 
		                                    <div class="radio i-checks form-group" >
		                                        <label>
		                                            <input type="radio" checked="" value="男" id="patient_meal" name="patient_meal"> <i></i>男</label>
		                                        <label>
		                                            <input type="radio"  value="女" id="patient_meal" name="patient_meal"> <i></i>女</label>
		                                    </div>   
		                                </div>
		                            <label class="col-sm-2 control-label">出生日期</label>
										<div class="col-sm-1 form-group">
											<input style="width: 100px;" id="brith_day" name="brith_day"  type="text" class="form-control" >
										</div> 
										
									
	                            </div>
	                            <div class="form-group">
	                            <label class="col-sm-2 control-label">年龄</label>
	                                        <div class="col-sm-2 form-group">
	                                            <input id="age" name="age" class="form-control" >
	                                        </div>
	                            	<label class="col-sm-2 control-label">病人手机</label>
	                                        <div class="col-sm-3 form-group">
	                                            <input id="phone" name="phone" class="form-control" >
	                                        </div>
	                                <label class="col-sm-2 control-label">身份证</label>
										<div class="col-sm-4 form-group" >
											<input id="id_number" name="id_number" type="text"  class="form-control" >
										</div> 	                            	
	                            </div>                                
	                            <div class="form-group">
	                            <label class="col-sm-2 control-label">婚姻状况</label>
	                                    <div class="col-sm-2 form-group" > 
											<select id="marital_state" name="marital_state" class="selectpicker" data-size="5" >
					    						<option value="">请选择</option>
					    						<option value="未婚">未婚</option>
											    <option value="已婚">已婚</option>
											    <option value="离婚">离婚</option>
											    <option value="其他">其他</option>                          
											</select>
										</div>	
	                            	<label class="col-sm-2 control-label">联系人姓名</label>
	                                        <div class="col-sm-3 form-group">
	                                            <input id="apatient_name" name="apatient_name" class="form-control" >
	                                        </div>
		                            <label class="col-sm-2 control-label">联系人电话</label>
		                                        <div class="col-sm-3 form-group">
		                                            <input id="aphone" name="aphone" class="form-control" >
		                                        </div>
	                            </div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">患者关系</label>
	                                         <div class="col-sm-2 form-group"> 
											<select id="relation" name="relation" class="selectpicker" data-size="5" >
					    						<option value="">请选择</option>
					    						<option value="子、女">子、女</option>
											    <option value="孙子、孙女或外孙">孙子、孙女或外孙</option>
											    <option value="父母">父母</option>
											    <option value="祖父母">其他</option> 
											    <option value="兄、弟、姐、妹">兄、弟、姐、妹</option>  
											    <option value="其他">其他</option>  
											</select>
										</div>
									<label class="col-sm-2 control-label">医保</label>
	                                         <div class="col-sm-2 form-group"> 
											<select id="insurance" name="insurance" class="selectpicker" data-size="4" >
					    						<option value="">请选择</option>
					    						<option value="1">自费</option>
											    <option value="2">在职</option>
											    <option value="3">退休</option>
											</select>
										</div>	                            	
									<label class="col-sm-2 control-label">住址</label>
									<div class="col-sm-4 form-group">
										<input id="brith_place" name="brith_place" class="form-control" ></input>
									</div>
								</div>
								<!--  <div class="hr-line-dashed"></div>
								<div class="form-group"> 
	                            	<label class="col-sm-1 control-label">病例号</label>
	                                    <div class="col-sm-2">
	                                        <input id="case_id" name="case_id" type="text" class="form-control" readonly="readonly">
	                                    </div>
	                                <label class="col-sm-2 control-label">入院状态 </label>
	                           	  		<div class="col-sm-2 form-group">
	                                    	<select id="ruyuan_state" name="ruyuan_state" class="selectpicker" data-size="5" >
					    						<option value="">请选择</option>
					    						<option value="危">危</option>
											    <option value="急">急</option>
											    <option value="一般">一般</option> 
											    <option value="其他">其他</option>  
											</select>	
										</div>
									<label class="col-sm-2 control-label">入院日期</label>
										<div class="col-sm-2 form-group">
											<input style="width: 100px;" id="ruyuan_time" name="ruyuan_time"  type="text" class="form-control" >
										</div>
									<label class="col-sm-2 control-label">护理级别 </label>
	                            		<div class="col-sm-2 form-group">
	                                    	<select id="nurse_level" name="nurse_level" class="selectpicker " data-size="5" >
					    						<option value="">请选择</option>
					    						<option value="特殊护理">特殊护理</option>
											    <option value="一级护理">一级护理</option>
											    <option value="二级护理">二级护理</option> 
											    <option value="三级护理">三级护理</option>  
											</select>
										</div>	    
	                                <label class="col-sm-2 control-label">科室选择 &nbsp;</label>
										<div class="col-sm-2 form-group">
										<select id="deparment_id" name="deparment_id" style="width: 50px;" class="selectpicker" data-size="5" >
					    				</select>
					    			</div>
				    				<label class="col-sm-2 control-label">房间选择&nbsp;   </label>
				    					<div class="col-sm-2">
										<select id="room_id" name="room_id" class="selectpicker" data-size="5"  >										
										</select>
										</div>
									<label class="col-sm-2 control-label">床位选择  &nbsp; </label>
										<select id="bed_id" name="bed_id" class="selectpicker" data-size="5"  >	
										</select>
	                            </div>
	                            <div class="form-group"> 
	                            <label class="col-sm-2 control-label">入院诊断1</label>
	                                        <div class="col-sm-4">
	                                            <input id="diagnosis_a" name="diagnosis_a" class="form-control" >
	                                        </div>
	                           	  		          
	                            	<label class="col-sm-2 control-label">主治医生</label>
	    	                        	<div class="col-sm-2 form-group">
										<select id="doctor_id" name="doctor_id" class="selectpicker" data-size="5"  >	
										</select>	
										</div>
	                            </div>
	                            <div class="form-group"> 
	                            <label class="col-sm-2 control-label">入院诊断2</label>
	                                        <div class="col-sm-4">
	                                            <input id="diagnosis_b" name="diagnosis_b" class="form-control" >
	                                        </div>
	                            <label class="col-sm-1 control-label">陪护人</label>
	                                    	<div class="col-md-2">
		                                            <input id="company_name" name="company_name" class="form-control" >
		                                        </div>		          
	                            <label >陪护床位   &nbsp; </label>
	    	                        
										<select id="company_bed_id" name="company_bed_id" class="selectpicker" data-size="5"  >	
										</select>	
	                            
	                            		
										
								</div>  -->	
	                            	
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                                <div class="col-sm-4 col-sm-offset-10 ">
	                                    <button id="btn_add" class="btn btn-primary" type="button">保存</button>
	                                    <button class="btn btn-white" data-dismiss="modal">取消</button>
	                                </div>
	                            </div>
	                        </form>
	                    </div> 
	                </div>
	            </div>
	        </div>
	    </div>
	    
	    <div class="modal inmodal fade" id="myModaEdit" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-lg" style=" margin-left: 2%;
			    margin-right: 2%;
			    width: 95%;">
					
						<div class="modal-content">
							<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							<h4 class="modal-title">修改登记信息</h4>
							</div>
							
							<div class="ibox-content">
	                     
	                     	<!-- <table id="tb_patient_message1"></table> -->
	                     	<form  class="form-horizontal" id="FormEdit">
	                        	<div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">住院号</label>
	                                    <div class="col-sm-3 form-group">
	                                        <input readonly="readonly" id="patient_id1" name="patient_id" type="text" class="form-control" >
	                                    </div>
	                            </div>	
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">病人姓名</label>
	                                    <div class="col-sm-2 form-group">
	                                        <input id="patient_name1" name="patient_name" type="text" class="form-control"   >
	                                    </div>
	                            	
	                                <label class="col-sm-2 control-label">性别</label>
		                                <div class="col-sm-3"> 
		                                    <div class="radio i-checks form-group" >
		                                        <label>
		                                            <input type="radio" checked="" value="男" id="patient_meal1" name="patient_meal"> <i></i>男</label>
		                                        <label>
		                                            <input type="radio"  value="女" id="patient_meal" name="patient_meal"> <i></i>女</label>
		                                    </div>   
		                                </div>
		                            <label class="col-sm-2 control-label">出生日期</label>
										<div class="col-sm-1 form-group">
											<input style="width: 100px;" id="brith_day1" name="brith_day"  type="text" class="form-control" >
										</div> 
										
									
	                            </div>
	                            <div class="form-group">
	                            <label class="col-sm-2 control-label">年龄</label>
	                                        <div class="col-sm-2 form-group">
	                                            <input id="age1" name="age" class="form-control" >
	                                        </div>
	                            	<label class="col-sm-2 control-label">病人手机</label>
	                                        <div class="col-sm-3 form-group">
	                                            <input id="phone1" name="phone" class="form-control" >
	                                        </div>
	                                <label class="col-sm-2 control-label">身份证</label>
										<div class="col-sm-4 form-group" >
											<input id="id_number1" name="id_number" type="text"  class="form-control" >
										</div> 	                            	
	                            </div>                                
	                            <div class="form-group">
	                            <label class="col-sm-2 control-label">婚姻状况</label>
	                                    <div class="col-sm-2 form-group" > 
											<select id="marital_state1" name="marital_state" class="selectpicker" data-size="5" >
					    						<option value="">请选择</option>
					    						<option value="未婚">未婚</option>
											    <option value="已婚">已婚</option>
											    <option value="离婚">离婚</option>
											    <option value="其他">其他</option>                          
											</select>
										</div>	
	                            	<label class="col-sm-2 control-label">联系人姓名</label>
	                                        <div class="col-sm-3 form-group">
	                                            <input id="apatient_name1" name="apatient_name" class="form-control" >
	                                        </div>
		                            <label class="col-sm-2 control-label">联系人电话</label>
		                                        <div class="col-sm-3 form-group">
		                                            <input id="aphone1" name="aphone" class="form-control" >
		                                        </div>
	                            </div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">患者关系</label>
	                                         <div class="col-sm-2 form-group"> 
											<select id="relation1" name="relation" class="selectpicker" data-size="5" >
					    						<option value="">请选择</option>
					    						<option value="子、女">子、女</option>
											    <option value="孙子、孙女或外孙">孙子、孙女或外孙</option>
											    <option value="父母">父母</option>
											    <option value="祖父母">其他</option> 
											    <option value="兄、弟、姐、妹">兄、弟、姐、妹</option>  
											    <option value="其他">其他</option>  
											</select>
										</div>
									<label class="col-sm-2 control-label">医保</label>
	                                         <div class="col-sm-2 form-group"> 
											<select id="insurance1" name="insurance" class="selectpicker" data-size="4" >
					    						<option value="">请选择</option>
					    						<option value="1">自费</option>
											    <option value="2">在职</option>
											    <option value="3">退休</option>
											</select>
										</div>	                            	
									<label class="col-sm-2 control-label">住址</label>
									<div class="col-sm-4 form-group">
										<input id="brith_place1" name="brith_place" class="form-control" ></input>
									</div>
								</div>
								 <!-- <div class="hr-line-dashed"></div>
								<div class="form-group"> 
	                            	<label class="col-sm-1 control-label">病例号</label>
	                                    <div class="col-sm-2">
	                                        <input id="case_id1" name="case_id" type="text" class="form-control" readonly="readonly">
	                                    </div>
	                                <label class="col-sm-2 control-label">入院状态 </label>
	                           	  		<div class="col-sm-2 form-group">
	                                    	<select id="ruyuan_state1" name="ruyuan_state" class="selectpicker" data-size="5" >
					    						<option value="">请选择</option>
					    						<option value="危">危</option>
											    <option value="急">急</option>
											    <option value="一般">一般</option> 
											    <option value="其他">其他</option>  
											</select>	
										</div>
									<label class="col-sm-2 control-label">入院日期</label>
										<div class="col-sm-2 form-group">
											<input style="width: 100px;" id="ruyuan_time1" name="ruyuan_time"  type="text" class="form-control" >
										</div>
									<label class="col-sm-2 control-label">护理级别 </label>
	                            		<div class="col-sm-2 form-group">
	                                    	<select id="nurse_level1" name="nurse_level" class="selectpicker " data-size="5" >
					    						<option value="">请选择</option>
					    						<option value="特殊护理">特殊护理</option>
											    <option value="一级护理">一级护理</option>
											    <option value="二级护理">二级护理</option> 
											    <option value="三级护理">三级护理</option>  
											</select>
										</div>	    	                               
	                            </div>
	                            <div class="form-group"> 
	                            <label class="col-sm-2 control-label">入院诊断1</label>
	                                        <div class="col-sm-4">
	                                            <input id="diagnosis_a1" name="diagnosis_a" class="form-control" >
	                                        </div>
	                           	  		          
	                            	<label class="col-sm-2 control-label">主治医生</label>
	    	                        	<div class="col-sm-2 form-group">
										<select id="doctor_id" name="doctor_id" class="selectpicker" data-size="5"  >	
										</select>	
										</div>
	                            </div>
	                            <div class="form-group"> 
	                            <label class="col-sm-2 control-label">入院诊断2</label>
	                                        <div class="col-sm-4">
	                                            <input id="diagnosis_b1" name="diagnosis_b" class="form-control" >
	                                        </div>	                          
								</div>  -->	
	                            	
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                                <div class="col-sm-4 col-sm-offset-10 ">
	                                    <button id="btn_update" class="btn btn-primary" type="button">修改</button>
	                                    <button id="btn_cancel1" class="btn btn-white" data-dismiss="modal">取消</button>
	                                </div>
	                            </div>
	                        </form>
	                       <!--  <form  class="form-horizontal" id="FormEdit">
	                        	<div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-1 control-label">住院号</label>
	                                    <div class="col-sm-2 form-group">
	                                        <input readonly="readonly" id="patient_id1" name="patient_id1" type="text" class="form-control" >
	                                    </div>
	                            </div>	
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-1 control-label">患者姓名</label>
	                                    <div class="col-sm-2 form-group">
	                                        <input id="patient_name1" name="patient_name1" type="text" class="form-control"   >
	                                    </div>
	                            	
	                                <label class="col-sm-1 control-label">性别</label>
		                                <div class="col-sm-2"> 
		                                    <div class="radio i-checks form-group" >
		                                        <label>
		                                            <input type="radio" checked="" value="男" id="patient_meal1" name="patient_meal1"> <i></i>男</label>
		                                        <label>
		                                            <input type="radio"  value="女" id="patient_meal1" name="patient_meal1"> <i></i>女</label>
		                                    </div>   
		                                </div>
		                            <label class="col-sm-1 control-label">出生日期</label>
										<div class="col-sm-1 form-group">
											<input style="width: 100px;" id="brith_day1" name="brith_day1"  type="text" class="form-control" >
										</div> 
										<label class="col-sm-1 control-label">年龄</label>
	                                        <div class="col-md-1 form-group">
	                                            <input id="age1" name="age1" class="form-control" >
	                                        </div>
									
	                            </div>
	                            <div class="form-group">
	                            	<label class="col-sm-1 control-label">患者手机</label>
	                                        <div class="col-md-2 form-group">
	                                            <input id="phone1" name="phone1" class="form-control" >
	                                        </div>
	                                <label class="col-sm-1 control-label">身份证</label>
										<div class="col-sm-2 form-group" >
											<input id="id_number1" name="id_number1" type="text"  class="form-control" >
										</div> 
	                            	<label class="col-sm-1 control-label">婚姻状况</label>
	                                    <div class="col-sm-2 form-group" > 
											<select id="marital_state1" name="marital_state1" class="selectpicker" data-size="5" >
					    						<option value="">请选择</option>
					    						<option value="未婚">未婚</option>
											    <option value="已婚">已婚</option>
											    <option value="离婚">离婚</option>
											    <option value="其他">其他</option>                          
											</select>
										</div>	
	                            </div>                                
	                            <div class="form-group">
	                            	<label class="col-sm-1 control-label">联系人姓名</label>
	                                        <div class="col-md-2 form-group">
	                                            <input id="apatient_name1" name="apatient_name1" class="form-control" >
	                                        </div>
		                            <label class="col-sm-1 control-label">联系人电话</label>
		                                        <div class="col-sm-2 form-group">
		                                            <input id="aphone1" name="aphone1" class="form-control" >
		                                        </div>
	                            	<label class="col-sm-1 control-label">患者关系</label>
	                                         <div class="col-sm-2 form-group"> 
											<select id="relation1" name="relation1" class="selectpicker" data-size="5" >
					    						<option value="">请选择</option>
					    						<option value="子、女">子、女</option>
											    <option value="孙子、孙女或外孙">孙子、孙女或外孙</option>
											    <option value="父母">父母</option>
											    <option value="祖父母">其他</option> 
											    <option value="兄、弟、姐、妹">兄、弟、姐、妹</option>  
											    <option value="其他">其他</option>  
											</select>
										</div>
	                            </div>
	                            <div class="form-group">                            	
									<label class="col-sm-1 control-label">住址</label>
									<div class="col-sm-4">
										<input id="brith_place1" name="brith_place1" class="form-control" ></input>
									</div>
								</div>
								<div class="hr-line-dashed"></div>
								<div class="form-group"> 
	                            	<label class="col-sm-1 control-label">病例号</label>
	                                    <div class="col-sm-2">
	                                        <input id="case_id1" name="case_id1" type="text" class="form-control" readonly="readonly">
	                                    </div>
	                                <label class="col-sm-1 control-label">科室选择 &nbsp;</label>
										<div class="col-sm-2 form-group">
										<select id="deparment_id1" name="deparment_id1" style="width: 50px;" class="selectpicker" data-size="5" >
					    				</select>
					    			</div>
				    				<label class="col-sm-1 control-label">房间选择&nbsp;   </label>
				    					<div class="col-sm-2">
										<select id="room_id1" name="room_id1" class="selectpicker" data-size="5"  >										
										</select>
										</div>
									<label class="col-sm-1 control-label">床位选择  &nbsp; </label>
										<select id="bed_id1" name="bed_id1" class="selectpicker" data-size="5"  >	
										</select>
	                            </div>
	                            <div class="form-group"> 
	                            <label class="col-sm-1 control-label">入院诊断1</label>
	                                        <div class="col-md-4">
	                                            <input id="diagnosis_a1" name="diagnosis_a1" class="form-control" >
	                                        </div>
	                            <label >入院状态 &nbsp;  </label>
	                                    	<select id="ruyuan_state1" name="ruyuan_state1" class="selectpicker" data-size="5" >
					    						<option value="">请选择</option>
					    						<option value="危">危</option>
											    <option value="急">急</option>
											    <option value="一般">一般</option> 
											    <option value="其他">其他</option>  
											</select>		          
	                            <label >&nbsp;&nbsp;&nbsp;主治医生   &nbsp; </label>
	    	                        
										<select id="doctor_id1" name="doctor_id1" class="selectpicker" data-size="5"  >	
										</select>	
	                            </div>
	                            <div class="form-group"> 
	                            <label class="col-sm-1 control-label">入院诊断2</label>
	                                        <div class="col-md-4">
	                                            <input id="diagnosis_b1" name="diagnosis_b1" class="form-control" >
	                                        </div>	                           
	                            </div>
	                            <div class="form-group">		
									<label class="col-sm-1 control-label">入院日期</label>
										<div class="col-sm-1">
											<input style="width: 100px;" id="ruyuan_time1" name="ruyuan_time1"  type="text" class="form-control" >
										</div>
									<label class="col-sm-1 control-label"> &nbsp; &nbsp;护理级别 &nbsp;  </label>
	                            	
	                                    	<select id="nurse_level1" name="nurse_level1" class="selectpicker " data-size="5" >
					    						<option value="">请选择</option>
					    						<option value="特殊护理">特殊护理</option>
											    <option value="一级护理">一级护理</option>
											    <option value="二级护理">二级护理</option> 
											    <option value="三级护理">三级护理</option>  
											</select>
									
	                            </div>	
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                                <div class="col-sm-4 col-sm-offset-10 ">
	                                    <button id="btn_update" class="btn btn-primary" type="button">修改</button>
	                                    <button id="btn_cancel1" class="btn btn-white" data-dismiss="modal">取消</button>
	                                </div>
	                            </div>
	                        </form> -->
	                    </div> 
							
							
						</div>
					</div>
				</div>
			<div class="modal inmodal fade" id="myModaEdit_payment" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-lg" style=" margin-left: 2%;
			    margin-right: 2%;
			    width: 95%;">
					
						<div class="modal-content">
							<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							<h4 class="modal-title">收取预交金</h4>
							</div>
							
							<div class="ibox-content">
	                     
	                     	<!-- <table id="tb_patient_message1"></table> -->
	                     	<form  class="form-horizontal" id="Formadd_payment">
	                        	<div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">住院号</label>
	                                    <div class="col-sm-3 form-group">
	                                        <input readonly="readonly" id="patient_id2" name="patient_id" type="text" class="form-control" >
	                                    </div>
	                                    <div class="col-sm-3 form-group">
	                                        <input type="hidden" id="payment_id" name="payment_id" type="text" class="form-control" >
	                                    </div>
	                                    <div class="col-sm-3 form-group">
	                                        <input type="hidden" value="${USER.user_work_id}"  id="payee" name="payee"  type="text" class="form-control"   >
	                                    </div>
	                                     <div class="col-sm-3 form-group">
	                                        <input type="hidden" id="advance_payment_time" name="advance_payment_time"  type="text" class="form-control"   >
	                                    </div>
	                                    <div class="col-sm-3 form-group">
	                                        <input type="hidden" id="patient_namea" name="patient_namea"  type="text" class="form-control"   >
	                                    </div>
	                                    <div class="col-sm-3 form-group">
	                                        <input type="hidden" id="phonea" name="phonea"  type="text" class="form-control"   >
	                                    </div>
	                                    
	                            </div>	
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">病人姓名</label>
	                                    <div class="col-sm-2 form-group">
	                                        <input readonly="readonly" id="patient_name2" name="patient_name" type="text" class="form-control"   >
	                                    </div>
	                            	 <label class="col-sm-2 control-label">身份证</label>
										<div class="col-sm-4 form-group" >
											<input readonly="readonly" id="id_number2" name="id_number" type="text"  class="form-control" >
										</div> 
	                                <label class="col-sm-2 control-label">医保</label>
	                                         <div class="col-sm-2 form-group"> 
											<select disabled="disabled" id="insurance2" name="insurance" class="selectpicker" data-size="4" >
					    						<option value="">请选择</option>
					    						<option value="1">自费</option>
											    <option value="2">在职</option>
											    <option value="3">退休</option>
											</select>
										</div>
										
									
	                            </div>
	                            <div class="form-group">
	                            	<label class="col-sm-2 control-label">金额</label>
										<div class="col-sm-2 form-group" >
											<input  id="advance_payment" name="advance_payment" type="text"  class="form-control" >
										</div>
										<div class="col-sm-2 form-group" >
											<input  id="payment_name" name="payment_name" type="hidden"  class="form-control" value="预交金" >
										</div>
	                               	                            	
	                            </div>                                
	                           
	                           
	                            	
	                            <div class="hr-line-dashed"></div>
	                            <div class="form-group">
	                                <div class="col-sm-4 col-sm-offset-10 ">
	                                    <button id="btn_payment" class="btn btn-primary" type="button" formtarget="_blank">提交</button>
	                                    <button id="btn_cancel1" class="btn btn-white" data-dismiss="modal">取消</button>
	                                </div>
	                            </div>
	                        </form>
	                    </div> 
							
							
						</div>
					</div>
				</div>
				<div class="modal inmodal fade" id=myModaadd_case tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-lg" style=" margin-left: 2%;
			    margin-right: 2%;
			    width: 95%;">
					
						<div class="modal-content">
							<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							<h4 class="modal-title">病人分配</h4>
							</div>
							
							<div class="ibox-content">
	                     
	                     	<!-- <table id="tb_patient_message1"></table> -->
	                     	<form  class="form-horizontal" id="my_case">
	                        	<div class="hr-line-dashed"></div>
	                            <div class="form-group"> 
	                            	<label class="col-sm-1 control-label">病例号</label>
	                                    <div class="col-sm-2 form-group">
	                                        <input id="case_id" name="case_id" type="text" class="form-control" readonly="readonly">
	                                    </div>
	                                <label class="col-sm-2 control-label">科室选择 &nbsp;</label>
										<div class="col-sm-2 form-group">
										<select id="deparment_id" name="deparment_id" style="width: 50px;" class="selectpicker" data-size="5" >
					    				</select>
					    			</div>
				    				<label class="col-sm-2 control-label">房间选择&nbsp;   </label>
				    					<div class="col-sm-2 form-group">
										<select id="room_id" name="room_id" class="selectpicker" data-size="5"  >										
										</select>
										</div>
									<label class="col-sm-2 control-label">床位选择  &nbsp; </label>
										<div class="col-sm-2 form-group">
										<select id="bed_id" name="bed_id" class="selectpicker" data-size="5"  >	
										</select>
										</div>
	                            </div>
	                            <div class="form-group"> 
	                            <label class="col-sm-2 control-label">入院诊断1</label>
	                                        <div class="col-sm-4 form-group">
	                                            <input id="diagnosis_a" name="diagnosis_a" class="form-control" >
	                                        </div>
	                            <label class="col-sm-2 control-label">入院状态</label>
	                                    	<div class="col-sm-2 form-group">
	                                    	<select id="ruyuan_state" name="ruyuan_state" class="selectpicker" data-size="5" >
					    						<option value="">请选择</option>
					    						<option value="危">危</option>
											    <option value="急">急</option>
											    <option value="一般">一般</option> 
											    <option value="其他">其他</option>  
											</select>
											</div>		          
	                            <label class="col-sm-2 control-label">主治医生</label>
	    	                        	<div class="col-sm-2 form-group">
										<select id="doctor_id" name="doctor_id" class="selectpicker" data-size="5"  >	
										</select>
										</div>	
	                            </div>
	                            <div class="form-group"> 
	                            <label class="col-sm-2 control-label">入院诊断2</label>
	                                        <div class="col-sm-4 form-group">
	                                            <input id="diagnosis_b" name="diagnosis_b" class="form-control" >
	                                        </div>	                           
	                  		
									<label class="col-sm-2 control-label">入院日期</label>
										<div class="col-sm-2 form-group">
											<input style="width: 100px;" id="ruyuan_time" name="ruyuan_time"  type="text" class="form-control" >
										</div>
									<label class="col-sm-2 control-label"> &nbsp; &nbsp;护理级别 &nbsp;  </label>
	                            			<div class="col-sm-2 form-group">
	                                    	<select id="nurse_level" name="nurse_level" class="selectpicker " data-size="5" >
					    						<option value="">请选择</option>
					    						<option value="特殊护理">特殊护理</option>
											    <option value="一级护理">一级护理</option>
											    <option value="二级护理">二级护理</option> 
											    <option value="三级护理">三级护理</option>  
											</select>
											</div>
	                            </div>                               
	                           <div class="form-group">
	                           	
	                                    <div class="col-sm-3 form-group">
	                                        <input  id="patient_id3" name="patient_id" type="hidden" class="form-control" >
	                                    </div>
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
	   		<button id="btn_edit" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-wrench" ></span>修改登记信息
	          	</button>
			<!-- <button id="btn_delete" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-remove" ></span>删除
         	</button>  -->
         	<button id="btn_add_payment" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-pencil" ></span>收取预交金
         	</button>
         	<button id="btn_assignment" type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-pencil" ></span>病人分配
         	</button>
         	<!-- <button id="btn_print"  type="button" class="btn btn-white">
              	<span class="glyphicon glyphicon-print" ></span>打印
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
                	
                	$("#myModaEdit").modal('show');	    
                	$('#patient_id1').val(row.patient.patient_id);
                	$('#age1').val(row.patient.age);
                	$('#patient_name1').val(row.patient.patient_name);
                	$('#case_id1').val(row.case_id);
                	$('#id_number1').val(row.patient.id_number);
                	$('#patient_meal1').val(row.patient.patient_meal);
                	$('#apatient_name1').val(row.patient.apatient_name);
                	$('#aphone1').val(row.patient.aphone);
                	$('#phone1').val(row.patient.phone);
                	$('#brith_place1').val(row.patient.brith_place);
                	$('#diagnosis_a1').val(row.diagnosis_a);
                	$('#diagnosis_b1').val(row.diagnosis_b);
                	$('#marital_state1').selectpicker('val',(row.patient.marital_state));	//传值过来并且默认选中对应的值 
                	$('#relation1').selectpicker('val',(row.patient.relation));
               		//$('#deparment_id1').selectpicker('val',(row.deparment.deparment_id));
               		$('#ruyuan_time1').val(changeDateFormat1(row.ruyuan_time));
               		$('#brith_day1').val(changeDateFormat1(row.patient.brith_day));
               		$('#ruyuan_state1').selectpicker('val',(row.ruyuan_state));
               		$('#nurse_level1').selectpicker('val',(row.nurse_level));
               		$('#insurance1').selectpicker('val',(row.patient.insurance));
                	console.log(row);
                }
				});
			//缴纳预交金按钮					
			$(document).on('click', "#btn_add_payment",function(){									
				var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
				var row = arrselectedData[0];						
				if (arrselectedData.length <= 0) {
                    alert("请选中一行");
                }else{
                	//随机生成id
                	randompayment();
                	function randompayment(){
                		let str2 = '';
            	        for(var i = 1;i<=2;i++){
            	            str2 = str2 + String.fromCharCode(Math.floor(Math.random()*24+65));
            	        }
            	        for(var i = 1;i<=4;i++){
            	            str2 = str2 + Math.floor(Math.random()*10);
            	        }
            			
            	        document.getElementById("payment_id").value = [0].innerText = str2;
                	};
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
                	$("#myModaEdit_payment").modal('show');
                	$('#patient_id2').val(row.patient.patient_id);
                	$('#patient_name2').val(row.patient.patient_name);
                	$('#id_number2').val(row.patient.id_number);
                	$('#insurance2').selectpicker('val',(row.patient.insurance));
                	$('#advance_payment_time').val(time);
                	$('#patient_namea').val(row.patient.patient_name);
                	$('#phonea').val(row.patient.phone);
                	console.log(row);
                };
				});
				//分配按钮
				$(document).on('click', "#btn_assignment",function(){									
					var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
					var row = arrselectedData[0];						
					if (arrselectedData.length <= 0) {
	                    alert("请选中一行");
	                }else if(row.sum_advance_payment == null){
	                	swal({
		                	   title:"未交预交金",
		                	   text:"",
		                	   type:"warning"
		                   });
	                }else if(row.sum_advance_payment != null && row.case_id != null){
	                	swal({
		                	   title:"病人已分配",
		                	   text:"",
		                	   type:"warning"
		                   });
	                }else if(row.sum_advance_payment != null && row.case_id == null){
	                	getDeparmentlList();
	                	//随机生成id
	                	randocase();
	                	function randocase(){
	                		let str1 = '';
	            	        for(var i = 1;i<=1;i++){
	            	            str1 = str1 + String.fromCharCode(Math.floor(Math.random()*24+65));
	            	        }
	            	        for(var i = 1;i<=4;i++){
	            	            str1 = str1 + Math.floor(Math.random()*10);
	            	        }
	            	        
	            			document.getElementById("case_id").value = [0].innerText = str1;
	                	};
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
	                	$("#myModaadd_case").modal('show');
	                	$('#patient_id3').val(row.patient.patient_id);
	                	$('#patient_name2').val(row.patient.patient_name);
	                	$('#id_number2').val(row.patient.id_number);
	                	$('#insurance2').selectpicker('val',(row.patient.insurance));
	                	$('#advance_payment_time').val(time);
	                	console.log(row);
	                };
					});	
			//删除按钮
			$(document).on('click', "#btn_delete",function(){
				var arrselectedData = $('#tb_patient_message').bootstrapTable('getSelections');
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
					//当属性设置为"disabled"时，提交表单时，select的值无法传递，提交前移除disabled属性
					//$("#patient_id").removeAttr("disabled");
					  //通过表单验证，以下编写自己的代码
					  var param = $("#Formadd").serializeArray();
						        $.ajax({
									url: "/hospital/addPatient",
									type:"post",
									data:param,
									 success: function (data) {
										 swal({title:"新增成功",
					                            text:"",
					                            type:"success",
					                            //timer:2000,
					                            });
						                $('#tb_patient_message').bootstrapTable('refresh');
						                document.getElementById("Formadd").reset();
						                $("#myModaAdd").modal('hide');
							         },
							         error:function(){
							        	 swal({title:"新增失败",
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
			//模态框修改按钮
			$(document).on('click', "#btn_update",function(){

				if(editValidate().form()) {
					  //通过表单验证，以下编写自己的代码
					  var param = $("#FormEdit").serializeArray();
					  console.log(param);
						         $.ajax({
									url: "/hospital/updatePatient",
									type:"post",
									data:param,
									 success: function (data) {
										 swal({title:"更新成功",
					                            text:"",
					                            type:"success",
					                            //timer:2000,
					                            });
						                count = 0;
										console.log(count);
										$("#btn_edit").removeAttr("disabled");
						                $('#tb_patient_message').bootstrapTable('refresh');
						                document.getElementById("FormEdit").reset();
						                $("#myModaEdit").modal('hide');
							         },
							         error:function(){
							        	 swal({title:"更新失败",
					                            text:"",
					                            type:"error",
					                            //timer:2000,
					                            });
									 }

								}); 	   
					 } else {
					  //校验不通过，什么都不用做，校验信息已经正常显示在表单上
						console.log("校验不通过");
					 };					
				});
				 //模态框取消修改并刷新表格
			$(document).on('click', "#btn_cancel1",function(){
				$("#tb_patient_message").bootstrapTable('refresh');	
				});
			$(document).on('click', "#btn_cancel3",function(){
				$("#tb_patient_message").bootstrapTable('refresh');
				//$('#doctor_id.selectpicker').selectpicker('val',-1);
				$('#deparment_id.selectpicker').selectpicker('val',-1);
				//$('#room_id.selectpicker').selectpicker('val',-1);
				//$('#bed_id.selectpicker').selectpicker('val',-1);
				$('#ruyuan_state.selectpicker').selectpicker('val',-1);
				$('#nurse_level.selectpicker').selectpicker('val',-1);
				});	 
			 //模态框缴纳预交金按钮
			$(document).on('click', "#btn_payment",function(){
	
				if(moneyValidate().form()) {
					  //通过表单验证，以下编写自己的代码
					  var param = $("#Formadd_payment").serializeArray();
					  var insurance21 = document.getElementById("insurance2").value;
					  console.log(param);
					  var payment_id = param[1].value;
					  var payment_name = param[9].value;
					  var advance_payment = param[8].value;
					  var patient_id = param[0].value;
					  var payee = param[2].value;
					//跳转至支付页面
	                	//turnnew(payment_id,payment_name,advance_payment,patient_id,payee);
						/* window.location.href="alipaySum?payment_id="+payment_id+"&payment_name="+payment_name 
						+"&advance_payment="+advance_payment+"&patient_id="+patient_id
						+"&payee="+payee; */
						function turnnew(payment_id,payment_name,advance_payment,patient_id,payee){
							page("alipaySum?payment_id="+payment_id+"&payment_name="+payment_name 
									+"&advance_payment="+advance_payment+"&patient_id="+patient_id
									+"&payee="+payee,"支付页面");
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
						            $.ajax({
									url: "/hospital/addPayment_message",
									type:"post",
									data:param,
									 success: function (data) {
										 swal(
								                {title:"缴纳成功",
								                    text:"是否进入预交金打印预览页面",
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
								                	var advance_payment = param[8].value;
								                	var payment_id = param[1].value;
								                	var patient_name = param[6].value;
								                	var phonea = param[5].value;
								                	var advance_payment_time = param[3].value;
								                	var payee = "${USER.user_name}";
								                	if(insurance21 == 1){
								                		var insurance211 = "自费";
								                	}
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
								                    			phonea,advance_payment_time,payee,insurance211,ada); 
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
						                $("#myModaEdit_payment").modal('hide');
							         },
							         error:function(){
							        	 alert("缴纳失败");
									 }

								});      
					 } else {
					  //校验不通过，什么都不用做，校验信息已经正常显示在表单上
						console.log("校验不通过");
					 };				
				}); 
			//模态框分配按钮
			$(document).on('click', "#btn_case",function(){
	
				if(assignValidate().form()) {
					  //通过表单验证，以下编写自己的代码
					  var param = $("#my_case").serializeArray();
					  console.log(param);
						           $.ajax({
									url: "/hospital/addPatient_message",
									type:"post",
									data:param,
									 success: function (data) {
										 swal({title:"分配成功",
					                            text:"",
					                            type:"success",
					                            //timer:2000,
					                            });
						                $('#deparment_id.selectpicker').selectpicker('val',-1);
						                $('#ruyuan_state.selectpicker').selectpicker('val',-1);
										$('#nurse_level.selectpicker').selectpicker('val',-1);
						                $('#tb_patient_message').bootstrapTable('refresh');						                
						                document.getElementById("my_case").reset();
						                $("#myModaadd_case").modal('hide');
							         },
							         error:function(){
							        	 swal({title:"分配失败",
					                            text:"",
					                            type:"error",
					                            //timer:2000,
					                            });
									 }

								});      
					 } else {
					  //校验不通过，什么都不用做，校验信息已经正常显示在表单上
						console.log("校验不通过");
					 };				
				});
			
			function printLodop(advance_payment,payment_id,patient_name,
        			phonea,advance_payment_time,payee,insurance211,ada) {
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
				LODOP.ADD_PRINT_TEXT(127,451,68,20,"医保类型");
				LODOP.SET_PRINT_STYLEA(0,"FontColor","#800000");
				LODOP.SET_PRINT_STYLEA(0,"Alignment",2);
				LODOP.ADD_PRINT_TEXT(301,9,68,20,"大写金额");
				LODOP.SET_PRINT_STYLEA(0,"FontColor","#800000");
				LODOP.SET_PRINT_STYLEA(0,"Alignment",2);
				LODOP.ADD_PRINT_TEXT(303,449,104,20,"小写金额    ￥: ");
				LODOP.SET_PRINT_STYLEA(0,"FontColor","#800000");
				LODOP.SET_PRINT_STYLEA(0,"Alignment",3);
				LODOP.ADD_PRINT_TEXT(192,2,85,20,"预交金额：");
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
				LODOP.ADD_PRINT_TEXT(303,542,70,20,advance_payment+".00");
				LODOP.ADD_PRINT_TEXT(333,546,59,20,payee);
				LODOP.ADD_PRINT_TEXT(190,95,150,20,advance_payment);
				LODOP.ADD_PRINT_TEXT(102,86,150,20,advance_payment_time);
				LODOP.ADD_PRINT_TEXT(127,540,103,20,insurance211);
				LODOP.ADD_PRINT_TEXT(96,526,112,20,payment_id);
				LODOP.SET_PRINT_STYLEA(0,"FontName","System");
				LODOP.ADD_PRINT_TEXT(250,6,81,20,"退费金额：");
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
	
	//打印按钮
	$(document).on('click', "#btn_print",function(){
		/* var num = 300;
		printLodop(num); */
					
		});
	
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
		$('#deparment_id.selectpicker').append("<option value=-1>请选择科室</option>");
                $.each(data.data, function (total) {
                // alert(i);
                // $("<option value='" + data.data[i].schoolno + "'>" + data.data[i].schoolname + "</option>")
                //    .appendTo("#schoolno.selectpicker");
                    $('#deparment_id.selectpicker').append("<option value=" + data.data[total].deparment_id + ">" + data.data[total].deparment_name + "</option>");
                });	                
                $('#deparment_id').selectpicker('refresh');
            },
            error: function (data) {
                alert("查询失败" + data);
            }
        });				
    };
   /*  function getDeparmentlList1(c) {//获取下拉科室列表
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
		$('#deparment_id1.selectpicker').append("<option value=-2>未分配</option>");
		$('#deparment_id1.selectpicker').append("<option value=-1>请选择科室</option>");
                $.each(data.data, function (total) {
                // alert(i);
                // $("<option value='" + data.data[i].schoolno + "'>" + data.data[i].schoolname + "</option>")
                //    .appendTo("#schoolno.selectpicker");
                    $('#deparment_id1.selectpicker').append("<option value=" + data.data[total].deparment_id + ">" + data.data[total].deparment_name + "</option>");
                });	                
              //默认值选中
                $('#deparment_id1').selectpicker('val',c);
                $('#deparment_id1').selectpicker('refresh');
                $('#deparment_id1').selectpicker('render');
            },
            error: function (data) {
                alert("查询失败" + data);
            }
        });				
    }; */
    $(document).on('change', "#deparment_id",function(){
		  //点选之后取自定义属性的值： 
		 var optiona=$("#deparment_id option:selected").val();
		 //$('.selectpicker').selectpicker('val', '列表id');
		 	//$('#dd').val(optiona);
		 	//把数据显示到输入框
		 	getbedList(-1);
		 	//getbedList1(-1);
		 	getRoomList(optiona);
		 	getDoctorList(optiona);
	});
    
     /* $(document).on('change', "#deparment_id1",function(){
		  //点选之后取自定义属性的值： 
		 var optiona=$("#deparment_id1 option:selected").val();
		 	//把数据显示到输入框	
		 	getRoomList1(optiona,rrrrom_id);
		 	//getbedList1(-1);		 	
		 	console.log("room_id-----"+rrrrom_id);
	});  */
    	
  //获取下拉房间列表
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
				$('#room_id.selectpicker').empty();
				$('#room_id.selectpicker').append("<option value=-1>请选择房间</option>");
                $.each(data.data, function (total) {
                    $('#room_id.selectpicker').append("<option value=" + data.data[total].room_id + ">" + data.data[total].room_name + "</option>");
                });		                
                $('#room_id').selectpicker('refresh');
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
    /* function getRoomList1(optiona,a) {
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
				$('#room_id1.selectpicker').empty();
				$('#room_id1.selectpicker').append("<option value=-2>未分配</option>");
				$('#room_id1.selectpicker').append("<option value=-1>请选择科室</option>");
                $.each(data.data, function (total) {
                    $('#room_id1.selectpicker').append("<option value=" + data.data[total].room_id + ">" + data.data[total].room_name + "</option>");
                });
                
                
                //默认值选中
                $('#room_id1').selectpicker('val',a);
                
                $('#room_id1').selectpicker('refresh');
                $('#room_id1').selectpicker('render');
            },
            error: function (data) {
                alert("查询失败" + data);
            }
        });					
    }; */
    $(document).on('change', "#room_id",function(){
		  //点选之后取自定义属性的值： 
		 var optiona=$("#room_id option:selected").val();				 
		 	//获取下拉列表
		 	getbedList(optiona);
		 	//getbedList1(optiona);
		 	console.log(optiona); 
	});
    
    
    /* $(document).on('change', "#room_id1",function(){
		  //点选之后取自定义属性的值： 
		 var optiona=$("#room_id1 option:selected").val();				 
		 	//获取下拉列表
		 getbedList1(optiona,bbbbed_id);
		 console.log("bed_id-----"+bbbbed_id+"----"+optiona);
	}); */
    
  //获取下拉床位列表
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
				$('#bed_id.selectpicker').empty();
				$('#bed_id.selectpicker').append("<option value=-1>请选择床位</option>");
                $.each(data.data, function (total) {
                    $('#bed_id.selectpicker').append("<option value=" + data.data[total].bed_id + ">" + data.data[total].bed_name + "</option>");
                });		                
                $('#bed_id').selectpicker('refresh');
                $('#bed_id').selectpicker('render');
            },
            error: function (data) {
                alert("查询失败" + data);
            }
        });					
    };
    /* function getbedList1(optiona,b) {
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
				$('#bed_id1.selectpicker').empty();
				$('#bed_id1.selectpicker').append("<option value=-2>未分配</option>");
				$('#bed_id1.selectpicker').append("<option value=-1>请选择科室</option>");
                $.each(data.data, function (total) {
                    $('#bed_id1.selectpicker').append("<option value=" + data.data[total].bed_id + ">" + data.data[total].bed_name + "</option>");
                });		           
                
                //默认值选中
                $('#bed_id1').selectpicker('val',b);
                
                $('#bed_id1').selectpicker('refresh');
                $('#bed_id1').selectpicker('render');
            },
            error: function (data) {
                alert("查询失败" + data);
            }
        });					
    }; */
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
		/* $('#ruyuan_time1').datetimepicker({
			format: 'yyyy-mm-dd HH:mm:ss',//显示格式
			todayHighlight: 1,//今天高亮
			minView: "2",//设置只显示到月份
			startView:2,
			forceParse: 0,
			showMeridian: 1,
			autoclose: 1//选择后自动关闭
		}); */
		
		
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
    //添加验证
	function phoneValidate(){
	/*关键在此增加了一个return，返回的是一个validate对象，这个对象有一个form方法，返回的是是否通过验证(true,false)*/
		return $("#Formadd").validate({
		    rules: {
		    	patient_name : {  
		            required : true,  
		            minlength : 1, 				             
		       		}, 
		       	brith_day : {  
		            required : true,  
		            minlength : 1, 				             
		       		}, 
		       		insurance	: {  
		            required : true,  			             
		       		}, 
	       		id_number	: {  
		            required : true,
		            minlength : 18,
		            maxlength : 18,
	       		},
	       		phone : {
	       		 required : true,
	       		},
		     },
		   messages: {
			    patient_name : {  
			       required : "请输入病人姓名",  
			       minlength : "不能小于1个字符",  					    
			  		},
			  		id_number : {  
			        required : "请输入病人身份证", 
			        minlength : "不能小于18个字符",
			        maxlength : "不能多于18个字符",
			  		},
	  			},
			});
	};
	//修改验证
	function editValidate(){
		/*关键在此增加了一个return，返回的是一个validate对象，这个对象有一个form方法，返回的是是否通过验证(true,false)*/
			return $("#FormEdit").validate({
			    rules: {
			    	patient_name : {  
			            required : true,  
			            minlength : 1, 				             
			       		}, 
			       	brith_day : {  
			            required : true,  
			            minlength : 1, 				             
			       		}, 
			       		insurance	: {  
			            required : true,  			             
			       		}, 
		       		id_number	: {  
			            required : true,
			            minlength : 18,
			            maxlength : 18,
		       		},
		       		phone : {
		       		 required : true,
		       		},
			     },
			   messages: {
				    patient_name : {  
				       required : "请输入病人姓名",  
				       minlength : "不能小于1个字符",  					    
				  		},
				  		id_number : {  
				        required : "请输入病人身份证", 
				        minlength : "不能小于18个字符",
				        maxlength : "不能多于18个字符",
				  		},
		  			},
				});
		};
		//缴纳验证
		function moneyValidate(){
			/*关键在此增加了一个return，返回的是一个validate对象，这个对象有一个form方法，返回的是是否通过验证(true,false)*/
				return $("#Formadd_payment").validate({
				    rules: {				    	
				    	advance_payment : {
			       		 required : true,
			       		 min:500,
			       		},
				     },
				     messages: {
				    	 advance_payment : {  
						       required : "请输入金额",  
						       minlength : "不能小于500RMB",  					    
						  		},						  		
				  			},
					});
			};
		//分配验证
		function assignValidate(){
			/*关键在此增加了一个return，返回的是一个validate对象，这个对象有一个form方法，返回的是是否通过验证(true,false)*/
				return $("#my_case").validate({
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
			       		diagnosis_a: {
			       		 required : true,
			       		},
			       		ruyuan_state: {
			       		 required : true,
			       		},
			       		ruyuan_time: {
			       		 required : true,
			       		},
			       		nurse_level: {
			       		 required : true,
			       		},
				     },
				     /* messages: {
				    	 advance_payment : {  
						       required : "请输入金额",  
						       minlength : "不能小于500RMB",  					    
						  		},						  		
				  			}, */
					});
			};	
		$(document).on('change', "#brith_day",function(){
						 var strBirthday = $("#brith_day").val();
						 var a = strBirthday.split(" ");
						 var strBirthday = a[0];
						 var age = jsGetAge(strBirthday);
						 console.log(strBirthday);
						 console.log(age);
						 $('#age').val(age);
					    });
		$(document).on('change', "#brith_day1",function(){
			 var strBirthday = $("#brith_day1").val();
			 var a = strBirthday.split(" ");
			 var strBirthday = a[0];
			 var age = jsGetAge(strBirthday);
			 console.log(strBirthday);
			 console.log(age);
			 $('#age1').val(age);
		    });
		$(document).on('change', "#insurance2",function(){
			 var advance_payment = $("#insurance2").val();
			 if(advance_payment == 1){
				 $('#advance_payment').val(3000);
			 }else if(advance_payment == 2){
				 $('#advance_payment').val(2000);
			 }else if(advance_payment == 3){
				 $('#advance_payment').val(1000);
			 }; 
			 
		    });
		/*根据出生日期算出年龄*/
		function jsGetAge(strBirthday){       
		    var returnAge;
		    var strBirthdayArr=strBirthday.split("-");
		    var birthYear = strBirthdayArr[0];
		    var birthMonth = strBirthdayArr[1];
		    var birthDay = strBirthdayArr[2];
		    
		    d = new Date();
		    var nowYear = d.getFullYear();
		    var nowMonth = d.getMonth() + 1;
		    var nowDay = d.getDate();
		    
		    if(nowYear == birthYear){
		        returnAge = 0;//同年 则为0岁
		    }
		    else{
		        var ageDiff = nowYear - birthYear ; //年之差
		        if(ageDiff > 0){
		            if(nowMonth == birthMonth) {
		                var dayDiff = nowDay - birthDay;//日之差
		                if(dayDiff < 0)
		                {
		                    returnAge = ageDiff - 1;
		                }
		                else
		                {
		                    returnAge = ageDiff ;
		                }
		            }
		            else
		            {
		                var monthDiff = nowMonth - birthMonth;//月之差
		                if(monthDiff < 0)
		                {
		                    returnAge = ageDiff - 1;
		                }
		                else
		                {
		                    returnAge = ageDiff ;
		                }
		            }
		        }
		        else
		        {
		            returnAge = -1;//返回-1 表示出生日期输入错误 晚于今天
		        }
		    }
		    
		    return returnAge;//返回周岁年龄
		    
		};
			    
    </script>
    <script type="text/javascript" src="js/LodopFuncs.js"></script>
    <object  id="LODOP_OB" classid="clsid:2105C259-1E0C-4534-8141-A753534CB4CA" width=0 height=0> 
	       <embed id="LODOP_EM" type="application/x-print-lodop" width=0 height=0></embed>
	</object>
	
</body>

</html>