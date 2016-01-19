<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Client details</title>
<style>
    .outer{
    width:270px;
    height:200px;
    border:1px;
    background-color:lightgray;
    margin-top:200px;
    margin-left:500px;
    padding-left:70px;
    padding-top:125px;
}
.inner{
   
    
    height:50px;
    width:200px;
   
   
   
   
}

    
 </style>
</head>
<body>
	<div class='outer'>
			<div class='inner'>
			<form action='/storeuser' method='post'>
			EmailID:<input type='text' name='user'>
			<input type='submit' value='save'>
			</form>
			</div>
	</div>
</body>
</html>