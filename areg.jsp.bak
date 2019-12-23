<html>
<head>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
try{
String aname=request.getParameter("pname");
String pwd=request.getParameter("pwd");
String add=request.getParameter("add");
String dob=request.getParameter("dob");
String gen=request.getParameter("Gender");
String role=request.getParameter("role");
java.util.StringTokenizer stz=new java.util.StringTokenizer(dob,"-");
String dt[]=new String[3];
int no=0;
while(stz.hasMoreTokens())
{
dt[no]=stz.nextToken();
no++;
}
Date d=new Date(Integer.parseInt(dt[2]),Integer.parseInt(dt[1]),Integer.parseInt(dt[0]));
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:health","health","health");
PreparedStatement pstmt=con.prepareStatement("insert into admin_details values(?,?,?,?,?,?)");
pstmt.setString(1,aname);
pstmt.setString(2,pwd);
pstmt.setString(3,add);
pstmt.setDate(4,d);
pstmt.setString(5,gen);
pstmt.setString(6,role);
pstmt.executeUpdate();
con.close();
response.sendRedirect("./success.html");
}
catch(Exception e)
{
	out.println(e);
out.println("<center><font color='red'><h1>Tye Again");
}
%>
</body>
</html>