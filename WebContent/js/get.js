    var params ={
   		 username:getParameter("username"),
   		 token:getParameter("token"),
   		 uid:getParameter("uid"),
	         kf_token:getParameter("kf-token"),
	         kf_url:getParameter("kfurl"),
	         community_id:getParameter("community_id"),
	         community:getParameter("community"),
	         database:getParameter("localdb"),
	         project_id:getParameter("project_id"),
   }
    
    
    
    subDays =  function(current,days) {
        var date = new Date(current);
        date.setDate(date.getDate() - days);
        return date;
    }
    
    
    subMonth =  function(current,month) {
        var date = new Date(current);
        date.setMonth(date.getMonth() - month);
        return date;
    }
    
function getDataFromITM(params,url,callback){
    		  $.ajax({
	                url :  "/WSG"+url,
	                type : "post",
	                data:JSON.stringify(params),
	                dataType:"json",
	                success : function(data, textStatus, jqXHR) {
						if(null!=data&&data.code=="success"){
							callback(true,data)
						}else{
							console.log("get kfurl fails")	
							callback(false, "get kfurl fails");						
						}
	                },
	                error : function(jqXHR, textStatus, errorThrown) {
	                    callback(false, jqXHR.responseText);		
	                }
	            });
}


function getParameter(paramName) {
  var searchString = window.location.search.substring(1),
      i, val, params = searchString.split("&");

  for (i=0;i<params.length;i++) {
    val = params[i].split("=");
    if (val[0] == paramName) {
      return val[1];
    }
  }
  return null;
}

function goto_jounal_add(){
	window.open("journal_add.jsp?username="+params.username+"&token="+params.token+"&uid="+params.token+"&kf-token="+params.kf_token+"&kfurl="+params.kfurl+"&community_id="+params.community_id+"&community="+params.community+"&localdb="+params.database+"&project_id="+params.project_id);
}


function goto_jounal_index(){
	window.open("index.jsp?username="+params.username+"&token="+params.token+"&uid="+params.token+"&kf-token="+params.kf_token+"&kfurl="+params.kfurl+"&community_id="+params.community_id+"&community="+params.community+"&localdb="+params.database+"&project_id="+params.project_id);
}

function goto_jounal_edit(id){
	window.open("journal_edit.jsp?jid="+id+"&username="+params.username+"&token="+params.token+"&uid="+params.token+"&kf-token="+params.kf_token+"&kfurl="+params.kfurl+"&community_id="+params.community_id+"&community="+params.community+"&localdb="+params.database+"&project_id="+params.project_id);
}

function goto_jounal_details(id){
	window.open("journal_edit.jsp?jid="+id+"&username="+params.username+"&token="+params.token+"&uid="+params.token+"&kf-token="+params.kf_token+"&kfurl="+params.kfurl+"&community_id="+params.community_id+"&community="+params.community+"&localdb="+params.database+"&project_id="+params.project_id);
}