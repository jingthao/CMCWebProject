<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.ArrayList"%>
<html>
<head>
<title></title>
</head>
<form method="post" action="LogOff.jsp" name="LogOff">
    <input name="Logout" type="submit" value="Logout">
</form>
<%
	AccountUI ui = (AccountUI)session.getAttribute("ui");
	AccountController acctCtr = ui.getAccountController();
	User user = (User)acctCtr.getAcct();
	UserFuncController userCtr = new UserFuncController(user);
	session.setAttribute("userCtr", userCtr );
 	out.print("Hello User: "+user.getUsername());
%>
<body>
<br>
<a href="Search_schools.jsp">Search for Schools</a><br>
<a href="Manage_savedschoolspageUser.jsp">Manage My Saved Schools</a><br>
<a href="Manage_myprofileUser.jsp">Manage My Profile</a><br>
</body>
</html>

