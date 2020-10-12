<%-- 
    Document   : Bselecton
    Created on : Aug 30, 2018, 2:24:02 PM
    Author     : samwel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<%@page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>block</title>
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
  
  <li><a href="student.html">Previous  </a></li>
  <li><a href="profile.jsp">Profile</a></li>
  <li><a href="index.html">Logout</a></li>
</ul>
       
   
       

        <%
          int Bnumber=Integer.parseInt(request.getParameter("blockNo"));
          int roomNo=Integer.parseInt(request.getParameter("roomNo"));
          String rside=request.getParameter("sideA");
          //String RegNo=request.getParameter("Rnumber");
          String RegNo=(String)session.getAttribute("rNumber");
          
          

 try{
                String Dtbs="jdbc:mysql://localhost:3306/student";
                String pas="";
                String usName="root";
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection(Dtbs,usName,pas);
                Statement st=con.createStatement();
                String sql1="select * from blockdetails where Blocknumber='"+Bnumber+"' and roomNumber='"+roomNo+"' and side='"+rside+ "'";
                String sql3="select * from blockdetails where RegNumber='"+RegNo+"'";
                String sql2="insert into blockdetails(Blocknumber,roomNumber,side,RegNumber) Values('"+Bnumber+"','"+roomNo+"','"+rside+"','"+RegNo+"')";
                String sql4="select * from stdntdetail where RegNumber='"+RegNo+"'";
               
               
               ResultSet ra=st.executeQuery(sql4);
               ra.next();
               String gd=ra.getString("gender").toLowerCase();
               if (gd.matches("male") && ((Bnumber == 2) || (Bnumber == 4) || (Bnumber == 5)) && rside.matches("B"))
               {
                 
                           String s=ra.getString("fname").toUpperCase() ;
                           String a=ra.getString("sname").toUpperCase() ;
                           String i=ra.getString("lname").toUpperCase() ;
                           out.println(s+ " "+i+","+a);
                       out.println("Ooops!! sorry you have chosen Incorrect side with respect to your gender,try again");
                   
                   
               }
               
               else if (gd.matches("female") && (Bnumber==2 || Bnumber==4 || Bnumber==5) && rside.matches("A"))
               {
                 
                        String s=ra.getString("fname").toUpperCase() ;
                           String a=ra.getString("sname").toUpperCase() ;
                           String i=ra.getString("lname").toUpperCase() ;
                           out.println(s+ " "+i+","+a);
                       out.print("Ooops!! sorry you have chosen Incorrect side with respect to your gender");
                   
               }
                
               else if (gd.matches("female") && (Bnumber==6 || Bnumber==1 || Bnumber==3))
               {
                   
                       String s=ra.getString("fname").toUpperCase() ;
                           String a=ra.getString("sname").toUpperCase() ;
                           String i=ra.getString("lname").toUpperCase() ;
                           out.println(s+ " "+i+","+a);
                       out.print("Ooops!! sorry you have chosen Incorrect Block with respect to your gender");
                   
               }
              else
               {
               ResultSet rss=st.executeQuery(sql3);      
               if(rss.next()){
                    out.print("username is present");
                }
                else{
                int counter=0;
                ResultSet rs=st.executeQuery(sql1);
                while(rs.next()){
                counter++;
                }
                if(counter<4){
                int i=st.executeUpdate(sql2 );
                if(i>0){
                out.print("your succesfull registerd");
                }
                }
                else{
                out.print("room is full");
                }
                }
               }
            }
            catch(Exception e){
out.print(e);
            }
        %>
    </body>
</html>
