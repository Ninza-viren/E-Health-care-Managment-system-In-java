<html>
<head>
</head>
<body bgcolor="#f09970">
<br>
<br>
<h2><center>Welcome&nbsp;<%=session.getAttribute("uname")%></center></h2>
<br>
<br>
<br>
<%@ page import="java.sql.*" %>
<%
String pid=request.getParameter("pidd");
session.setAttribute("pid3",pid);
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:health","health","health");
%>
<table align="center">
<form action="./doctdiag2.jsp">
<tr>
<th>Patient ID:
<td><input type="text" name="pid" disabled="true" value=<%=pid%>>
</tr>
<tr>
<th>Predictions:
<td><input type="text" name="pred">
</tr>
<tr>
<th>Medicines:
<td><input type="text" name="med">
</tr>
<tr>
<th>Dosage:
<td><input type="text" name="dosage">
</tr>
<tr>
<th>From Date:(dd-mm-yy)
<td><input type="text" name="fd">
</tr>
<tr>
<th>To Date:(dd-mm-yy)
<td><input type="text" name="td">
</tr>
<tr>
<th>Usage Direction:
<td><input type="text" name="ud">
</tr>
<tr>
<th>Pharmacy Id:
<td>
<select name="phid">
<%
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from pharmacy_details");
while(rs.next())
{out.println("<option>"+rs.getString(1));}
%>
</select>
</tr>
<tr>
<td>
<td><input type="submit" value="submit">
</tr>
</form>
</table>
</body>
</html>
