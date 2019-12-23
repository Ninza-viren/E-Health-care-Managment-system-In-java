<html>
<head>
</head>
<body>
 <%@ page import="java.sql.*" %>
  <%
  try{
  String phid=request.getParameter("phid");
  String phn=request.getParameter("phname");
  String pwd=request.getParameter("pwd");
  String add=request.getParameter("add"); 
  String pname=request.getParameter("Pname");
  
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  Connection con=DriverManager.getConnection("jdbc:odbc:health","health","health");
  PreparedStatement pstm=con.prepareStatement("insert into pharmacy_details values(?,?,?,?,?)");
  Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery("select * from pharmacy_details");
  int count=0;
  while(rs.next())
	{count++;}
  pstm.setString(1,"PHID"+Integer.toString(count+1));
  pstm.setString(2,phn);
  pstm.setString(3,pwd);
  pstm.setString(4,add);
  pstm.setString(5,pname);
  pstm.executeUpdate();
  pstm.close();
  con.close();
  response.sendRedirect("./success.html");
}
catch(Exception e)
{
out.println("Error"+e);
}
  %>
</body>
</html>