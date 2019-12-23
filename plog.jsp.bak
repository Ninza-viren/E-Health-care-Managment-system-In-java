<html>
<head>
<title>Patient Home
</title>
</head>
<body bgcolor="#f09970">
<%@ page import="java.sql.*" %>
<%
String pname=(String)session.getAttribute("uname");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:health","health","health");
PreparedStatement stmt=con.prepareStatement("select * from patient_details where P_ID=?");
stmt.setString(1,pname);
ResultSet rs=stmt.executeQuery();
String dname="";
java.sql.Date vd=null;
while(rs.next())
{
dname=rs.getString(11);
vd=rs.getDate(10);
}
con.close();
%>
<h1><center>Welcome&nbsp;<%=pname%></center></h1>
<br>
<br>
<br><p>
<h4><center>
you are sheduled to meet Dr.&nbsp;&nbsp;<%=dname%>&nbsp; on&nbsp; 
<%out.println(""+vd.getDate()+"-"+vd.getMonth()+"-"+vd.getYear()+"&nbsp;12:00 AM");%>
</h4>
<br>
<a href="./logout.jsp">Logout</a>
<a href="./patdaig.jsp">Daignostic Report</a>
</center>
</body>
</html>