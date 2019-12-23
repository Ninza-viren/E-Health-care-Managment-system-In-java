<html>
<head>
<title>Patient Home
</title>
</head>
<body bgcolor="#f09970">
<br>
<br>
<br>
<%@ page import="java.sql.*" %>
<%
String pid=request.getParameter("pid5");;
%>
<h2><center>Welcome&nbsp;<%=pid%></center></h2>
<br>
<br>
<br>
<table align="center" border="2">
<tr>
<th colspan=2>Diagnostic details
</tr>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:health","health","health");
PreparedStatement pstm=con.prepareStatement("select * from diagnostic_details where p_id=?;");
pstm.setString(1,pid);
ResultSet rs=pstm.executeQuery();
int no=0;



while(rs.next())
{
if(no<1){
	out.println("<tr><td>"+"Patinet ID"+"<td>"+rs.getString(1)+"</tr>");
	out.println("<tr><td>"+"Predictions"+"<td>"+rs.getString(2)+"</tr>");
	out.println("<tr><td>"+"Medicines"+"<td>"+rs.getString(3)+"</tr>");
	out.println("<tr><td>"+"Dosage"+"<td>"+rs.getInt(4)+"</tr>");
	out.println("<tr><td>"+"From Date"+"<td>"+rs.getString(5)+"</tr>");
	out.println("<tr><td>"+"To Date"+"<td>"+rs.getString(6)+"</tr>");
	out.println("<tr><td>"+"Usage Directions"+"<td>"+rs.getString(7)+"</tr>");
	out.println("<tr><td>"+"PharmacyID"+"<td>"+rs.getString(8)+"</tr>");
}
no++;
}


con.close();



%>

</table>
<center><h4>
<a href="./logout.jsp">Logout</a>
</h4>
</body>
</html>