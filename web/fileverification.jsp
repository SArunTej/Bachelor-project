<%-- 
    Document   : fileverification
    Created on : Nov 30, 2013, 2:49:49 PM
    Author     : Thanu
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
          body {
  background-image: url("images/6.jpg");
 }
 </style>
      <link rel='stylesheet' type='text/css' href='styles.css' />
	<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
</head>


    <body>
 <table align="center">
       <tr>
           <td align="center"><img src="images/3.jpg" hight="500" width="900" ></td></table>
 
<div id='cssmenu'>
<ul>
   <li class='active'><a href='index.jsp'><span>Home</span></a></li>
   <li><a href='fileverification.jsp'><span>File Verification</span></a></li>
   <li><a href='userview.jsp'><span>User Details</span></a></li>
   <li class='last'><a href='index.jsp'><span>Logout</span></a></li>
</ul>
</div>
    <table align="center">
        <h3><center><font color="black">privacy-preserving public auditing for secure cloud storage</h3></center>
              <% String name=(String)session.getAttribute("name1");%>
              <center> <h2>Welcome To:<%=name%></h2></center>
              <%
              Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","privacy","privacy");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from filereg ");
%>
<table align="center" border="1">
    <th>File Owner</th>
    <th>File Name</th>
    <th>FILE Id</th>
    <th>Date</th>
    <th>Status</th>
    <th>Send Alert</th>
    <%
    while(rs.next())
       {
String fw=rs.getString(1);        
String fn=rs.getString(3);
String fid=rs.getString(2);
String t=rs.getString(5);
String sta=rs.getString(6);
%>
<tr>
    <td><%=fw%></td>
    <td><%=fn%></td>
    <td><%=fid%></td>
    <td><%=t%></td>
    <td><%=sta%></td>
    <td><a href="send.jsp?<%=fid%>">Send Message</a></td> 
    <%
    
}%>
    
    </body>
</html>
