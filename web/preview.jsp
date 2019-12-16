<%-- 
    Document   : preview
    Created on : Dec 17, 2019, 1:48:34 AM
    Author     : supola
--%>

<%@page import="com.btti.model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            Student student = null;

        %>
        <%

            student = (Student) request.getAttribute("STUDENT_MODEL");

        %>

        Hello : <%= student.getName() %>
    </body>
</html>
