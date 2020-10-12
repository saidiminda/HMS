<%-- 
    Document   : block3
    Created on : Aug 31, 2018, 1:52:01 PM
    Author     : samwel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<%@page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
	ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #008000;
}

li {
    float: left;
}

li a{
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 100px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: grey;
}
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}


           
</style>
    </head>
    <body style="background-color: #f0ffff;">

<ul class="nav1">
  
  <li><a href="warden.html">Previous  </a></li>
  
  <li style="padding-left: 50%;"><a href="index.html">Logout</a></li>
</ul>
<center>
 
    <div class="container" style="background-color: #fefefe; margin: 5% auto 15% auto; border: 1px solid #888; width: 100%;">

    	
    		<table style="width: 100%;">
    			<thead><tr style="width: 100%; height: 50px; padding: 15px; margin: 5px 0 22px 0;border: none; background: #008080;font-size: 20px;" ><td colspan="10"><center>STUDENTS INFORMATION</center></td></tr>
                
                <tr style="width: 100%; height: 50px; padding: 15px; margin: 5px 0 22px 0;border: none; background: #f1f1f1; font-size: 18px;">
    					<td>RegNumber</td><td>First Name</td><td>Second Name</td> <td>Last  Name</td>
    					<td>Phone Number</td><td>Gender</td><td>Course</td>
    					<td>Block Number</td><td>Room Number</td><td>side</td>
                        </tr>
    			</thead>
                        <tbody>
                   <%
                       try{
                String Dtbs="jdbc:mysql://localhost:3306/student";
                String pas="";
                String usName="root";
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection(Dtbs,usName,pas);
                Statement st=con.createStatement();
                  String RegNo=(String)session.getAttribute("rNumber");
               // String sql1="select * from stdntdetail where RegNumber='"+RegNo+"'";
                
                String sql4="SELECT * FROM stdntdetail INNER JOIN blockdetails ON stdntdetail.RegNumber = blockdetails.RegNumber where blockdetails.Blocknumber=3";
                 // String sql2="select * from blockdetails where RegNumber='"+RegNo+"'";
                ResultSet rs=st.executeQuery(sql4);
              //  ResultSet rss=st.executeQuery(sql2);
             
              while(rs.next()){
                       
              %>
              
    				<tr style="width: 100%; height: 50px; padding: 15px; margin: 5px 0 22px 0;border: none; background: #f1f1f1;">

                                    <td><%= rs.getString("RegNumber") %></td><td><%= rs.getString("fname") %></td> <td><%= rs.getString("sname") %></td>
                                    <td><%= rs.getString("lname") %></td><td>0<%= rs.getInt("PhoneNumber") %></td><td><%= rs.getString("gender") %></td><td><%= rs.getString("course") %></td>
    					<td><%= rs.getInt("Blocknumber") %></td><td><%= rs.getInt("roomNumber") %></td><td><%= rs.getString("side") %></td>
    				</tr>
    			
                     <%}
             
                     
                     %>
           <%   
               }
             catch(Exception e){
                      out.print(e);

}%>
    			</tbody>
    		</table>
  </div>
</center>
</body>
</html>

