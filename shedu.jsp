<html>
<head>
</head>
<body>
<%@ page import="java.sql.*"%>
<%
int dr[]=new int[3];
String did=request.getParameter("did");
dr[0]=Integer.parseInt(request.getParameter("date"));
dr[1]=Integer.parseInt(request.getParameter("month"));
dr[2]=Integer.parseInt(request.getParameter("year"));
String pid=(String)session.getAttribute("pid");
java.util.Date vdate=new java.util.Date(dr[2],dr[1],dr[0]);
java.sql.Date ddate=new java.sql.Date(vdate.getYear(),vdate.getMonth(),vdate.getDate());
out.println(ddate);
Connection con;
PreparedStatement pstm;
PreparedStatement pstm3;
PreparedStatement pstm2;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:health","health","health");
pstm=con.prepareStatement("update patient_details set visitdate=? where p_id=?;");
pstm.setDate(1,ddate);
pstm.setString(2,pid);
pstm.executeUpdate();
con.commit();
pstm2=con.prepareStatement("update patient_details set visitdoctor=? where p_id=?;");
pstm2.setString(1,did);
pstm2.setString(2,pid);
pstm2.executeUpdate();
con.commit();
pstm3=con.prepareStatement("update patient_details set status='true' where p_id=?;");
pstm3.setString(1,pid);
pstm3.executeUpdate();
con.commit();
con.close();
response.sendRedirect("./sshe.html");
%>
</body>
</html>
