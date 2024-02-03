<%-- 
    Document   : index
    Created on : Feb 3, 2024, 12:20:38 PM
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
        <form action="SignupServlet" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="email" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pwd" value="" /></td>
                    </tr>
                    <tr>
                        <td>Confirm Password</td>
                        <td><input type="password" name="re-pwd" value="" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Register" /> &nbsp;&nbsp; <input type="reset" value="Cancel" /></td>
                    </tr>
                </tbody>
            </table>

        </form>  
    </body>
</html>
