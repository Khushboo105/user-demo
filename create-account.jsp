<%@page import="java.sql.*" %>
<html>
<body>
 <div style='text-align: center;margin-top:20px'>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/jsp12","root","mysql");
String uid=request.getParameter("userid");
PreparedStatement ps1=cn.prepareStatement("select * from userinfo where userid=?");
ps1.setString(1,uid);
ResultSet rst=ps1.executeQuery();
if(rst.next())
{
	%>
	<h2 style='color:red'>Taken user id already exists</h2>
	<jsp:include page="registration.jsp" />
	<%	
	return;
}
String password=request.getParameter("pass");
String firstname=request.getParameter("fname");
String lastname=request.getParameter("lname");
String query="insert into userinfo values(?,?,?,?)";
PreparedStatement ps=cn.prepareStatement(query);
ps.setString(1,uid);
ps.setString(2,password);
ps.setString(3,firstname);
ps.setString(4,lastname);
ps.executeUpdate();
%>

    <h2><%=firstname %>you have been registered successfully</h2>
    <a href='login.jsp' style='font-size:25px'>Click to login</a>
  </div>
 </body>
</html>