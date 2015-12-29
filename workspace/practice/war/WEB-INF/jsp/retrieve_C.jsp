<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.util.List" %>
       <%@page import="com.model.Product_C" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<div class='container'>
    
    <div class='modal' id='modal-box'>
        <div class='modal-dialog'>
            <div class='modal-content'>
            	
                	<div class='modal-header'>
                		<button type="button" class="close" data-dismiss="modal">&times;</button>                     
                		<h4>Issue Description</h4> 
                    </div>
                	<div class='modal-body'>
                		<table 	class='table table-bordered'>
								<tr>
									<th>Begin Time</th>
									<th>End Time</th>
									<th>Title</th>
									<th>Description</th>
									<th>Issue Type</th>
								</tr>
								<%
								List<Product_C> a=(List<Product_C>)request.getAttribute("C");
								for(Product_C p:a)
								{
								out.print("<tr><td>"+p.getBegin_hrs()+":"+p.getBegin_mins()+"</td>");
								out.print("<td>"+p.getEnd_hrs()+":"+p.getEnd_mins()+"</td>");
								out.print("<td>"+p.getTitle()+"</td>");
								out.print("<td>"+p.getDescription()+"</td>");
								out.print("<td>"+p.getIssue()+"</td></tr>");
	
								}
								%>
						</table>
                	</div>
                	<div class='modal-footer'>
                	
                	<button type='button' class="btn btn-danger" data-dismiss='modal'>cancel</button>
                	</div>
            	     
            </div>
        </div>
    </div>
</div>
<script>
$(document).ready(
    function()
    {
    $("#modal-box").modal({backdrop:true});
    }
    
);
</script>
</body>
</html>