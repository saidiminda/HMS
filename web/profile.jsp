<%-- 
    Document   : profile
    Created on : Aug 30, 2018, 5:27:02 PM
    Author     : samwel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@page import="java.sql.*,java.util.*" %>
<%@page import="javax.servlet.http.*" %>
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
        <title>JSP Page</title>
    </head>
    <body style="background-color: #f0ffff;">

<ul class="nav1">
  
  <li><a href="student.html">Previous  </a></li>
  
  <li style="padding-left: 50%;"><a href="index.html">Logout</a></li>
</ul>

        
        
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
                
                String sql4="SELECT * FROM stdntdetail INNER JOIN blockdetails ON stdntdetail.RegNumber = blockdetails.RegNumber where stdntdetail.RegNumber='"+RegNo+"'";
                 // String sql2="select * from blockdetails where RegNumber='"+RegNo+"'";
                ResultSet rs=st.executeQuery(sql4);
              //  ResultSet rss=st.executeQuery(sql2);
              //  rss.next();
                
                rs.next();
                %>
                <center>
 
    <div class="container" style="background-color: #fefefe; margin: 5% auto 15% auto; border: 1px solid #888; width: 40%;">

    	
    		<table style="width: 100%;">
    			<thead><tr style="width: 100%; height: 50px; padding: 15px; margin: 5px 0 22px 0;border: none; background: #008080;font-size: 20px;" ><td colspan="2"><center>PROFILE</center></td></tr></thead>
    			<tbody>
                            <tr style="width: 100%; height: 50px; padding: 15px; margin: 5px 0 22px 0;border: none; background: #f1f1f1;"><td>First Name:</td><td><%=rs.getString("fname")%></td> </tr>
    				<tr style="width: 100%; height: 50px; padding: 15px; margin: 5px 0 22px 0;border: none; background: #f1f1f1;"><td>Second Name:</td><td><%=rs.getString("sname")%></td> </tr>
    				<tr style="width: 100%; height: 50px; padding: 15px; margin: 5px 0 22px 0;border: none; background: #f1f1f1;"><td>Last Name:</td><td><%=rs.getString("lname")%></td> </tr>
    				<tr style="width: 100%; height: 50px; padding: 15px; margin: 5px 0 22px 0;border: none; background: #f1f1f1;"><td>RegNumber:</td><td><%=rs.getString("RegNumber")%> </td> </tr>
                                <tr style="width: 100%; height: 50px; padding: 15px; margin: 5px 0 22px 0;border: none; background: #f1f1f1;"><td>Block Number:</td><td><%=rs.getInt("Blocknumber")%></td> </tr>
    				<tr style="width: 100%; height: 50px; padding: 15px; margin: 5px 0 22px 0;border: none; background: #f1f1f1;"><td>Room Number:</td><td><%=rs.getInt("roomNumber")%></td> </tr>
    				<tr style="width: 100%; height: 50px; padding: 15px; margin: 5px 0 22px 0;border: none; background: #f1f1f1;"><td>Side:</td><td><%=rs.getString("side")%> </td> </tr>
    				
    			</tbody>
    		</table>
                </div>

</center>
                <%
                
        }
            catch(Exception e){
    
                out.println("profile is not complete");
                out.println("Select block  and room first");
                

                                }
        %>
    	 
   
      
      

  
</body>
</html>
