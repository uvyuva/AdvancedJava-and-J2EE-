<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncodeing="ISO-8859-1" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Conten-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert Title Here</title>
    </head>
    <body>
        <% String uname=request.getParameter("uname");
        if(uname.equals("Yuvaraj") && password.equals("1234"))
        {
            out.println("Welcome to JSP coding");
        }
        else
        {
            out.println("Invalid Entry");
        }%>
    </body>
</html>
