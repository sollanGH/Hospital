<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
   

    <title>中小型医院住院管理系统 - 登录</title>
    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min.css" rel="stylesheet">
    <link href="css/login.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap-select.min.css" />
    <style type="text/css">
    a {
    background-color: #333;
}
    </style>
    <link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script src="js/plugins/sweetalert/sweetalert.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-select.min.js" ></script>
<script src="js/bootstrap.min.js?v=3.3.5"></script>
    <script type="text/javascript" src="js/bootstrap-table.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-table-zh-CN.min.js"></script>
	  <script type="text/javascript" src="js/bootstrap-select.min.js" ></script>
    <script type="text/javascript" src="js/bootstrap-table-export.js" ></script>
</head>

<body class="signin" style="transform: rotateY(517px);">

    <div class="signinpanel">
        <div class="row">
           
            <div class="col-sm-5" > 
            
                <form  id="formlogin"  name="formlogin">
                    <h4 class="no-margins">登录：</h4>
                    <p class="m-t-md">登录医院住院管理系统</p>
                    <input type="text" class="form-control uname" placeholder="用户名" name="username"/>
                    <input type="password" class="form-control pword m-b" placeholder="密码"  name="password" />
                    <select  id="role_id" name="role_id" class="selectpicker" data-size="5" >
   						<option value="1">请选择用户</option>
   						<option value="2">住院管理员</option>
					    <option value="3">药房管理员</option>
					    <option value="4">护士</option> 
					    <option value="5">医生</option> 
					    <option value="6">医技人员</option> 
					    <option value="7">系统管理员</option>  
					</select>
                    <button id="login" class="btn btn-success btn-block" type="button" >登录</button>
           		 	
                </form>
        		</div>
         </div>
        <div class="signup-footer" style="width: 295px;">
            <div class="pull-left">
                &copy; 2018 Hospital Inpatient Management System
            </div>
        </div>
    </div>
    <script type="text/javascript">
    
     var msg = ${msg};
    console.log(msg);
    if( msg > 0){
    	 swal({
      	   title:"用户未登录",
      	   text:"",
      	   type:"warning"
         });
    }  
    
    
    $(document).on('click', "#login",function(){
		var param = $("#formlogin").serializeArray();
		  console.log(param);
		  $.ajax({
				url: "/hospital/denglu",
				type:"post",
				data:param,
				 success: function (data) {
					 console.log(data);
					 if(data=="yes"){
	                   swal({
	                	   title:"登录成功",
	                	   text:"",
	                	   type:"success"
	                   });
	                   console.log(param[2].value);
	                   if(param[2].value==1){
	                	   console.log("11111");
	                	   setTimeout(
	   	                    	
		                		   function(){ window.location.href="index";}
		                		   , 1000);
                   	}else if(param[2].value==2){
                   		setTimeout(
	   	                    	
		                		   function(){ window.location.href="index1";}
		                		   , 1000);
                   	    }else if(param[2].value==3){
                       		setTimeout(
    	   	                    	
 		                		   function(){ window.location.href="index2";}
 		                		   , 1000);
                    	    }else if(param[2].value==4){
                           		setTimeout(
        	   	                    	
     		                		   function(){ window.location.href="index3";}
     		                		   , 1000);
                        	    }else if(param[2].value==5){
                               		setTimeout(
            	   	                    	
          		                		   function(){ window.location.href="index4";}
          		                		   , 1000);
                             	    }else if(param[2].value==6){
                                   		setTimeout(
                	   	                    	
               		                		   function(){ window.location.href="index5";}
               		                		   , 1000);
                                  	    }else if(param[2].value==7){
                                       		setTimeout(
                    	   	                    	
                   		                		   function(){ window.location.href="index6";}
                   		                		   , 1000);
                                      	    }
	                     
					 }else{
						 swal({
		                	   title:"登录失败",
		                	   text:"用户名或密码错误",
		                	   type:"error"
		                   });
					 }
		         },
		         error:function(){
		        	 
				 }

			}); 
    });
    
    </script>
</body>

</html>