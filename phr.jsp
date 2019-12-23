<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
 <HEAD>
  <TITLE>Pharamacy Registartion</TITLE>
  <META NAME="Generator" CONTENT="EditPlus">
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">
 </HEAD>
 <BODY bgcolor="#f09970">
 <%@ page import="java.sql.*" %>
  <%
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  Connection con=DriverManager.getConnection("jdbc:odbc:health","health","health");
  Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery("select * from pharmacy_details");
   int no=0;
  while(rs.next()){
	  no++;
   }
   con.close();
  %>
  <h1><center>Pharamacy Registration</center></h1>
  <form method="post" action="phrreg.jsp">
  <table>
  <tr>
  <td rowspan=11><img src="./images/Side Dosage.jpg"></img>
  </tr>
  <tr>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pharamacy Id:
  <td><input type="text" name="phid" disabled="true" value=<%="PHID"+Integer.toString(no+1)%>>
  </tr>
  <tr>
   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User Name:
  <td><input type="text" name="phname">
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password:
  <td><input type="password" name="pwd">
  </tr>
  <tr>
   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirm Password:
  <td><input type="password" name="cpwd">
  </tr>

<tr>
 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pharmacy Name:
  <td><input type="text" name="Pname">
  </tr>

  <tr>
 <td>&nbsp;&nbsp;&nbsp;&nbsp;Address:
  <td><textarea cols="15" rows="5" name="add"></textarea>
  </tr>
    <tr>
 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  <td><input type="submit" value="submit">
  </tr>
  </table>
 </BODY>
</HTML>
