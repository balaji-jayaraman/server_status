<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import='com.google.appengine.api.users.UserServiceFactory,com.google.appengine.api.users.UserService,javax.servlet.http.*,javax.servlet.ServletException' %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Authenticate Admin</title>
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
    background-color:#E85F61;
    border-radius:1px;
    height:50px;
    width:200px;
    border:1px;
    color:white;
   text-align:center;
   
   
}
.test
{
font-size:22px;
padding-top:13px;

}

    
    </style>
</head>
<body>
<%UserService userService = UserServiceFactory.getUserService();
String thisURL ="/admin";

response.setContentType("text/html");
if (request.getUserPrincipal() != null) {
    /* response.getWriter().println("<p>Hello, " +
                              request.getUserPrincipal().getName() +
                              "!  You can <a href=\"" +
                              userService.createLogoutURL(thisURL) +
                              "\">sign out</a>.</p>");
 	 */
 	 String username=request.getUserPrincipal().getName();
 	 session.setAttribute("user", username);
 	 request.getRequestDispatcher("/schedule").forward(request,response);
 	
 	 
 } else {
   /*   response.getWriter().println("<p>Please <a href=\"" +
                              userService.createLoginURL(thisURL) +
                              "\">sign in</a>.</p>"); */
     response.getWriter().println("<div class='outer'><a href=\"" +
             userService.createLoginURL(thisURL) +
             "\" style='text-decoration:none;'><div class='inner'><div class='test'>Log in with Google</div></div></a></div>");
 }
 

%>

</body>
</html>