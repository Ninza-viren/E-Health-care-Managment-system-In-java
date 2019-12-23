<html>
<head>
<title>
Bill Generation
</title>
</head>
<body bgcolor="#f09970">
<%@ page import="java.sql.*" %>
<%
String pname,cate;
int con;
pname=null;
cate=null;
con=0;
String pid=request.getParameter("pid1");
session.setAttribute("pid",pid);
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con1=DriverManager.getConnection("jdbc:odbc:health","health","health");
Statement stmt=con1.createStatement();
ResultSet rs=stmt.executeQuery("select * from pay_details");
int no=1;
while(rs.next())
{
no++;
}
java.util.Date d=new java.util.Date();
PreparedStatement pstm=con1.prepareStatement("select * from category_details where P_id=?");
pstm.setString(1,pid);
ResultSet rs2=pstm.executeQuery();
while(rs2.next())
{
pname=rs2.getString(2);
cate=rs2.getString(5);
con=rs2.getInt(6);
}
con1.close();
%>
<br>
<br>
<center>
<h2><font color="blue">
Bill Generation</font>
</h2>
<form action="./gbill2.jsp" method="post">
<table align="center">
<tr>
<td>Bill No:
<td><input type="text" disabled="true" value=<%out.println("B"+no);%>>
<td>Category:
<td><input type="text" disabled="true" value=<%=cate%>>
</tr>
<tr>
<td>Patient Id:
<td><input type="text" disabled="true" value=<%=pid%>>
<td>Bill Amount:
<td><input type="text" name="amount">
</tr>

<tr>
<td>Bill Date:
<td><input type="text" disabled="true" value=<%
int year=d.getYear()+1900;
int month=d.getMonth()+1;
out.println(""+d.getDate()+"-"+month+"-"+year);%>>
<td>Pharmacy Bill:
<td><input type="text" name="phrb">
</tr>

<tr>
<td>Patient Name:
<td><input type="text" disabled="true" value=<%=pname%>>
<td>Concession:(%)
<td><input type="text" disabled="true" value=<%=con%>>
</tr>

<tr>
<td>
<td><a href="./AdminHome.jsp">Back
<td><input type="submit" value="submit">
<td><a href="./logout.jsp">logout</a>
</tr>

</table>
</form>
</center>
</body>
</html>