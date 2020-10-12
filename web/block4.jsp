<%-- 
    Document   : block4
    Created on : Aug 31, 2018, 1:52:18 PM
    Author     : samwel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<%@page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Block4</title>
        <link rel="stylesheet" type="text/css" href="css/css/bootstrap.css">
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

    	
    		<table style="width: 100%;" class="table">
    			<thead><tr style="width: 100%; height: 50px; padding: 15px; margin: 5px 0 22px 0;border: none; background: #008080;font-size: 20px;" ><th colspan="10" style="border: 1px solid"><center>STUDENTS INFORMATION</center></th></tr>
                
                <tr style="width: 100%; height: 50px; padding: 15px; border: 1px solid; background: #f1f1f1; font-size: 18px;">
                    <th style="border: 1px solid">RegNumber</th><th style="border: 1px solid">First Name</th><th style="border: 1px solid">Second Name</th> <th style="border: 1px solid">Last  Name</th>
    					<th style="border: 1px solid">Phone Number</th><th style="border: 1px solid">Gender</th><th style="border: 1px solid">Course</th>
    					<th style="border: 1px solid">Block Number</th><th style="border: 1px solid">Room Number</th><th style="border: 1px solid">side</th>
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
                
                String sql4="SELECT * FROM stdntdetail INNER JOIN blockdetails ON stdntdetail.RegNumber = blockdetails.RegNumber where blockdetails.Blocknumber=4";
                 // String sql2="select * from blockdetails where RegNumber='"+RegNo+"'";
                ResultSet rs=st.executeQuery(sql4);
              //  ResultSet rss=st.executeQuery(sql2);
             
              while(rs.next()){
                       
              %>
              
    				<tr style="width: 100%; height: 50px; padding: 15px; margin: 5px 0 22px 0;border: none; background: #f1f1f1;">

                                    <td style="border: 1px solid"><%= rs.getString("RegNumber") %></td><td  style="border: 1px solid"><%= rs.getString("fname") %></td> <td style="border: 1px solid"><%= rs.getString("sname") %></td>
                                    <td style="border: 1px solid"><%= rs.getString("lname") %></td><td style="border: 1px solid">0<%= rs.getInt("PhoneNumber") %></td><td style="border: 1px solid"><%= rs.getString("gender") %></td><td style="border: 1px solid"><%= rs.getString("course") %></td>
    					<td style="border: 1px solid"><%= rs.getInt("Blocknumber") %></td><td style="border: 1px solid"><%= rs.getInt("roomNumber") %></td><td style="border: 1px solid"><%= rs.getString("side") %></td>
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


