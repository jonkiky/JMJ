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
    <link rel="stylesheet" type="text/css" href="css/p-loading.css" />
     <link rel="stylesheet" type="text/css" href="css/main.css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
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
                <h3 class="box-title"><span id="mode">Edit</span> Journal</h3>
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="form-group">
                            <label>Topic</label>
                            <select  class="form-control select2"   data-placeholder="Select a Topic" id="select-topic" style="width: 100%;">
                              
                            </select>
                        </div><!-- /.form-group -->
                    </div>
                </div>
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">progress</h3>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <div class="row">
                                   <div class="col-xs-4">
                            <label>Select a Time</label>
                            <select class="form-control select2"  data-placeholder="Select a Time" id="progress-time-select" style="width: 100%;">
                                <option value="d">Define a time</option>
                                <option value="1w">Recent 1 week</option>
                                <option value="2w">Recent 2 week</option>
                                <option value="1m">Recent 1 month</option>
                                <option value="2m">Recent 2 months</option>
                               
                            </select>
                        </div>
                         <div class="col-xs-8">
                             <label> Define a time </label>
                            <div class="input-group "  id="progress-time-define">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="">
                                    </div>
                                </div>
                        </div>
                        </div><!-- /.form-group -->

                        
                        

                        <div class="form-group">
                            <label>peers</label>
                            <select class="form-control select2" multiple="multiple" data-placeholder="Select a State"  id="progress-peer" style="width: 100%;">
                             
                            </select>
                        </div><!-- /.form-group -->
                        <div class="form-group">
                            <label>I gained new knowledge:</label>
                            <div class="box-body pad">
                                <form>
                                    <textarea   id="progress-content" class="textarea" placeholder="Place some text here" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                                </form>
                            </div>
                        </div><!-- /.form-group -->
                    </div>
                </div>
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Plan</h3>
                    </div>
                    <div class="box-body">
                         <div class="form-group">
                            <div class="row">
                                   <div class="col-xs-4">
                            <label>work plan for:</label>
                            <select class="form-control select2"  data-placeholder="Select a Time" id="plan-time-select" style="width: 100%;">
                                <option value="d">Define a time</option>
                                <option value="1w">Next 1 week</option>
                                <option value="2w">Next 2 week</option>
                                <option value="1m">Next 1 month</option>
                                <option value="2m">Next 2 months</option>
                               
                            </select>
                        </div>
                         <div class="col-xs-8">
                             <label> Define a time </label>
                            <div class="input-group "  id="plan-time-define">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="">
                                    </div>
                                </div>
                        </div>
                        </div><!-- /.form-group -->

                        <div class="form-group">
                            <label>I will focus on the following deeper issue(s) and question(s):</label>
                            <div class="box-body pad">
                                <form>
                                    <textarea id="plan-content" class="textarea" placeholder="Place some text here" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                                </form>
                            </div>
                        </div><!-- /.form-group -->
            
                        <div class="form-group">
                            <label>possible actions:</label>
                            <select class="form-control select2" multiple="multiple" data-placeholder="Select a action" id="plan-action" style="width: 100%;">
                                <option>activities in the inquiry cycle</option>
                            </select>
                        </div><!-- /.form-group -->
                        <div class="form-group">
                            <label>Peer:</label>
                            <select class="form-control select2" multiple="multiple" data-placeholder="Select a Peer" id="plan-peer" style="width: 100%;">
                            
                            </select>
                        </div><!-- /.form-group -->
                        <div class="form-group">
                            <label>resources that I will need to use:</label>
                            <div class="box-body pad">
                                <form>
                                    <textarea class="textarea"  id="plan-content2" placeholder="Place some text here" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                                </form>
                            </div>
                        </div><!-- /.form-group -->
                    </div>
                    </div>
                    <div class="box box-primary">
                        <div class="box-header">
                            <h3 class="box-title">Share</h3>
                        </div>
                        <div class="box-body">
                            <div class="form-group">
                                <label>share my research journal with</label>
                                <select class="form-control select2" multiple="multiple" data-placeholder="Select a Peer" id="share-peer" style="width: 100%;">
                                  
                                </select>
                            </div><!-- /.form-group -->
                            <div class="form-group">
                                <label>she/he can my research journal</label>
                                <select class="form-control select2"  data-placeholder="Select a Permission"  id="share-permission"  style="width: 100%;">
                                    <option value="view">View</option>
                                    <option value="edit">Edit</option>
                                </select>
                            </div><!-- /.form-group -->
                        </div>
                        <div class="box-footer">
                            <div class="col-xs-8"></div>
                            <div class="col-xs-2"><button id="btn-save" class="btn btn-block btn-primary">Edit</button></div>
                            <div class="col-xs-2"><button onclick="window.history.go(-1);return false;" class="btn btn-block btn-primary">Cancel</button></div>
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
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <!-- AdminLTE for demo purposes -->
    <!-- CK Editor -->
    <script src="https://cdn.ckeditor.com/4.4.3/standard/ckeditor.js"></script>
    <script src="js/get.js"></script>
    <script type="text/javascript" src="js/p-loading.min.js"></script>
    <script type="text/javascript">
    
    
    function init(){
    	init_user()
    }
    
    function init_user(){
    	 // get user info
        getDataFromITM({
                        'database':params.database,
                        'token':params.token,
                        'projectid':params.project_id,
                        },"/project/user/get", function(status,returndata){

                        	   $("#progress-peer").empty().html()
                        	   $("#plan-peer").empty().html()
                        	   $("#share-peer").empty().html()
                              var records = ""
                            	  returndata=JSON.parse(returndata.obj);
                            if(status){
                            	 for(var i in returndata){
                            		 records+="<option value=\""+returndata[i].str_id+"\">"+returndata[i].first_name+" "+returndata[i].last_name+"</option>"
                            	 }
                                 console.log("data:" + returndata)
                            }else{
                                console.log("error:" + returndata)
                            }
                            
                        	  $("#progress-peer").html(records);
                        	  $("#plan-peer").html(records);
                        	  $("#share-peer").html(records);
                        	  
                        	  init_area()

        })

    }
    
    
    
    function init_area(){
        // get wondering area info
        getDataFromITM({
			        	 'database':params.database,
			             'token':params.token,
			             'pid':params.project_id,
                        },"/project/get_wondering_area", function(status,returndata){
             $("#select-topic").empty().html()
              var records = ""
            	  returndata=JSON.parse(returndata.obj);
         
        	 var records ="";
			 for(var i in returndata){
					 records+="<option value=\""+returndata[i].name+"\" >"+returndata[i].name+"</option>"
        	 }
			 $("#select-topic").html(records)
			 initActions(returndata )
            
        })
    }
    
    function initActions(topic_data){
        // get action
        getDataFromITM({
			        	 'database':params.database,
			             'token':params.token,
			             'pid':params.project_id,
                        },"/journal/actions", function(status,returndata){
             $("#plan-action").empty().html()
              var records = ""
            	  returndata=JSON.parse(returndata.obj);
             	window.action=returndata;
            if(status){
            	 for(var i in returndata){
            		 records+="<option value=\""+returndata[i].Id+"\">"+returndata[i].action_name+"</option>"
            	 }
                 console.log("data:" + returndata)
            }else{
                console.log("error:" + returndata)
            }
            
             $("#plan-action").html(records)
              get_Jounery( topic_data )
        })
    }
    
    function get_Jounery(topic_data){
    
    	 getDataFromITM({
        	 'database':params.database,
             'token':params.token,
             'jid':getParameter("jid"),
            },"/journal/getbyid", function(status,data){
			if(status){
				
				 console.log(data)
				 data=JSON.parse(data.obj);
				if(data[0].User_id!=params.uid&&sessionStorage.getItem("role")!="teacher"){
					// not the author
					if(data[0].permission =="view"){
						$($('.content .box-primary')[0] ).css("pointer-events","none")
						$($('.content .box-primary')[1] ).css("pointer-events","none")
						$($('.content .box-primary')[2] ).css("pointer-events","none")
						$($('.content .box-primary')[3]).find(".box-body").css("pointer-events","none")
						$('#mode').empty().html("view");
						$('#btn-save').hide()
						
					}
				}
				 
				 $("#select-topic").select2("val",data[0].topic)
				 
				 if(data[0].plan_end_time!=""){
					 $('#plan-time-define input').datepicker( "setDate", data[0].plan_end_time);
				 }else{
					 $('#plan-time-define input').datepicker({
				           format: 'mm/dd/yyyy',
				        });
				 }
			
				 	if(data[0].progress_end_time!=""){
				 		$('#progress-time-define input').datepicker( "setDate", data[0].progress_end_time);
				      
				 	}else{
				 		$('#progress-time-define input').datepicker({
				        	format: 'mm/dd/yyyy',
				        	
				        });
				 	}
			        
				 	$("#progress-time-select").select2("val",  data[0].progress_time_select)
				 	$("#plan-time-select").select2("val", data[0].plan_time_select)
				 	$("#progress-peer").select2("val",data[0].progress_peers.split(","))
				 	$("#plan-peer").select2("val",data[0].planpeers.split(","))
					$("#share-peer").select2("val",data[0].sharepeers.split(","))
					$("#share-permission").select2("val",data[0].permission)
					var actions = data[0].actions.split(',');
				
					$("#plan-action").select2("val",actions)
				 	 
				 	CKEDITOR.instances['plan-content2'].setData(data[0].resources)
				 	CKEDITOR.instances['plan-content'].setData(data[0].issues)
				 	CKEDITOR.instances['progress-content'].setData(data[0].new_knowledge)
				 	
				 	
			}
		})
    }
    

    function add(){
    	
    	var today = new Date();
    	var month  = today.getMonth()+1;
    	// get all the data
    	var params = {
     			'database':getParameter("localdb"),
    			'token':getParameter("token"),
    			'pid':getParameter("project_id"),
    			'selected_topic':$("#select-topic").val()==null?"":$("#select-topic").val(),
    			'Userid':getParameter("uid"),
    			'progresstime':$("#progress-time-select").val()==null?"":$("#progress-time-select").val(),
    			'progress_time_select':$("#progress-time-select").val()==null?"":$("#progress-time-select").val(),
    			'progress_time_define':$("#progress-time-define input").val()==null?"":$("#progress-time-define input").val(),
    			'progresspeers':$("#progress-peer").val()==null?"":$("#progress-peer").val().join(),
    			'newknowledge':CKEDITOR.instances['progress-content'].getData().replace(/\n/g, '').replace(/\t/g, '').replace(/'/g,"\\\'").replace(/"/g,"\\\""),
    			'plantime':$("#plan-time-select").val()==null?"":$("#plan-time-select").val(),
    			'plan_time_select':$("#plan-time-select").val()==null?"":$("#plan-time-select").val(),
    			'plan_time_define':$("#plan-time-define input").val()==null?"":$("#plan-time-define input").val(),
    			'issues':CKEDITOR.instances['plan-content'].getData().replace(/\n/g, '').replace(/\t/g, '').replace(/'/g,"\\\'").replace(/"/g,"\\\""),
    			'actions':$("#plan-action").val()==null?"":$("#plan-action").val().join(),
    			'planpeers':$("#plan-peer").val()==null?"":$("#plan-peer").val().join(),
    			'resources':CKEDITOR.instances['plan-content2'].getData().replace(/\n/g, '').replace(/\t/g, '').replace(/'/g,"\\\'").replace(/"/g,"\\\""),
    			'sharepeers':$("#share-peer").val()==null?"":$("#share-peer").val().join(),
    			'permission':$("#share-permission").val()==null?"view":$("#share-permission").val(),
    			'creationtime':today.getDate()+"/"+month+"/"+today.getFullYear()
    	}
    	
    	 var today = new Date()
    	if(params['plan_time_select']=="1w"){
    		  var tt=subDays(Date(),7)
    		 
    		   params['planstarttime'] = ((today.getMonth().toString().length > 1) ? (today.getMonth() + 1) : ('0' + (today.getMonth() + 1)))+"/"+ ((today.getDate().toString().length > 1) ? today.getDate() : ('0' + today.getDate()))+"/"+today.getFullYear()
    		   params['planendtime'] = ((tt.getMonth().toString().length > 1) ? (tt.getMonth() + 1) : ('0' + (tt.getMonth() + 1)))+"/"+ ((tt.getDate().toString().length > 1) ? tt.getDate() : ('0' + tt.getDate()))+"/"+tt.getFullYear()
    	}
    	
    	if(params['plan_time_select']=="2w"){
  		  var tt=subDays(Date(),14)
  		    params['planstarttime'] = ((today.getMonth().toString().length > 1) ? (today.getMonth() + 1) : ('0' + (today.getMonth() + 1)))+"/"+ ((today.getDate().toString().length > 1) ? today.getDate() : ('0' + today.getDate()))+"/"+today.getFullYear()
  		   params['planendtime'] = ((tt.getMonth().toString().length > 1) ? (tt.getMonth() + 1) : ('0' + (tt.getMonth() + 1)))+"/"+ ((tt.getDate().toString().length > 1) ? tt.getDate() : ('0' + tt.getDate()))+"/"+tt.getFullYear()
  	    	}
    	
    	if(params['plan_time_select']=="1m"){
    		  var tt=subMonth(Date(),1)
    		   params['planstarttime'] = ((today.getMonth().toString().length > 1) ? (today.getMonth() + 1) : ('0' + (today.getMonth() + 1)))+"/"+ ((today.getDate().toString().length > 1) ? today.getDate() : ('0' + today.getDate()))+"/"+today.getFullYear()
    		   params['planendtime'] =((tt.getMonth().toString().length > 1) ? (tt.getMonth() + 1) : ('0' + (tt.getMonth() + 1)))+"/"+ ((tt.getDate().toString().length > 1) ? tt.getDate() : ('0' + tt.getDate()))+"/"+tt.getFullYear()
    	    		}
    	
    	if(params['plan_time_select']=="2m"){
  		  var tt=subMonth(Date(),2)
  		   params['planstarttime'] = ((today.getMonth().toString().length > 1) ? (today.getMonth() + 1) : ('0' + (today.getMonth() + 1)))+"/"+ ((today.getDate().toString().length > 1) ? today.getDate() : ('0' + today.getDate()))+"/"+today.getFullYear()
  		   params['planendtime'] =$("#plan-time-define input").val()
  		}
  		
    	if(params['plan_time_select']=="d"){
    		 params['planstarttime'] = ((today.getMonth().toString().length > 1) ? (today.getMonth() + 1) : ('0' + (today.getMonth() + 1)))+"/"+ ((today.getDate().toString().length > 1) ? today.getDate() : ('0' + today.getDate()))+"/"+today.getFullYear()
    		 params['planendtime'] = $("#progress-time-define input").val()
    	}
    	
    	
    	if(params['progress_time_select']=="1w"){
  		  var tt=subDays(Date(),7)
  		   params['progressstarttime'] =  ((today.getMonth().toString().length > 1) ? (today.getMonth() + 1) : ('0' + (today.getMonth() + 1)))+"/"+ ((today.getDate().toString().length > 1) ? today.getDate() : ('0' + today.getDate()))+"/"+today.getFullYear()
  		   params['progressendtime'] = ((tt.getMonth().toString().length > 1) ? (tt.getMonth() + 1) : ('0' + (tt.getMonth() + 1)))+"/"+ ((tt.getDate().toString().length > 1) ? tt.getDate() : ('0' + tt.getDate()))+"/"+tt.getFullYear()
  	    	}
  	
  	if(params['progress_time_select']=="2w"){
		  var tt=subDays(Date(),14)
		   params['progressstarttime'] =  ((today.getMonth().toString().length > 1) ? (today.getMonth() + 1) : ('0' + (today.getMonth() + 1)))+"/"+ ((today.getDate().toString().length > 1) ? today.getDate() : ('0' + today.getDate()))+"/"+today.getFullYear()
		   params['progressendtime'] =((tt.getMonth().toString().length > 1) ? (tt.getMonth() + 1) : ('0' + (tt.getMonth() + 1)))+"/"+ ((tt.getDate().toString().length > 1) ? tt.getDate() : ('0' + tt.getDate()))+"/"+tt.getFullYear()
	    		}
  	
  	if(params['progress_time_select']=="1m"){
  		  var tt=subMonth(Date(),1)
  		    params['progressstarttime'] =  ((today.getMonth().toString().length > 1) ? (today.getMonth() + 1) : ('0' + (today.getMonth() + 1)))+"/"+ ((today.getDate().toString().length > 1) ? today.getDate() : ('0' + today.getDate()))+"/"+today.getFullYear()
  		   params['progressendtime'] = ((tt.getMonth().toString().length > 1) ? (tt.getMonth() + 1) : ('0' + (tt.getMonth() + 1)))+"/"+ ((tt.getDate().toString().length > 1) ? tt.getDate() : ('0' + tt.getDate()))+"/"+tt.getFullYear()
  	    	}
  	
  	if(params['progress_time_select']=="2m"){
		  var tt=subMonth(Date(),2)
		    params['progressstarttime'] =  ((today.getMonth().toString().length > 1) ? (today.getMonth() + 1) : ('0' + (today.getMonth() + 1)))+"/"+ ((today.getDate().toString().length > 1) ? today.getDate() : ('0' + today.getDate()))+"/"+today.getFullYear()
		   params['progressendtime'] = ((tt.getMonth().toString().length > 1) ? (tt.getMonth() + 1) : ('0' + (tt.getMonth() + 1)))+"/"+ ((tt.getDate().toString().length > 1) ? tt.getDate() : ('0' + tt.getDate()))+"/"+tt.getFullYear()
	    	}
		
  	if(params['progress_time_select']=="d"){
  		 params['progressstarttime'] =  ((today.getMonth().toString().length > 1) ? (today.getMonth() + 1) : ('0' + (today.getMonth() + 1)))+"/"+ ((today.getDate().toString().length > 1) ? today.getDate() : ('0' + today.getDate()))+"/"+today.getFullYear()
  		   params['progressendtime'] = $("#progress-time-define input").val()
  	}
  	
	
    	
    	console.log(params)
    	
        // get wondering area info
        getDataFromITM(params,"/journal/add", function(status,returndata){
            
            if(status){
            	 //back to list page
           	 goto_jounal_index()
                 console.log("data:" + returndata)
            }else{
                console.log("error:" + returndata)
            }
        })
        
    	
    }
    $(function() {

        $(".select2").select2();
        $.fn.datepicker.defaults.format = "mm/dd/yyyy";
        CKEDITOR.replace('plan-content2');
        CKEDITOR.replace('progress-content');
        CKEDITOR.replace('plan-content');
        $('body').ploading({action: 'show'});
        setTimeout(function(){ init()}, 3000);
        
        $("#btn-save").click(function(){
            getDataFromITM({
                            'database':params.database,
                            'token':params.token,
                            'jid':getParameter("jid"),
                            },"/journal/delete", function(status,returndata){
                            	  add()

            })

        })
    });
    
    
    $(document).ajaxStop(function() {
    	  $('body').ploading({action: 'hide'});
    });
    </script>

</body>

</html>