<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.Datastore.IssueDetails,com.PMF_config.DateClass" %>
 <%@page import='java.util.List,java.util.Date' %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>summary description</title>
	
<link rel='stylesheet' href='../../summarjsp.css'/>
	
	 <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300' rel='stylesheet' type='text/css'>
	 
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

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
<!-- past incident layer -->
<div class='child_3_1'>
	Past 10 days incidents
</div>
<!-- fourth layer -->
<div class="section_4">
						
		<table height='auto' width='auto'  style="margin-left:0px;" cellpadding="-10px">
								
								<%
								/* DateClass.dodate(5); */
							
        				
								List<IssueDetails> a=(List<IssueDetails>)request.getAttribute("dataretrieve");
								
								int i=1;
							while(i<=10)
							{
								int count=0;
									for(IssueDetails p:a)
									{
										if((DateClass.dodate(i)).equals(p.getIssueDate()))
						       			{
						       				count++;
						       				System.out.println(count+" "+DateClass.dodate(i));
						       			
						       			}
										
									}
									if(count>1)
									{
										out.print("<tr class='horozontal'><th>"+DateClass.dodate(i)+"</th></tr>");	
									}
									if(count==0)
									{
										out.print("<tr class='horozontal'><th>"+DateClass.dodate(i)+"</th></tr>");	
										out.print("<tr><td>No incident reported</td></tr><tr><td>&nbsp;</td></tr>");
									}
						  				
						       		for(IssueDetails p1:a)
						       		{	
												if((DateClass.dodate(i)).equals(p1.getIssueDate()))
								       			{
													if(count==1)
													{
														out.print("<tr class='horozontal'><th>"+p1.getIssueDate()+"</th></tr>");
										       			out.print("<tr><td>"+p1.getProductNo()+"</td><td style='padding-left: 10px;'>begin time</td><td style='padding-left: 10px;'>:</td><td style='padding-left: 10px;'>"+p1.getBegin_Time()+"</td></tr>");
										       		
										       		
										       			out.print("<tr><td></td><td style='padding-left: 10px;'>End time </td><td style='padding-left: 10px;'>:</td><td style='padding-left: 10px;'>"+p1.getEnd_Time()+"</td></tr>");
										       		
										       		
										       			out.print("<tr><td></td><td style='padding-left: 10px;'>Title </td><td style='padding-left: 10px;'>:</td><td style='padding-left: 10px;'>"+p1.getTitle()+"</td></tr>");
										       		
										       		
										       			out.print("<tr><td></td><td style='padding-left: 10px;'>Description </td><td style='padding-left: 10px;'>:</td><td style='padding-left: 10px;'>"+p1.getDescription()+"</td></tr><tr><td>&nbsp;</td></tr>"); 
										       			
													}
													 if(count>1)
													{
														out.print("<tr><td>"+p1.getProductNo()+"</td><td style='padding-left: 10px;'>begin time</td><td style='padding-left: 10px;'>:</td><td style='padding-left: 10px;'>"+p1.getBegin_Time()+"</td></tr>");
											       		
											       		
										       			out.print("<tr><td></td><td style='padding-left: 10px;'>End time </td><td style='padding-left: 10px;'>:</td><td style='padding-left: 10px;'>"+p1.getEnd_Time()+"</td></tr>");
										       		
										       		
										       			out.print("<tr><td></td><td style='padding-left: 10px;'>Title </td><td style='padding-left: 10px;'>:</td><td style='padding-left: 10px;'>"+p1.getTitle()+"</td></tr>");
										       		
										       		
										       			out.print("<tr><td></td><td style='padding-left: 10px;'>Description </td><td style='padding-left: 10px;'>:</td><td style='padding-left: 10px;'>"+p1.getDescription()+"</td></tr><tr><td>&nbsp;</td></tr>"); 
										       			
													}
								       			}
									}
									
									
									
							i++;
							}
								/* for(IssueDetails p:a)
								{
								out.print("<tr><td style='padding-left: 0px;'>"+p.getIssueDate()+"</td>");
								out.print("<td style='padding-left: 10px;'>"+p.getBegin_Time()+"</td>");
								out.print("<td style='padding-left: 10px;'>"+p.getEnd_Time()+"</td>");
								out.print("<td style='padding-left: 10px;'>"+p.getTitle()+"</td>");
								out.print("<td style='padding-left: 10px;'>"+p.getDescription()+"</td>");
								out.print("<td style='padding-left: 10px;'>"+p.getProductNo()+"</td></tr>");
								} */
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