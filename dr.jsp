<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
 <HEAD>
  <TITLE>Doctor Registartion</TITLE>
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
  ResultSet rs=stmt.executeQuery("select * from doctor_details");
   int no=0;
  while(rs.next()){
	  no++;
   }
  %>
  <h1><center>Doctor Registration</center></h1>
  <form method="post" action="drreg.jsp">
  <table>
  <tr>
  <td rowspan=11><img src="./images/Side Dosage.jpg"></img>
  </tr>
  <tr>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Docotor Id:
  <td><input type="text" name="did" disabled="true" value=<%="DID"+Integer.toString(no+1)%>>
  </tr>
  <tr>
   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Docotor Name:
  <td><input type="text" name="dname">
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password:
  <td><input type="password" name="pwd">
  </tr>
  <tr>
   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Confirm Password:
  <td><input type="password" name="cpwd">
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;&nbsp; Address:
  <td><textarea cols="15" rows="5" name="add"></textarea>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Age:
  <td><input type="text" name="age">
  </tr>
  <tr>
   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Specialization:
  <td>
  <select name="spec">
  <option>select
  <option>Central Nervous
  <option>Cardiologist
  </select>
  </tr>
  <tr>
   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qualification:
  <td><input type="text" name="quali">
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  <td><input type="submit" value="submit">
  </tr>
  </table>
  </form>
 </BODY>
</HTML>
