<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.Datastore.IssueDetails" %>
 <%@page import='java.util.List' %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>summary description</title>
	
 <link href="<c:url value="/web resources/themes/css/style.css" />" rel="stylesheet">
	
	 <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300' rel='stylesheet' type='text/css'>
	 
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<style>
body{
    margin:0px;
}
        /*   section 1    */
.section_1{
    background-color:#ECECEC;
    height:80px;
    width:100%;
    }
.child_1_1{
    margin-left:170px;
    position:absolute;
    }
.child_1_2{
    padding-top:15px;
    margin-left:260px;
    position:absolute;
    font-size:40px;
    font-family:arial, sans-serif;
    }
        /*   section 2    */
.section_2{
    background-color:green;
    height:40px;
    width:100%;
    }
.child_2_1{
    margin-left:175px;
    padding-top:8px;
    color:#F5FFFA;
    position:absolute;
    }
.child_2_2{
    margin-left:300px;
    padding-top:8px;
    color:#F5FFFA;
    font-weight:bold;
    position:absolute;
}
        /*   section 3    */
.section_3{
    height:80px;
    width:100%;
    }
.child_3_1{
    margin-left:175px;
    font-family:arial;
    font-weight:bold;
    padding-top:18px;
    color:#606060;
}
.child_3_2{
    margin-left:175px;
    padding-top:15px;
    font-family:Times New Roman;
}
    /* section 4 */
.section_4{
    margin-left:175px;
    margin-top:30px;
    padding-top:20px;
    border:1px;
    width:500px;
    height:auto;
}
.section_4 td,th{
	padding-left:50px;
}


	/* section 5 */
.section_5{
	margin-left:175px;
    margin-bottom:0px;
}
	/*section 6 */
.section_6{
	margin-left:175px;
	 margin-bottom:0px;
}
	/*other properties*/
.heading{
	font-family: 'Roboto Condensed', sans-serif;
	font-size:17px;
}
.green{
    border-radius:10px;
    height:10px;
    min-width:10px;
    display:inline-block;
    background-color:green;
}
.orange{
    border-radius:10px;
    height:10px;
    min-width:10px;
    display:inline-block;
    background-color:orange;
}
.red{
    border-radius:10px;
    height:10px;
    min-width:10px;
    display:inline-block;
    background-color:red;
}
.cement{
    height:30px;
    min-width:80px;
    display:inline-block;
    background-color:#eee;
    padding-top:6px;
    text-align:center;
}
.issue_exist{
	
	height:30px;
    min-width:80px;
    display:inline-block;
    background-color:#ff9980;
    padding-top:6px;
    text-align:center;
	
	
}
.noborder{
	
	border:0px;
	
}



a{
    text-decoration:none;
    }
.issuesymbol{
    border-radius:10px;
    height:10px;
    min-width:10px;
    padding-top:6px;
    display:inline-block;
    background-color:red;
 
}



</style>
</head>
<body>
<div class="section_1">
    <div class="child_1_1">
         <img src="/logo.png" height=80px width=80px style="padding-top:10px;padding-bottom:10px;"/>
    </div>
    <div class="child_1_2">
        <font color='#606060'>FUll Cloud Platform</font>
    </div>
</div>
<!--second layer-->
<div class="section_2">
        <div class="child_2_1"></div>
        <div class="child_2_2">All services normal</div>
</div>
<!--third layer-->
<div class="section_3">
        <div class="child_3_1">Full Cloud Status</div>
        <div class="child_3_2">This page provides status information on the services that are part of the Full Cloud Platform. Check here to view the current status of the services listed below.</div>
</div>
<!-- fourth layer -->
<div class="section_4">
						
		<table height='auto' width='800px' RULES='ROWS' style="margin-left:10px;" cellpadding="-10px">
								<tr>
									<th style='padding-left: 0px;'>Date</th>
									<th>Begin Time</th>
									<th>End Time</th>
									<th>Title</th>
									<th>Description</th>
									<th>Product</th>
								</tr>
								<%
								List<IssueDetails> a=(List<IssueDetails>)request.getAttribute("dataretrieve");
								for(IssueDetails p:a)
								{
								out.print("<tr><td style='padding-left: 0px;'>"+p.getIssueDate()+"</td>");
								out.print("<td>"+p.getBegin_Time()+"</td>");
								out.print("<td>"+p.getEnd_Time()+"</td>");
								out.print("<td>"+p.getTitle()+"</td>");
								out.print("<td>"+p.getDescription()+"</td>");
								out.print("<td>"+p.getProductNo()+"</td></tr>");
								}
								%>
		</table>
</div>

<div class='section_5'>
	<table width='500'>
		<tr>
			<td><span class='green'></span>&nbsp;Normal Operations</td>
			<td><span class='orange'></span>&nbsp;Service disruption</td>
			<td><span class='red'></span>&nbsp;Service Outage</td>
		</tr>
	</table>
</div>
<!-- sixth layer -->
<div>
	<hr>
</div>
<!-- seventh layer -->
<div class='section_6'>
	<table width='920px'>
		<tr>
			
				<td style='padding-top:13px;'><span style='color:#245dc1;'><a href="/fetch">View Summary</a></span></td>
				<td>&nbsp;<ul><li>All times are Indian Standard</li></ul></td>
				
				<td style='padding-top:13px;padding-left:297px;'><span style='color:#245dc1;'>JSON Feed|Schema</span></td>
				<td>&nbsp;<ul><li><span style='color:#245dc1;'>Send Feedback</span></li></ul></td>
		</tr>
	</table>
</div>

<script type="text/javascript">
$(document).ready(function(){
		
	var d = new Date();
	$(".child_2_1").html(d.toDateString());	
		
		
		
});
</script>
</body>
</html>