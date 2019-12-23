<html>
<body bgcolor="#f09970">
<%@ page import="java.sql.*" %>
<h1><center>Welcome Administrator</center></h1>
<%
String str=request.getParameter("doct");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:health","health","health");
PreparedStatement pstm=con.prepareStatement("update doctor_details set status='true' where d_id=?;");
pstm.setString(1,str);
pstm.executeUpdate();
con.commit();
con.close();

%>
<a href="./Idoct.jsp">Back</a>
<br>
<br>
<br>
<center><b><%
out.println(str+"is Authenticated");
%></b>
</center>
</body>
</html>
