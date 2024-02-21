<%-- 
    Document   : cookie_details
    Created on : Feb 21, 2024, 1:24:43 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cookie Details</h1>
        <%
            Cookie[] coo = request.getCookies();
            for(int i=0; i<coo.length; i++){
                out.print("<table><tr> <td>Name : </td><td>"+coo[i].getName()+"</td></tr><tr> <td>Degree title : </td><td>"+coo[i].getValue()+"</td> </tr></table>");
            }
        %>
    </body>
</html>
