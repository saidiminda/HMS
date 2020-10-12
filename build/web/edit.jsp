<%-- 
    Document   : edit
    Created on : Sep 1, 2018, 7:55:12 PM
    Author     : saidi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<%@page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EDIT</title>
    <style type="text/css">
	ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: Teal;
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
 
  <li><a href="index.html">Logout</a></li>
</ul>
  <%
          int Bnumber=Integer.parseInt(request.getParameter("blockNo"));
          int roomNo=Integer.parseInt(request.getParameter("roomNo"));
          String rside=request.getParameter("sideA");
          String option=request.getParameter("delete");
          String RegNo=request.getParameter("regNo");
      
          
          

 try{
                String Dtbs="jdbc:mysql://localhost:3306/student";
                String pas="";
                String usName="root";
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection(Dtbs,usName,pas);
                Statement st=con.createStatement();
                String del="delete from stdntdetail where RegNumber='"+RegNo+"'";
                String del2="delete from blockdetails where RegNumber='"+RegNo+"'";
                String upt="update blockdetails set Blocknumber='"+Bnumber+"', roomNumber='"+roomNo+"', side='"+rside+"' where RegNumber='"+RegNo+"'";
               String sql1="select * from blockdetails where Blocknumber='"+Bnumber+"' and roomNumber='"+roomNo+"' and side='"+rside+ "'";
                
                 
                
                if(option.matches("delete"))
                {
                    int r=st.executeUpdate(del);
                    int s=st.executeUpdate(del2);
                    if(r>0&&s>0)
                    {
                        out.print("now deletion is sucsesfull");
                    }
                }
                if(option.matches("update"))
                {
                    
                    int counter=0;
                ResultSet rs=st.executeQuery(sql1);
               
                while(rs.next()){
                counter++;
                }
                if(counter<4){
               int e=st.executeUpdate(upt);
                if(e>0)
                        {
                            out.print("data is changed");
                        }
                }
                else{
                out.print("room is full");
                }
                    
                    
                       
                    
                }
               
           
            }
            catch(Exception e){
out.print(e);
            }
        %>
    </body>
</html>
