<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import='com.google.appengine.api.users.UserServiceFactory,com.google.appengine.api.users.UserService,javax.servlet.http.*,javax.servlet.ServletException' %>
<!DOCTYPE html>
<html>
<head>
	<title>schedule issue</title>
	<link rel='stylesheet' href='style.css'/> 
<link rel='stylesheet' href='/bootstrap-clockpicker.min.css'/>
     <link rel='stylesheet' href='/jquery-clockpicker.min.css'/>
      <link rel='stylesheet' href='standalone.css'/>
  <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300' rel='stylesheet' type='text/css'>
	 
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
   <script src="/bootstrap-clockpicker.min.js" type="text/javascript"></script>
    <script src="/jquery-clockpicker.min.js" type="text/javascript"></script>
   <script src="javascript2.js" type="text/javascript"></script>

</head>
<body>
<!--first layer-->
<div class="section_1">
    <div class="child_1_1">
        <img src="/logo.png" height=80px width=80px style="padding-top:10px;padding-bottom:10px;"/>
    </div>
    <div class="child_1_2">
        <font color='#606060'>Full Cloud Platform</font>
    </div>
    <div style='float:right;'>
    	<div>Hi,</div>
    	<div id='username'><%String user=(String)session.getAttribute("user");
    	out.print(user); %></div>
    	<div>
    				<%UserService userService = UserServiceFactory.getUserService();
    				
    				if (request.getUserPrincipal() != null) {
    				out.println("<a href=\"" +
                            userService.createLogoutURL("/admin") +
                            "\">sign out</a>");
    				}%>
    	</div>
    			
    </div>
</div>
<!--second layer-->
<div class="section_2">
        <div class="child_2_1"></div>
        <div class="child_2_2">All services normal</div>
</div>
<!--third layer-->
<div class="section_3">
        <div class="child_3_1">FUll Cloud Status</div>
        <div class="child_3_2">This page provides status information on the services that are part of the FUll Cloud Platform. Check here to view the current status of the services listed below.</div>
</div>
<!--fourth layer-->
<div class="section_4">
    <table border=1 height=250px width=920px RULES='COLS' FRAME='void' BORDERCOLOR='#eee'>
    	<tr>
    		<td class='month heading' id='month'></td>
    		<td class='heading' id='91'></td>
    		<td class='heading' id='92'></td>
    		<td class='heading' id='93'></td>
    		<td class='heading' id='94'></td>
    		<td class='heading' id='95' style='color:red;'></td>
    		<td class='heading' id='96'></td>
    		<td class='heading' id='97'></td>
    		<td class='heading' id='98'></td>
    		<td class='heading' id='99'></td>
    	</tr>
        <tr>
        	<td width='87px'>Product A</td>
        	<td class='Product A' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='101'>schedule</div></td>
        	<td class='Product A' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='102'>schedule</div></td>
        	<td class='Product A' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='103'>schedule</div></td>
        	<td class='Product A' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='104'>schedule</div></td>
        	<td class='Product A' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='105'>schedule</div></td>
            <td class='Product A' onclick="validate(this);"><div class=' cement' style='width:100%;height:100%;' data-target='#myModal' id='106'>schedule</div></td>
        	<td class='Product A' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='107'>schedule</div></td>
        	<td class='Product A' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='108'>schedule</div></td>
        	<td class='Product A' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='109'>schedule</div></td>
        </tr>
        <tr>
        	<td width='87px'>Product B</td>
        	<td class='Product B' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='111'>schedule</div></td>
        	<td class='Product B' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='112'>schedule</div></td>
        	<td class='Product B' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='113'>schedule</div></td>
        	<td class='Product B' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='114'>schedule</div></td>
        	<td class='Product B' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='115'>schedule</div></td>
            <td class='Product B' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='116'>schedule</div></td>
        	<td class='Product B' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='117'>schedule</div></td>
        	<td class='Product B' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='118'>schedule</div></td>
        	<td class='Product B' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='119'>schedule</div></td>
        </tr>
          <tr>
          	<td width='87px'>Product C</td>
        	<td class='Product C' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='121'>schedule</div></td>
        	<td class='Product C' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='122'>schedule</div></td>
        	<td class='Product C' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='123' >schedule</div></td>
        	<td class='Product C' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='124'>schedule</div></td>
        	<td class='Product C' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='125'>schedule</div></td>
            <td class='Product C' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='126'>schedule</div></td>
        	<td class='Product C' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='127'>schedule</div></td>
        	<td class='Product C' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='128'>schedule</div></td>
        	<td class='Product C' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='129'>schedule</div></td>
        </tr>
          <tr>
          	<td width='87px'>Product D</td>
        	<td class='Product D' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='131'>schedule</div></td>
        	<td class='Product D' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='132'>schedule</div></td>
        	<td class='Product D' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='133'>schedule</div></td>
        	<td class='Product D' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='134'>schedule</div></td>
            <td class='Product D' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='135'>schedule</div></td>
        	<td class='Product D' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='136'>schedule</div></td>
        	<td class='Product D' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='137'>schedule</div></td>
        	<td class='Product D' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='138'>schedule</div></td>
        	<td class='Product D' onclick="validate(this);"><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='139'>schedule</div></td>
        	  		
        </tr>
        <tr>
    		
    	</tr>
        
    </table>
</div>
<!-- fifth layer -->
<div class='section_5'>
	<table width='500' style='margin-left:85px;'>
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
			
				<td style='padding-top:13px;'><span style='color:#245dc1;'>View Summary</span></td>
				<td>&nbsp;<ul><li>All times are Indian Standard</li></ul></td>
				
				<td style='padding-top:13px;padding-left:297px;'><span style='color:#245dc1;'>JSON Feed|Schema</span></td>
				<td>&nbsp;<ul><li><span style='color:#245dc1;'>Send Feedback</span></li></ul></td>
		</tr>
	</table>
</div>


								<!-- model box -->
								

							<!-- model dialog code -->

  <div class='container'>
    <div id='myModal' class="modal fade" role="dialog">
        <div class='modal-dialog'>
            <div class='modal-content'>
            	<form class='form-horizontal'  id='subform' method='post'>
                	<div class='modal-header'>
                		<button type="button" class="close" data-dismiss="modal">&times;</button>                     
                		<h4>Enter Your Issue Details</h4> 
                    </div>
                	<div class='modal-body'>
                		<div class='form-group'>
                			<label for='begin time' class='control-label col-sm-3'>Begin Time&nbsp;&nbsp;&nbsp;:</label>
                			
                			<div class='col-sm-4'>
                					<div class="input-group clockpicker" data-placement="bottom" data-align="top" data-autoclose="true">
    										<input type="text" class="form-control" name='Begin_time' placeholder='pick time' required>
    										<span class="input-group-addon">
       											 <span class="glyphicon glyphicon-time"></span>
   											 </span>
									</div>		
                			</div>
                
                			
                		</div>
                		<div class='form-group'>
                			<label for='end time' class='control-label col-sm-3'>End Time&nbsp;&nbsp;&nbsp;:</label>
                			
                			<div class='col-sm-4'>
                						<div class="input-group clockpicker" data-placement="bottom" data-align="top" data-autoclose="true">
    										<input type="text" class="form-control" name='End_time' placeholder='pick time' required>
    										<span class="input-group-addon">
       											 <span class="glyphicon glyphicon-time"></span>
   											</span>
									</div>		
                			</div>
                		</div>
                		
                		<div class='form-group'>
                			<label for='title1' class='control-label col-sm-3'>Title&nbsp;&nbsp;&nbsp;:</label>
                			
                			<div class='col-sm-8'>
                				<input type='text' class='form-control' id='title1' placeholder='title' name='Title' required>
                			</div>
                		</div>
                		<div class='form-group'>
                			<label for='description1' class='control-label col-sm-3'>Description&nbsp;&nbsp;&nbsp;:</label>
                			
                			<div class='col-sm-8'>
                				<textarea class='form-control' rows='3' id='description1' placeholder='give precise description about issue' name='Description' required></textarea>
                			</div>
                		</div>
                		<div class='form-group'>
                			<div class='col-sm-12 col-sm-offset-4'>
                				<label class='radio'><input type="radio" name='issue' value='service disruption' checked>service disruption</input></label>
                			</div>
                			<div class='col-sm-12 col-sm-offset-4'>
                				<label class='radio'><input type="radio" name='issue' value='service outage'>service outage</input></label>
                			</div>
                		</div>
                		<div class='form-group'>
                			<div style='margin-left:40px;'>
                				<label><input type="checkbox" name='email' value='Send'>Send Email</input></label>
                			</div>
                		</div>
                	</div>
                	<div class='modal-footer'>
                	<button type='submit' class="btn btn-success" id='sub'>submit</button>
                	<button type='button' class="btn btn-danger" data-dismiss='modal'>cancel</button>
                	</div>
            	</form>       
            </div>
        </div>
  </div>
</div>


									<!-- update model -->
									
									
 <div class='container'>
    <div id='update' class="modal fade" role="dialog">
        <div class='modal-dialog'>
            <div class='modal-content'>
            	<form class='form-horizontal'  id='subform' method='post'>
                	<div class='modal-header'>
                		<button type="button" class="close" data-dismiss="modal" onclick="doreload();">&times;</button>                     
                		<h4>updating issue</h4> 
                    </div>
                	<div class='modal-body'>
                		<table id='new_update' style='margin-left:20px;' RULES='ROWS'>
                			<!-- <tr><th>Date</th>
                				<th style='padding-left:10px;'>Begin time</th>
                				<th style='padding-left:10px;'>End time</th>
                				<th style='padding-left:10px;'>Title</th>
                			</tr> -->
                		
                		</table>
                		        		
                	</div>
                	<div class='modal-footer' id='dynamic_footer'>
                	
                	
                	</div>
            	</form>       
            </div>
        </div>
  </div>
</div>







    

</body>
</html>