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
String pid=(String)session.getAttribute("pid3");
String med=request.getParameter("med");
String pred=request.getParameter("pred");
int dos=Integer.parseInt(request.getParameter("dosage"));
String fd=request.getParameter("fd");
String td=request.getParameter("td");
String ud=request.getParameter("ud");
String phrd=request.getParameter("phid");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:health","health","health");
PreparedStatement pstm=con.prepareStatement("insert into diagnostic_details values(?,?,?,?,?,?,?,?,?)");
pstm.setString(1,pid);
pstm.setString(2,pred);
pstm.setString(3,med);
pstm.setInt(4,dos);
pstm.setString(5,fd);
pstm.setString(6,td);
pstm.setString(7,ud);
pstm.setString(8,phrd);
pstm.setString(9,phrd);
pstm.executeUpdate();
con.commit();
con.close();
%>
<center>
<h4><b><%=pid%>&nbsp;daigonstic details are updated</b></h4>
<a href="./logout.jsp">Logout</a>
</center>
</body>
</html>