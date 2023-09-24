<%@page import="java.sql.*" %>
<html>
<body>
 <div style='text-align: center;margin-top:20px'>
<%
String uid=request.getParameter("userid");
String upassword=request.getParameter("pass");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/jsp12","root","mysql");
PreparedStatement ps1=cn.prepareStatement("select * from userinfo where userid=?");
ps1.setString(1,uid);
ResultSet rst=ps1.executeQuery();
if(rst.next())
{
	String dpassword=rst.getString(2);
	if(upassword.equals(dpassword))
	{
		response.sendRedirect("home.html");
	}
	else
	{
		%>
		 <h1 style='color:red'>Password is wrong</h1>
		<%
	}
}
else
{
	%>
	<h1 style='color:red'>User is does not exist</h1>
	<%
}
%>
<jsp:include page="login.jsp" />
</div>
</body>
</html>