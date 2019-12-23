<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
 <HEAD>
  <TITLE>Administartor</TITLE>
  <META NAME="Generator" CONTENT="EditPlus">
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">
 </HEAD>
 <BODY bgcolor="#f09970">
<h1><center>Welcome Administarator</center></h1>
<table>
<tr>
<td rowspan=8><img src="./images/medicine.jpg"></img>
</tr>
<tr>
<td><a href="cna.jsp"><b>Create New Admin</a>
</tr>
<tr>
<td><a href="sp.jsp"><b>Shedule Patients</a>
</tr>
<tr>
<td><a href="Idoct.jsp"><b>Invite Doctors</a>
</tr>
<tr>
<td><a href=""><b>
<form name="f1" method="post" action="./validatepatient.jsp">
<select name="pid">
<%@ page import="java.sql.*" %>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:health","health","health");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from patient_details");
while(rs.next())
{
out.println("<option>"+rs.getString(1));
}
con.close();
%>
</select>
&nbsp;<input type="submit" value="Validate Patient"></a>
</form>
</tr>
<tr>
<td>
<form name="f2" method="post" action="./gbill.jsp">
<select name="pid1">
<%@ page import="java.sql.*" %>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con1=DriverManager.getConnection("jdbc:odbc:health","health","health");
Statement stmt1=con.createStatement();
ResultSet rs1=stmt1.executeQuery("select * from patient_details");
while(rs1.next())
{
out.println("<option>"+rs1.getString(1));
}
con1.close();
%>
</select>
&nbsp;<input type="submit" value="Generate Bill"></a>
</form>
</tr>
<tr>
<td><a href="logout.jsp"><b>Logout</a>
</tr>

</table>
</BODY>
</HTML>
