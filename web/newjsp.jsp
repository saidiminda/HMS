<%-- 
    Document   : newjsp
    Created on : Sep 1, 2018, 12:18:17 PM
    Author     : samwel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="newjsp.jsp" method="post">
            <input type="text" name="sam">
            <input type="submit" value="submit">
                
        </form>
        <%
            String samd=request.getParameter("sam");
            out.print(samd);
        %>
    </body>
</html>
