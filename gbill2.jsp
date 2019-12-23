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
int bamount=Integer.parseInt(request.getParameter("amount"));
int pamount=Integer.parseInt(request.getParameter("phrb"));
int total=bamount+pamount;
int cons=0;
String pid=(String)session.getAttribute("pid");
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
int concession=(int)((con*bamount)/100);
int net=total-concession;
PreparedStatement pstm4=con1.prepareStatement("insert into pay_details(?,?,?,?,?,?,?,?,?)");
String billno="B"+Integer.toString(no);
pstm4.setString(1,billno);
pstm4.setString(2,pid);
pstm4.setString(4,pname);
pstm4.setString(5,cate);
pstm4.setInt(6,total);
pstm4.setInt(7,concession);
pstm4.setInt(8,net);
pstm4.setInt(9,pamount);
java.sql.Date sd=new java.sql.Date(d.getYear(),d.getMonth(),d.getDate());
pstm4.setDate(3,sd);
con1.commit();
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
<td>Total Bill:
<td><input type="text" disabled="true" name="amount" value=<%=total%>>
</tr>

<tr>
<td>Bill Date:
<td><input type="text" disabled="true" value=<%
int year=d.getYear()+1900;
int month=d.getMonth()+1;
out.println(""+d.getDate()+"-"+d.getMonth()+"-"+year);%>>
<td>Concession:
<td><input type="text" disabled="true" name="phrb" value=<%=concession%>>
</tr>

<tr>
<td>Patient Name:
<td><input type="text" disabled="true" value=<%=pname%>>
<td>Net Bill:
<td><input type="text" disabled="true" value=<%=net%>>
</tr>

<tr>
<td>
<td><a href="./AdminHome.jsp">Back
<td><b>Bill is Generated</b>
<td><a href="./logout.jsp">logout</a>
</tr>

</table>
</form>
</center>
</body>
</html>