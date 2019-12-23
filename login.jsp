<html>
<head>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
try {
String name=request.getParameter("user");
String password=request.getParameter("pwd");
String utype=request.getParameter("utype");
boolean flag=false;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:health","health","health");
Statement stmt=con.createStatement();
if(utype.equals("Administrator"))
{
ResultSet rs=stmt.executeQuery("select * from admin_details");
while(rs.next())
	{
  if(name.equals(rs.getString(1))&&password.equals(rs.getString(2)))
		{flag=true;}
}
if(flag==true)
	{
response.sendRedirect("./AdminHome.jsp");
}
else
{
response.sendRedirect("./unsuccess.html");
}

}
else if(utype.equals("Patient")){
ResultSet rs=stmt.executeQuery("select * from patient_details");
while(rs.next())
	{
	String pname=rs.getString(1);
	String pwd2=rs.getString(3);
	  if(name.equals(pname)&&pwd2.equals(password))
		{flag=true;
	    }
}
if(flag==true)
	{
	session.setAttribute("uname",name);
response.sendRedirect("./plog.jsp");
}
else
{
	response.sendRedirect("./unsuccess.html");
}
}
else if(utype.equals("Doctor")){
	flag=false;
ResultSet rs=stmt.executeQuery("select * from doctor_details");
while(rs.next())
	{
	String dname=rs.getString(1);
	String pwd=rs.getString(3);
    if(name.equals(dname)&&password.equals(pwd))
		{flag=true;}
}
if(flag==true)
	{
	session.setAttribute("uname",name);
response.sendRedirect("./dlog.jsp");
}
else
{
	response.sendRedirect("./unsuccess.html");
	}

}
else if(utype.equals("Pharmacy")){
	flag=false;
ResultSet rs=stmt.executeQuery("select * from pharmacy_details");
while(rs.next())
	{
  if(name.equals(rs.getString(1))&&password.equals(rs.getString(3)))
		{flag=true;}
}
if(flag==true)
	{
session.setAttribute("uname",name);
response.sendRedirect("./pharmhome.jsp");
}
else
{response.sendRedirect("./unsuccess.html");}
}
else
	{}
}
catch(Exception e)
	{response.sendRedirect("./unsuccess.html");}
%>
</body>
</html>