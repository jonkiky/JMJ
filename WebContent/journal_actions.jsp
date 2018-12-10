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
                        <h3 class="box-title">Add Actions</h3>
     
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-md-9">
                                <div class="form-group">
                                   
                                    <div class="input-group" style="width:100%">
                                         <input type="text" class="form-control"  id="input-action" style="width:100%" placeholder="Add a action">
                                    </div>
                                </div><!-- /.form-group -->
          
                            </div><!-- /.col -->
                    		 <div class="col-md-3"><button id="btn-add" class="btn btn-block btn-primary">Add</button></div>
                        </div><!-- /.row -->
                    </div><!-- /.box-body -->
           
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box">
                            <div class="box-header">
                                <h3 class="box-title">Actions</h3>
                            </div><!-- /.box-header -->
                            <div class="box-body table-responsive no-padding">
                                <table class="table table-hover">
                                 		<tr>
                                            <th>ID</th>
                                            <th>Name</th>
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
	
    
    $("#btn-add").click(function(){
    	 getDataFromITM({
        	 'database':params.database,
             'token':params.token,
             'aname':$("#input-action").val()==""?"":$("#input-action").val(),
             'pid':params.project_id,
             "uid":params.uid,
            },"/journal_action/add", function(){
            	init()
            })
    })
	function editAction(id){
		console.log(id)
		$("#r"+id+" .span-action-edit-reset").show()
        $("#r"+id+" .input-action-name").show()
         $("#r"+id+" .input-action-name input").val($("#r"+id+" .span-action-name").text())
        $("#r"+id+" .span-action-edit-del").hide()
        $("#r"+id+" .span-action-name").hide()
	}
	
	function delAction(id){
			console.log(id)
		   getDataFromITM({
				        	 'database':params.database,
				             'token':params.token,
				             'aid':id,
	                        },"/journal_action/del", function(){
	                        	init()
	                        })
	}
	function saveAction(id){
		getDataFromITM({
       	 'database':params.database,
            'token':params.token,
            'aid':id,
            'aname':$("#r"+id+" .input-action-name input").val()
           },"/journal_action/update", function(){
           	init()
           })
	}
	
	function resetAction(id){
		$("#r"+id+" .span-action-edit-reset").hide()
        $("#r"+id+" .input-action-name").hide()
        $("#r"+id+" .span-action-edit-del").show()
        $("#r"+id+" .span-action-name").show()
	}
	
	function init(){
		$("btn-show-all-project-journal").hide();
	     // get wondering area info
        getDataFromITM({
			        	 'database':params.database,
			             'token':params.token,
			             'pid':params.project_id,
                        },"/journal/actions", showTable)
        
	     
	     
	}
	


    function showTable(flag, data){
    
    	// empty table
		$("#record").empty().html()
		var records =""
    	if(flag){
    		//show data
    		data =JSON.parse(data.obj)
    		// construct html
    		for(var i in data){
    			var flag = true;
    			if(data[i].project_id==params.project_id){
    				records+="<tr id='r"+data[i].Id+"'>"
        			+"<td>"+data[i].Id+"</td>"
        			+"<td><span class='span-action-name'> "+data[i].action_name+"</span><span class='input-action-name'><input type='text' value="+data[i].action_name+" /></span></td>"
        			+"<td>"
        			+"<span class='span-action-edit-del'><a href='#' onclick=\"editAction("+data[i].Id+")\">Edit</a> / <a href='#' onclick=\"delAction("+data[i].Id+")\">del</a></span>"
        			+"<span class='span-action-edit-reset'><a href='#' onclick=\"saveAction("+data[i].Id+")\">Save</a> / <a href='#' onclick=\"resetAction("+data[i].Id+")\">reset</a></span>"
        			+"</td>"
        			+"</tr>"
    			}
    					
    		}
    		        
    	}else{
    		records ="<tr>"
            +"<td colspan=\"4\">No data</td>"
         	+"</tr>"
    	}
    	
		$("#record").html(records)
		$(".span-action-edit-reset").hide()
    	$(".input-action-name").hide()
    }
	
    $(function() {
		init();
    });
    </script>

</body>

</html>