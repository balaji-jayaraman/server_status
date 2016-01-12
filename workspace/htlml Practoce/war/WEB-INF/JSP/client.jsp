<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>server status</title>
     
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
    padding-top:20px;
    border:1px;
    width:500px;
    height:100px
}
	/* section 5 */
.section_5{
	margin-left:175px;
    margin-top:200px;
}
	/*section 6 */
.section_6{
	margin-left:175px;
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

a{
    text-decoration:none;
    }
.issuesymbol{
    border-radius:10px;
    height:10px;
    min-width:10px;
    display:inline-block;
    background-color:red;
 
}
   	
   	
   	</style>
</head>
<body>
<!--first layer-->
<div class="section_1">
    <div class="child_1_1">
        <img src="http://www.clker.com/cliparts/V/U/W/u/I/l/green-cloud-icon-md.png" height=80px/>
    </div>
    <div class="child_1_2">
        <font color='#606060'>Scrum Cloud Platform</font>
    </div>
</div>
<!--second layer-->
<div class="section_2">
        <div class="child_2_1"></div>
        <div class="child_2_2">All services normal</div>
</div>
<!--third layer-->
<div class="section_3">
        <div class="child_3_1">Scrum Cloud Status</div>
        <div class="child_3_2">This page provides status information on the services that are part of the Scrum Cloud Platform. Check here to view the current status of the services listed below.</div>
</div>
<!--fourth layer-->
<div class="section_4">
    <table border='1' height=250px width=920px RULES='COLS' FRAME='void' BORDERCOLOR='#eee'>
    	<tr>
    		<td class='month heading' id='month'></td>
    		<td class='heading' id='91'>4</td>
    		<td class='heading' id='92'>5</td>
    		<td class='heading' id='93'>6</td>
    		<td class='heading' id='94'>7</td>
    		<td class='heading' id='95'>8</td>
    		<td class='heading' id='96'>9</td>
    		<td class='heading' id='97'>10</td>
    		<td class='heading' id='98'>11</td>
    		<td class='heading' id='today'></td>
    	</tr>
        <tr>
        	<td width='87px'>Product A</td>
        	<td class='A1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='101'></div></td>
        	<td class='A1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='102'></div></td>
        	<td class='A1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='103'></div></td>
        	<td class='A1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='104'></div></td>
        	<td class='A1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='105'></div></td>
            <td class='A1' ><div class=' cement' style='width:100%;height:100%;' data-target='#myModal' id='106'></div></td>
        	<td class='A1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='107'></div></td>
        	<td class='A1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='108'></div></td>
        	<td><span class='green pull-right'></span></td>
        </tr>
        <tr>
        	<td width='87px'>Product B</td>
        	<td class='B1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='111'></div></td>
        	<td class='B1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='112'></div></td>
        	<td class='B1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='113'></div></td>
        	<td class='B1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='114'></div></td>
        	<td class='B1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='115'></div></td>
            <td class='B1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='116'></div></td>
        	<td class='B1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='117'></div></td>
        	<td class='B1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='118'></div></td>
        	<td><span class='green pull-right'></span></td>
        </tr>
          <tr>
          	<td width='87px'>Product C</td>
        	<td class='C1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='121'></div></td>
        	<td class='C1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='122'></div></td>
        	<td class='C1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='123' ></div></td>
        	<td class='C1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='124'></div></td>
        	<td class='C1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='125'></div></td>
            <td class='C1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='126'></div></td>
        	<td class='C1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='127'></div></td>
        	<td class='C1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='128'></div></td>
        	<td><span class='green pull-right'></span></td>
        </tr>
          <tr>
          	<td width='87px'>Product D</td>
        	<td class='D1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='131'></div></td>
        	<td class='D1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='132'></div></td>
        	<td class='D1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='133'></div></td>
        	<td class='D1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='134'></div></td>
            <td class='D1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='135'></div></td>
        	<td class='D1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='136'></div></td>
        	<td class='D1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='137'></div></td>
        	<td class='D1' ><div class='cement' style='width:100%;height:100%;' data-target='#myModal' id='138'></div></td>
        	<td><span class='green pull-right'></span></td>
        	  		
        </tr>
        <tr>
    		<td class='month heading'></td>
    		<td class='heading'>4</td>
    		<td class='heading'>5</td>
    		<td class='heading'>6</td>
    		<td class='heading'>7</td>
    		<td class='heading'>8</td>
    		<td class='heading'>9</td>
    		<td class='heading'>10</td>
    		<td class='heading'>11</td>
    		<td class='heading' id='today'></td>
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
	var months=["January","February","March","April","May","June","July","August","September","October","November","December"];
	$(".month").html(months[d.getMonth()]);
	$("#today").html(d.getDate());
	$.ajax({
		type : "POST",
		url : "/retrieve2",
		

		success : function(result){
								$.each(result,function(i,data)
															{
															if(data.issueType=="service disruption")
																{
																var issuesymbol='orange';
																}
															else if(data.issueType=="service outage")
																{
																var issuesymbol='red';
																}
															if(data.id!=null)
																{
																	var id=data.id;
																	$('#'+id).html("<a href='/issue/"+id+"'><div class="+issuesymbol+"></div></a>");
																}
															});
								
								}
		});

});


</script>

</body>
</html>