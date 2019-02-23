<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Journal CENTER</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- daterange picker -->
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker-bs3.css">
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="plugins/iCheck/all.css">
    <!-- Bootstrap Color Picker -->
    <link rel="stylesheet" href="plugins/colorpicker/bootstrap-colorpicker.min.css">
    <!-- Bootstrap time Picker -->
    <link rel="stylesheet" href="plugins/timepicker/bootstrap-timepicker.min.css">
    <!-- Select2 -->
    <link rel="stylesheet" href="plugins/select2/select2.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
</head>

<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
        <header class="main-header">
            <!-- Logo -->
            <a href="index2.html" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
         
         <b>Journal</b>
        </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
            </nav>
        </header>
        <!-- Left side column. contains the logo and sidebar -->
 		<%@ include file="nav.jsp" %>
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <section class="content">
                <div class="box box-default">
                    <div class="box-header with-border">
                        <h3 class="box-title">Search</h3>
     
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Progress start Time</label>
                                    <div class="input-group" id="progress-start-time">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="">
                                    </div>
                                </div><!-- /.form-group -->
                                <div class="form-group">
                                    <label>Plan start Time</label>
                                    <div class="input-group" id="plan-start-time">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="">
                                    </div>
                                </div><!-- /.form-group -->
                                <div class="form-group">
                                    <label>Creation Time</label>
                                    <div class="input-group" id="creation-time">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="">
                                    </div>
                                </div><!-- /.form-group -->
                                <div class="form-group">
                                    <label>Topic</label>
                                      <select id="select-topic" class="form-control select2"   multiple="single" data-placeholder="Select a topic" style="width: 100%;">
                                        
                                      </select>
                                </div><!-- /.form-group -->
                            </div><!-- /.col -->
                            <div class="col-md-6">
                                <div class="form-group">
                                      <label>Progress End Time</label>
                                    <div class="input-group" id="progress-end-time">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="">
                                    </div>
                                </div><!-- /.form-group -->
                                 <div class="form-group">
                                      <label>Plan End Time</label>
                                    <div class="input-group" id="plan-end-time">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="">
                                    </div>
                                </div><!-- /.form-group -->
                                <div class="form-group">
                         
                                </div><!-- /.form-group -->
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        <div class="row">
                            <div class="col-xs-3"></div>
                            <div class="col-xs-4"><button id="btn-show-all-project-journal" class="btn btn-block btn-primary" >View All Journals Of This Project</button></div>
                            <div class="col-xs-2"><button id="btn-search" class="btn btn-block btn-primary">Search</button></div>
                            <div class="col-xs-3"> <a  href="#" onclick="goto_jounal_add();return false;" class="btn btn-block  btn-info">Create A New Journal</a></div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box">
                            <div class="box-header">
                                <h3 class="box-title">My Journals</h3>
                            </div><!-- /.box-header -->
                            <div class="box-body table-responsive no-padding">
                                <table class="table table-hover">
                                 		<tr>
                                            <th>Author</th>
                                             <th>Entry time</th>
                                            <th>Wondering Area Topic</th>
                                            <th>Progress: My new idea and knowledge</th>
                                            <th>Plan: Working on deeper issues</th>
                                            <th>Resource to use</th>
                                            <th>Share</th>
                                             <th>Action</th>
                                         </tr>
                                    <tbody id="record">
                                       
                                      
                                    </tbody>
                                </table>
                            </div><!-- /.box-body -->
                        </div><!-- /.box -->
                    </div>
                </div>
            </section>
        </div><!-- /.content-wrapper -->
        <footer class="main-footer">
            <div class="pull-right hidden-xs">
                <b>Version</b> 2.3.0
            </div>
            <strong>Copyright &copy; 2014-2025</strong> All rights reserved.
        </footer>
        <!-- Control Sidebar -->
        <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
        <div class="control-sidebar-bg"></div>
    </div><!-- ./wrapper -->
    <!-- jQuery 2.1.4 -->
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
    $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.5 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- Morris.js charts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <!-- Select2 -->
    <script src="plugins/select2/select2.full.min.js"></script>
    <!-- Sparkline -->
    <script src="plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="plugins/knob/jquery.knob.js"></script>
    <!-- daterangepicker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
    <script src="plugins/daterangepicker/daterangepicker.js"></script>
    <!-- datepicker -->
    <script src="plugins/datepicker/bootstrap-datepicker.js"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <!-- Slimscroll -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js"></script>
    <script src="js/get.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <!-- AdminLTE for demo purposes -->

    <script type="text/javascript">
	function del(id){
		 if (window.confirm("Do you really want to delete this record?")) { 
			 getDataFromITM({ 'database':params.database,
	             'token':params.token,
	             'jid':id,
	             },"/journal/delete",function(){
				 init()
			 }) 
		 }
		
	}
	
	function init(){
		$("btn-show-all-project-journal").hide();
	     // get wondering area info
        getDataFromITM({
			        	 'database':params.database,
			             'token':params.token,
			             'pid':params.project_id,
                        },"/project/get_wondering_area", function(status,returndata){
             $("#select-topic").empty().html()
              var records = ""
            	  returndata=JSON.parse(returndata.obj);
            if(status){
            	 for(var i in returndata){
            		 records+="<option value=\""+returndata[i].name+"\">"+returndata[i].name+"</option>"
            	 }
                
            }else{
                console.log("error:" + returndata)
            }
            
             $("#select-topic").html(records)
        })
        
	     
	     
       	 getDataFromITM(params,"/user/getbystr_id",showButton)
       	 
       	 
         getDataFromITM(params,"/user/get/all",function(flag, data){
        	 if(flag){
        		 var users =[]
        			data =JSON.parse(data.obj)
        		 for(var i in data){
        				 users[data[i].str_id]=data[i].last_name+" "+data[i].first_name
        		 }
        		 
        		 window.user = users;
        		 getDataFromITM(params,"/journal/getbyuserid",showTable)
        	 }
        	 
        	
         })
         
	}


	
	function showButton(flag, data){
		
		if(flag){
			data =JSON.parse(data.obj)
			if(data[0].type == "3"){
				sessionStorage.setItem("role","teacher");
				$("#btn-show-all-project-journal").show();
				
			}else{
				$("#btn-show-all-project-journal").hide();
				sessionStorage.setItem("role","student");
			}
		}
	}
	
	$("#btn-show-all-project-journal").click(function(){
		
		 getDataFromITM(params,"/journal/getByprojectId",showTable)
		 
	})
	
    function showTable(flag, data){
    	var plan_start_time =""
		if($('#plan—start-time input').val()!=""){
			plan_start_time=$('#plan-start-time input').val();
		}
    	var plan_end_time =""
		if($('#plan-end-time input').val()!=""){
			plan_end_time = $('#plan-end-time input').val();
		}
    	
    	var progress_start_time =""
		if($('#progress—start-time input').val()!=""){
			progress_start_time=$('#progress-start-time input').val();
    	}
        var progress_end_time =""
		if($('#progress-end-time input').val()!=""){
				progress_end_time = $('#progress-end-time input').val();
    	}
      
        var creation_time =""
    		if($('#creation-time input').val()!=""){
    			creation_time = $('#creation-time input').val();
        	}
        	
    	var selected_topic =""
			if($('#select-topic').val()!=null){
				selected_topic = $('#select-topic').val();
    		}
    	// empty table
		$("#record").empty().html()
		var records =""
    	if(flag){
    		//show data
    		data =JSON.parse(data.obj)
    		// construct html
    		for(var i in data){
    			var flag = true;
    			
    			if(progress_start_time!=""){
    				var date1 = new Date(data[i].progress_start_time);
    				var date2 = new Date(progress_start_time);
    				if(date1-date2<0){
    					flag =false;
    				}
    			}
    			
    			
    			
    			if(progress_end_time!=""){
    				var date1 = new Date(data[i].progress_end_time);
    				var date2 = new Date(progress_end_time);
    				if(date1-date2<0){
    					flag =false;
    				}
    			}
    			
    			
    			if(plan_start_time!=""){
    				var date1 = new Date(data[i].plan_start_time);
    				var date2 = new Date(plan_start_time);
    				if(date1-date2<0){
    					flag =false;
    				}
    			}
    			
    			
    			
    			if(plan_end_time!=""){
    				var date1 = new Date(data[i].plan_end_time);
    				var date2 = new Date(plan_end_time);
    				if(date1-date2<0){
    					flag =false;
    				}
    			}
    			
    			
				if(creation_time!=""){
					var date1 = new Date(data[i].creation_time);
    				var date2 = new Date(creation_time);
    				if(date1-date2<0){
    					flag =false;
    				}
    			}
				
				if(selected_topic!=""){
					if(selected_topic !=data[i].topic){
						flag = false;
					}
				}
    			if(flag){
    					var share =""
    					var users =window.user
    					var isShareed=false;
    					if(data[i].sharepeers!=""){
    						var uids = data[i].sharepeers.split(",")
        					for(var j in uids ){
        						share = share+" " +users[uids[j]]+ ", "
        					}
    					}
    						
    					var delAction=""
    					if(data[i].User_id==params.uid||(isShareed&&data[i].permission=="edit")){
    						delAction="<a href='#' onclick=\"goto_jounal_details("+data[i].Journal_id+")\">View/</a><a href='#' onclick=\"goto_jounal_edit("+data[i].Journal_id+")\"> Edit</a>&nbsp;&nbsp;&nbsp;<a href='#' onclick=\"del("+data[i].Journal_id+")\">Delete</a>"
    					}else{
    						delAction="<a href='#' onclick=\"goto_jounal_details("+data[i].Journal_id+")\">View</a>"
    	    				
    					}
    					
    					var regex = /(<([^>]+)>)/ig
    					
    					var n_knowledge = data[i].new_knowledge.replace(regex, "");
    					if(n_knowledge.length>25){
    						n_knowledge=n_knowledge.substring(0,60)+"..."
    					}
    					
    					var issues = data[i].issues.replace(regex, "");
    					if(issues.length>25){
    						issues=issues.substring(0,60)+"..."
    					}
    					var resources = data[i].resources.replace(regex, "");
    					if(resources.length>25){
    						resources=resources.substring(0,60)+"..."
    					}
    					records+="<tr>"
            			
            			+"<td>"+users[data[i].User_id]+"</td>"
            			+"<td>"+data[i].creation_time+"</td>"
            			+"<td>"+data[i].topic+"</td>"
            			+"<td>"+n_knowledge+"</td>"
            			+"<td>"+issues+"</td>"
            			+"<td>"+resources+"</td>"
            			+"<td>"+share+"</td>"
            			+"<td>"+delAction+"</td>"
            			+"</tr>"
    			}
    		
    		}
    		        
    	}else{
    		records ="<tr>"
            +"<td colspan=\"4\">No data</td>"
         	+"</tr>"
    	}
		$("#record").html(records)
    }
   
	
    $(function() {
    	
    	
    	$("#btn-search").click(function(){
    		getDataFromITM(params,"/journal/getbyuserid",showTable)
    	})
    	
  
        $.fn.datepicker.defaults.format = "mm/dd/yyyy";
    	$("#progress-start-time input").datepicker();
    	$("#plan-start-time input").datepicker();
    	$("#creation-time input").datepicker();
    	$("#progress-end-time input").datepicker();
    	$("#plan-end-time input").datepicker();

        $(".select2").select2();
		
    	init();
    	
        
    });

    //https://itm.arcc.albany.edu/jmj/index.jsp?username=itm&token=2017102418203829049&uid=57c067ec2057905c290083c9&kf-token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI1N2MwNjdkYTIwNTc5MDVjMjkwMDgzYzgiLCJpYXQiOjE1Mzk5MjI4ODMsImV4cCI6MTUzOTk0MDg4M30.6itTnEzZXMnj6_8dHSrUOVROwfE-e7BuA9w9Demq1vU&kfurl=undefined&community_id=57c052ea2057905c29008319&community=Guilderland%20Elementary%20School&localdb=localdb&project_id=3
    </script>

</body>

</html>