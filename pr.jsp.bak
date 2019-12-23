<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
 <HEAD>
  <TITLE>Patatient Registartion</TITLE>
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
  ResultSet rs=stmt.executeQuery("select * from patient_details");
   int no=0;
  while(rs.next()){
	  no++;
   }
  %>
  <h1><center>Patatient Registration</center></h1>
  <form name="f1" method="post" action="prreg.jsp">
  <table>
  <tr>
  <td rowspan=11><img src="./images/Side Dosage.jpg"></img>
  </tr>
  <tr>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Patatient Id:
  <td><input type="text" name="pid" disabled="true" value=<%="PID"+Integer.toString(no+1)%>>
  </tr>
  <tr>
   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Patatient Name:
  <td><input type="text" name="pname">
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
   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Father Name:
  <td><input type="text" name="fname">
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Age:
  <td><input type="text" name="age">
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;&nbsp; Address:
  <td><textarea cols="15" rows="5" name="add"></textarea>
  </tr>
  
  <tr>
   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Problem:
  <td><select name="prob">
  <option>select
  <option>Central Nervous
  <option>Cardiology
  </select>
  </tr>
    <tr>
 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  <td><input type="submit" value="submit">
  </tr>
  </table>
  </form>
 </BODY>
</HTML>
